###global describe, beforeEach, it, browser, expect ###
'use strict'


DevicesPagePo = require './devices.po'

describe 'Devices page', ->
  devicesPage = undefined

  beforeEach ->
    devicesPage = new DevicesPagePo
    browser.get '/#/devices'

  it 'should say DevicesCtrl', ->
    expect(devicesPage.heading.getText()).toEqual 'devices'
    expect(devicesPage.text.getText()).toEqual 'DevicesCtrl'
