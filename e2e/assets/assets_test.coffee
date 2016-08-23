###global describe, beforeEach, it, browser, expect ###
'use strict'


AssetsPagePo = require './assets.po'

describe 'Assets page', ->
  assetsPage = undefined

  beforeEach ->
    assetsPage = new AssetsPagePo
    browser.get '/#/assets'

  it 'should say AssetsCtrl', ->
    expect(assetsPage.heading.getText()).toEqual 'assets'
    expect(assetsPage.text.getText()).toEqual 'AssetsCtrl'
