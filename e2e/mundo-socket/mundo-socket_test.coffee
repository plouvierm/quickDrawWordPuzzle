###global describe, beforeEach, it, browser, expect ###
'use strict'

buildConfigFile = require('findup-sync') 'build.config.js'
buildConfig = require buildConfigFile
MundoSocketPagePo = require './mundo-socket.po'

describe 'Mundo socket page', ->
  mundoSocketPage = undefined

  beforeEach ->
    mundoSocketPage = new MundoSocketPagePo
    browser.driver.get buildConfig.host + ':' + buildConfig.port + '/#/mundo-socket'

  it 'should say MundoSocketCtrl', ->
    expect(mundoSocketPage.heading.getText()).toEqual 'mundoSocket'
    expect(mundoSocketPage.text.getText()).toEqual 'MundoSocketCtrl'
