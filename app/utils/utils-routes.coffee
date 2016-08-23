'use strict'

angular
  .module 'utils'
  .config ($stateProvider) ->
    $stateProvider
      .state 'utils',
        url: '/utils'
        templateUrl: 'mundo-utils.tpl.html'
        controller: 'MundoUtilsCtrl'
        controllerAs: 'mundoUtils'
