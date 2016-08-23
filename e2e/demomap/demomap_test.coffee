###global describe, beforeEach, it, browser, expect ###
'use strict'

buildConfigFile = require('findup-sync') 'build.config.js'
buildConfig = require buildConfigFile
DemomapPagePo = require './demomap.po'

describe 'Demomap page', ->
  demomapPage = undefined

  beforeEach ->
    demomapPage = new DemomapPagePo
    browser.driver.get buildConfig.host + ':' + buildConfig.port + '/#/demomap'

  it 'should say DemomapCtrl', ->
    expect(demomapPage.heading.getText()).toEqual 'demomap'
    expect(demomapPage.text.getText()).toEqual 'DemomapCtrl'
