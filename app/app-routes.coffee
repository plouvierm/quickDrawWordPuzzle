'use strict'

angular
  .module 'wordpuzzle'
  .config ($urlRouterProvider) ->
    $urlRouterProvider.otherwise '/puzzle'
