###global describe, beforeEach, it, browser, expect ###
'use strict'

buildConfigFile = require('findup-sync') 'build.config.js'
buildConfig = require buildConfigFile
MundoMapPagePo = require './mundo-map.po'

describe 'Mundo map page', ->
  mundoMapPage = undefined

  beforeEach ->
    mundoMapPage = new MundoMapPagePo
    browser.driver.get buildConfig.host + ':' + buildConfig.port + '/#/mundo-map'

  it 'should say MundoMapCtrl', ->
    expect(mundoMapPage.heading.getText()).toEqual 'mundoMap'
    expect(mundoMapPage.text.getText()).toEqual 'MundoMapCtrl'
