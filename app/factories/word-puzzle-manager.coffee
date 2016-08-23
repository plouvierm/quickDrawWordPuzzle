'use strict'

###*
 # @ngdoc service
 # @name WordPuzzleManager.factory:WordPuzzleManager

 # @description

###
angular
  .module 'home'
  .factory 'WordPuzzleManager', [
    '$q'
    '$log'
    'Restangular'
    (
      $q
      $log
      Restangular
    ) ->
      WordPuzzleManagerBase = {}

      WordPuzzleManagerBase.getWord = (letters, width, word) ->
        lettersString = ""
        angular.forEach letters, (letter) ->
          lettersString += letter.letter


        $q (resolve, reject) ->
          Restangular.all('puzzleservice')
            .all('search-word')
            .all(lettersString)
            .all(width)
            .customGET(word).then (data) ->
              resolve data
            , () ->
              reject()

      WordPuzzleManagerBase.createPuzzle = (letters = null, width = null) ->
        if !letters
          letters = "VNYBKGSRORANGEETRNXWPLAEALKAPMHNWMRPOCAXBGATNOMEL"
        if !width
          width = 7
        $q (resolve, reject) ->
          Restangular.all('puzzleservice').all('create-puzzle').all(letters).customGET(width).then (data) ->
            resolve data
          , () ->
            reject()
        
      WordPuzzleManagerBase
  ]
