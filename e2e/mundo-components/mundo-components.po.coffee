###global element, By###
'use strict'

class MundoComponentsPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = MundoComponentsPage
