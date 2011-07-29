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

    'when rendering a small array':
      topic: -> cson.render ['one', 'two']

      'we get it on multiple lines': (topic) ->
        assert.equal topic,
          """
          module.exports = [
            "one"
            "two"
          ]\n
          """

  .export(module)
