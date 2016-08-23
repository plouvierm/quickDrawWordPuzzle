###global describe, beforeEach, it, browser, expect ###
'use strict'


MundoBootstrapPagePo = require './mundo-bootstrap.po'

describe 'Mundo bootstrap page', ->
  mundoBootstrapPage = undefined

  beforeEach ->
    mundoBootstrapPage = new MundoBootstrapPagePo
    browser.get '/#/mundo-bootstrap'

  it 'should say MundoBootstrapCtrl', ->
    expect(mundoBootstrapPage.heading.getText()).toEqual 'mundoBootstrap'
    expect(mundoBootstrapPage.text.getText()).toEqual 'MundoBootstrapCtrl'
