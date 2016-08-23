###global element, By###
'use strict'

class MundoUtilsPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = MundoUtilsPage
