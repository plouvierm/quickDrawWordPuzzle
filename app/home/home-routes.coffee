'use strict'

angular
  .module 'home'
  .config ($stateProvider) ->
    $stateProvider
      .state 'puzzle',
        url: '/puzzle'
        templateUrl: 'home/views/home.tpl.html'
        controller: 'HomeCtrl'
        controllerAs: 'home'
        data:
          navigation: true
