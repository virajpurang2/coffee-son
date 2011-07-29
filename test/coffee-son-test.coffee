vows = require 'vows'
assert = require 'assert'
cson = require '..'

vows
  .describe('rendering simple data')
  .addBatch
    'when rendering null':
      topic: -> cson.render null

      'we get "module.exports = null"': (topic) ->
        assert.equal topic, "module.exports = null\n"

  .export(module)
