###

coffee-son

###

Traverse = require 'traverse'
_ = require 'underscore'

indent = (level) ->
  str = []
  i = 0
  while i < level
    str.push('  ')
    i++
  str.join ''

exports.render = (obj) ->
  parts = []
  visit = (node, event) ->
    key = ""
    value = ""
    isArray = _.isArray node.node
    if node.level is 0 and (event is 'before' or node.isLeaf)
      key = "module.exports ="
    if event is 'leaf'
      value = JSON.stringify node.node
    if isArray
      if node.node.length == 0
        value = '[]'
      else
        if event is 'before'
          value = '['
        else if event is 'after'
          value = ']'
    separator = if key isnt "" and value isnt "" then " " else ""
    parts.push [indent(node.level), key, separator, value, "\n"].join('')
  before = () ->
    visit this, 'before'
  after = () ->
    visit this, 'after'
  Traverse(obj).forEach () ->
    if this.notLeaf
      this.before before
      this.after after
    else
      visit this, 'leaf'
  parts.join ""
