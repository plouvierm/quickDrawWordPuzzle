'use strict'

###*
 # @ngdoc object
 # @name puzzleBootstrap
 # @description

###
angular
  .module 'puzzleBootstrap', [
    # 'ui.router'
  ]

loadConfiguration = () ->
  $ng = angular.injector(['ng'])
  $http = $ng.get('$http')
  $document = $ng.get('$document')
  $log = $ng.get('$log')
  configurationFile = '../config/main.json'
  applicationName = 'wordpuzzle'

  $http
    .get configurationFile
    .then (response) ->
      angular
        .module 'puzzleBootstrap'
          .constant 'puzzleConfiguration', response.data

      angular
        .element $document
          .ready () ->
            $log.debug 'Bootstrap: Configuration loaded, bootstrapping'
            angular
              .bootstrap $document.find('html'), [applicationName]
    , (errorResponse) ->
      $log.error 'Bootstrap: Could not load configuration', errorResponse

loadConfiguration()
