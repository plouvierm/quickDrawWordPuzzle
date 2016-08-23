###global describe, beforeEach, it, browser, expect ###
'use strict'


LocationsPagePo = require './locations.po'

describe 'Locations page', ->
  locationsPage = undefined

  beforeEach ->
    locationsPage = new LocationsPagePo
    browser.get '/#/locations'

  it 'should say LocationsCtrl', ->
    expect(locationsPage.heading.getText()).toEqual 'locations'
    expect(locationsPage.text.getText()).toEqual 'LocationsCtrl'
