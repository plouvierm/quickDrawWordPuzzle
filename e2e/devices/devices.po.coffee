###global element, By###
'use strict'

class DevicesPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = DevicesPage
