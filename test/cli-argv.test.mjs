import assert from 'node:assert/strict'
import { mkdtempSync, rmSync } from 'node:fs'
import { tmpdir } from 'node:os'
import { join } from 'node:path'
import { spawnSync } from 'node:child_process'
import test from 'node:test'
import { fileURLToPath } from 'node:url'

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
