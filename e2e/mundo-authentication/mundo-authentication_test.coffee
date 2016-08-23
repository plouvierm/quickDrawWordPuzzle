###global describe, beforeEach, it, browser, expect ###
'use strict'


MundoAuthenticationPagePo = require './mundo-authentication.po'

describe 'Mundo authentication page', ->
  mundoAuthenticationPage = undefined

  beforeEach ->
    mundoAuthenticationPage = new MundoAuthenticationPagePo
    browser.get '/#/mundo-authentication'

  it 'should say MundoAuthenticationCtrl', ->
    expect(mundoAuthenticationPage.heading.getText()).toEqual 'mundoAuthentication'
    expect(mundoAuthenticationPage.text.getText()).toEqual 'MundoAuthenticationCtrl'
