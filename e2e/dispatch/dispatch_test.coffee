###global describe, beforeEach, it, browser, expect ###
'use strict'


DispatchPagePo = require './dispatch.po'

describe 'Dispatch page', ->
  dispatchPage = undefined

  beforeEach ->
    dispatchPage = new DispatchPagePo
    browser.get '/#/dispatch'

  it 'should say DispatchCtrl', ->
    expect(dispatchPage.heading.getText()).toEqual 'dispatch'
    expect(dispatchPage.text.getText()).toEqual 'DispatchCtrl'
