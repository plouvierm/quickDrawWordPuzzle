###global element, By###
'use strict'

class MundoSocketPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = MundoSocketPage
