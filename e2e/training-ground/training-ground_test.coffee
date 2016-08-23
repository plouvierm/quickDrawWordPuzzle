###global describe, beforeEach, it, browser, expect ###
'use strict'


TrainingGroundPagePo = require './training-ground.po'

describe 'Training ground page', ->
  trainingGroundPage = undefined

  beforeEach ->
    trainingGroundPage = new TrainingGroundPagePo
    browser.get '/#/training-ground'

  it 'should say TrainingGroundCtrl', ->
    expect(trainingGroundPage.heading.getText()).toEqual 'trainingGround'
    expect(trainingGroundPage.text.getText()).toEqual 'TrainingGroundCtrl'
