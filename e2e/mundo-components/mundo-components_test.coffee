###global describe, beforeEach, it, browser, expect ###
'use strict'


MundoComponentsPagePo = require './mundo-components.po'

describe 'Mundo components page', ->
  mundoComponentsPage = undefined

  beforeEach ->
    mundoComponentsPage = new MundoComponentsPagePo
    browser.get '/#/mundo-components'

  it 'should say MundoComponentsCtrl', ->
    expect(mundoComponentsPage.heading.getText()).toEqual 'mundoComponents'
    expect(mundoComponentsPage.text.getText()).toEqual 'MundoComponentsCtrl'
