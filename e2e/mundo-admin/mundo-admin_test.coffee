###global describe, beforeEach, it, browser, expect ###
'use strict'


MundoAdminPagePo = require './mundo-admin.po'

describe 'Mundo admin page', ->
  mundoAdminPage = undefined

  beforeEach ->
    mundoAdminPage = new MundoAdminPagePo
    browser.get '/#/mundo-admin'

  it 'should say MundoAdminCtrl', ->
    expect(mundoAdminPage.heading.getText()).toEqual 'mundoAdmin'
    expect(mundoAdminPage.text.getText()).toEqual 'MundoAdminCtrl'
