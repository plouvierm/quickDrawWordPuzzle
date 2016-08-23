'use strict'

###* @ngdoc object
 # @name wordpuzzle
 # @description

###
angular
  .module 'wordpuzzle', [
    'ngAria'
    'ngMaterial'
    'ngMessages'
    'ngSanitize'
    'ngCookies'
    'pascalprecht.translate'
    'ui.router'
    'restangular'
    'tmh.dynamicLocale'
    'angular.filter'
    'l42y.sprintf'
    'angular-oauth2'
    'home'
    'puzzleBootstrap'
    'md.data.table'
    'dcbImgFallback'
    'lodash'
    'formly'
    'formlyMaterial'
    'ngCsv'
    'ct.ui.router.extras.dsr'
    'rt.debounce'
    'angularMoment'
    'utils'
    'ngMaterialDatePicker'
    'angular-humanize-duration'
    'ngOrderObjectBy'
    'scDateTime'
    'platypus.jsonviewer'
    'doubleScrollBars'
    'inline'
  ]
  .constant('translations', {})
  .config (
    $logProvider,
    $locationProvider,
    $httpProvider,
    puzzleConfiguration,
    RestangularProvider
  ) ->

    RestangularProvider
      .setBaseUrl "http://localhost:8888/PuzzleAPI/wordpuzzle"

