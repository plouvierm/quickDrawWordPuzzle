###global describe, beforeEach, it, browser, expect ###
'use strict'


TasksPagePo = require './tasks.po'

describe 'Tasks page', ->
  tasksPage = undefined

  beforeEach ->
    tasksPage = new TasksPagePo
    browser.get '/#/tasks'

  it 'should say TasksCtrl', ->
    expect(tasksPage.heading.getText()).toEqual 'tasks'
    expect(tasksPage.text.getText()).toEqual 'TasksCtrl'
