###

coffee-son

###

Traverse = require 'traverse'
_ = require 'underscore'

exports.render = (obj) ->
  parts = []
  visit = (node, event) ->
    key = ""
    value = ""
    isArray = _.isArray node.node
    if node.level is 0 and event is 'before' or 'leaf'
      key = "module.exports ="
    if event is 'leaf'
      value = JSON.stringify node.node
    separator = if key isnt "" and value isnt "" then " " else ""
    parts.push [key, separator, value, "\n"].join('')
  before = () ->
    visit this, 'before'
  after = () ->
    visit this, 'after'
  Traverse(obj).forEach () ->
    if this.isNotLeaf
      this.before before
      this.after after
    else
      visit this, 'leaf'
  parts.join ""
