###global element, By###
'use strict'

class AssetsPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = AssetsPage
