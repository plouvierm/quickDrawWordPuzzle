###global describe, beforeEach, it, browser, expect ###
'use strict'


UnitsPagePo = require './units.po'

describe 'Units page', ->
  unitsPage = undefined

  beforeEach ->
    unitsPage = new UnitsPagePo
    browser.get '/#/units'

  it 'should say UnitsCtrl', ->
    expect(unitsPage.heading.getText()).toEqual 'units'
    expect(unitsPage.text.getText()).toEqual 'UnitsCtrl'
