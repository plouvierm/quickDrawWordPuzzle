###global element, By###
'use strict'

class MundoSocketConnectorPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = MundoSocketConnectorPage
