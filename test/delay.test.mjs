import assert from 'node:assert/strict'
import test from 'node:test'
import { delay_$x_ as delay } from '../js-out/app.util.mjs'

test('delay! schedules a callback and returns Unit', { timeout: 1000 }, async () => {
  let fired = false
  const completed = new Promise(resolve => {
    const result = delay(1, () => {
      fired = true
      resolve()
    })
    assert.equal(result, undefined)
  })

  await completed
  assert.equal(fired, true)
})
