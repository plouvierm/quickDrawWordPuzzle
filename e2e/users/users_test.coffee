###global describe, beforeEach, it, browser, expect ###
'use strict'


UsersPagePo = require './users.po'

describe 'Users page', ->
  usersPage = undefined

  beforeEach ->
    usersPage = new UsersPagePo
    browser.get '/#/users'

  it 'should say UsersCtrl', ->
    expect(usersPage.heading.getText()).toEqual 'users'
    expect(usersPage.text.getText()).toEqual 'UsersCtrl'
