###global describe, beforeEach, it, browser, expect ###
'use strict'

buildConfigFile = require('findup-sync') 'build.config.js'
buildConfig = require buildConfigFile
MundoSocketConnectorPagePo = require './mundo-socket-connector.po'

describe 'Mundo socket connector page', ->
  mundoSocketConnectorPage = undefined

  beforeEach ->
    mundoSocketConnectorPage = new MundoSocketConnectorPagePo
    browser.driver.get buildConfig.host + ':' + buildConfig.port + '/#/mundo-socket-connector'

  it 'should say MundoSocketConnectorCtrl', ->
    expect(mundoSocketConnectorPage.heading.getText()).toEqual 'mundoSocketConnector'
    expect(mundoSocketConnectorPage.text.getText()).toEqual 'MundoSocketConnectorCtrl'
