###

coffee-son

###

Traverse = require 'traverse'
_ = require 'underscore'

exports.render = (obj) ->
  parts = []
  visit = (node, event) ->
    str = ''
    array = _.isArray node.node
    if node.level is 0 and event is 'before' or 'leaf'
      str = ['module.exports = ', JSON.stringify(node.node), "\n"].join('')
    parts.push str
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
