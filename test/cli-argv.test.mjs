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
