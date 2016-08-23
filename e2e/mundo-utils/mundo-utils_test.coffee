###global describe, beforeEach, it, browser, expect ###
'use strict'

buildConfigFile = require('findup-sync') 'build.config.js'
buildConfig = require buildConfigFile
MundoUtilsPagePo = require './mundo-utils.po'

describe 'Mundo utils page', ->
  mundoUtilsPage = undefined

  beforeEach ->
    mundoUtilsPage = new MundoUtilsPagePo
    browser.driver.get buildConfig.host + ':' + buildConfig.port + '/#/mundo-utils'

  it 'should say MundoUtilsCtrl', ->
    expect(mundoUtilsPage.heading.getText()).toEqual 'mundoUtils'
    expect(mundoUtilsPage.text.getText()).toEqual 'MundoUtilsCtrl'
