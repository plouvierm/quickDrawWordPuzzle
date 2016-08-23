###global element, By###
'use strict'

class TasksPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = TasksPage
