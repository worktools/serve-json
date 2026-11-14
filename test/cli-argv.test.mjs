import assert from 'node:assert/strict'
import { mkdtempSync, rmSync, unwatchFile, writeFileSync } from 'node:fs'
import { tmpdir } from 'node:os'
import { join } from 'node:path'
import { spawnSync } from 'node:child_process'
import test from 'node:test'
import { fileURLToPath } from 'node:url'
import { setTimeout as pause } from 'node:timers/promises'
import * as c from '../js-out/calcit.core.mjs'
import * as config from '../js-out/app.config.mjs'
import { handle_request_$x_ } from '../js-out/app.main.mjs'
import { create_server_$x_ } from '../js-out/skir.core.mjs'

const entry = fileURLToPath(new URL('../main.mjs', import.meta.url))

test('uses the explicit config path from Node argv', () => {
  const cwd = mkdtempSync(join(tmpdir(), 'serve-json-cli-'))
  try {
    const path = join(cwd, 'missing-explicit-config.cirru')
    const result = spawnSync(process.execPath, [entry, path], { encoding: 'utf8' })

    assert.equal(result.status, 1)
    assert.match(result.stdout, /Not found:/)
    assert.match(result.stdout, /missing-explicit-config\.cirru/)
  } finally {
    rmSync(cwd, { recursive: true })
  }
})

test('falls back to config.cirru without an argv path', () => {
  const cwd = mkdtempSync(join(tmpdir(), 'serve-json-cli-'))
  try {
    const result = spawnSync(process.execPath, [entry], { cwd, encoding: 'utf8' })

    assert.equal(result.status, 1)
    assert.match(result.stdout, /No config file: config\.cirru/)
  } finally {
    rmSync(cwd, { recursive: true })
  }
})

test('loads valid config and reloads it through the actual Node file watcher', { timeout: 10000 }, async () => {
  const cwd = mkdtempSync(join(tmpdir(), 'serve-json-watch-'))
  const path = join(cwd, 'config.json')
  const previousArgv = process.argv
  const previousConfig = c.deref(config._$s_configs)
  try {
    writeFileSync(path, JSON.stringify({ port: 0, routes: [] }))
    process.argv = [...previousArgv.slice(0, 2), path]
    assert.equal(config.load_config_$x_(), true)
    const port = () => c._$n_struct_$o_get(c.deref(config._$s_configs).extra[0], c.newTag('port'))
    assert.equal(port(), 0)
    // Let watchFile establish its initial stat before making a real file change.
    await pause(200)
    writeFileSync(path, JSON.stringify({ port: 12345, routes: [] }))
    const deadline = Date.now() + 5000
    while (port() !== 12345 && Date.now() < deadline) await pause(25)
    assert.equal(port(), 12345)
  } finally {
    unwatchFile(path)
    process.argv = previousArgv
    c.reset_$x_(config._$s_configs, previousConfig)
    rmSync(cwd, { recursive: true })
  }
})


test('serves immediate and file replies through the existing Skir HTTP adapter', { timeout: 10000 }, async () => {
  const cwd = mkdtempSync(join(tmpdir(), 'serve-json-file-reply-'))
  const previousConfig = c.deref(config._$s_configs)
  let server
  try {
    writeFileSync(join(cwd, 'valid.json'), '{answer: 42}')
    writeFileSync(join(cwd, 'invalid.json'), '{')
    const path = join(cwd, 'config.json')
    writeFileSync(path, JSON.stringify({
      port: 0,
      routes: ['valid', 'missing', 'invalid'].map(name => ({
        path: name,
        get: { type: 'file', file: join(cwd, name + '.json'), code: 202 },
      })),
    }))
    assert.equal(config.load_config_from_file_$x_(path), true)
    const options = c._PCT__$o__$o_(c.Option, c.to_tag('some'),
      c._$n__$M_(c.to_tag('port'), 0, c.to_tag('host'), '127.0.0.1'))
    server = create_server_$x_(handle_request_$x_, options)
    if (!server.listening) {
      await new Promise((resolve, reject) => {
        server.once('listening', resolve)
        server.once('error', reject)
      })
    }
    const base = 'http://127.0.0.1:' + server.address().port
    const request = name => fetch(base + '/' + name, {
      headers: { Origin: 'https://example.test' },
      signal: AbortSignal.timeout(5000),
    })
    const index = await request('')
    assert.equal(index.status, 200)
    assert.equal((await index.json()).message, 'This is a data mocking server.')
    const unmatched = await request('unmatched')
    assert.equal(unmatched.status, 400)
    assert.equal(unmatched.statusText, 'Not matching')
    assert.match((await unmatched.json()).message, /No matching path for/)
    const favicon = await fetch(base + '/favicon.ico', { redirect: 'manual' })
    assert.equal(favicon.status, 301)
    assert.match(favicon.headers.get('location'), /jimeng-360x360\.png$/)

    const valid = await request('valid')
    assert.equal(valid.status, 202)
    assert.equal(valid.headers.get('access-control-allow-origin'), 'https://example.test')
    assert.deepEqual(await valid.json(), { answer: 42 })
    const missing = await request('missing')
    assert.equal(missing.status, 404)
    assert.match(await missing.text(), /missing\.json not found/)
    const invalid = await request('invalid')
    assert.equal(invalid.status, 500)
    assert.match((await invalid.json()).msg, /invalid end of input/)
  } finally {
    try {
      if (server?.listening) await new Promise(resolve => server.close(resolve))
    } finally {
      c.reset_$x_(config._$s_configs, previousConfig)
      rmSync(cwd, { recursive: true })
    }
  }
})
