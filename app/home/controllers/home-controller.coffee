'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeCtrl

 # @description

###
class HomeCtrl
  ### @ngInject ###
  constructor: (
    $state
    $log
    $document
    $mdSidenav
    $rootScope
    WordPuzzleManager
    $translate
    $filter
    $window
    _
  ) ->
    @ctrlName = 'HomeCtrl'
    @applicationName = 'WordPuzzle'
    @puzzleWidth = 7
    @newPuzzleLetters = ''
    @newPuzzleWidth = 0
    @letters = []
    WordPuzzleManager.createPuzzle().then (puzzle) =>
      @letters = puzzle.letters
      @puzzleWidth = puzzle.gridwidth
    @wordToSearch = ''
    
    @selectWordOnTiles = (word) =>
      angular.forEach @letters, (existingLetter) ->
        existingLetter.newlyFound = false
      angular.forEach word.letters, (letter) =>
        position = 0
        position += letter.positionColumn
        position += (letter.positionRow * @puzzleWidth)
        @letters[position].found = true
        @letters[position].newlyFound = true

    @searchWord = =>
      if @wordToSearch && @wordToSearch.length > 0
        uppercaseSearch = $filter('uppercase')(@wordToSearch)
        
        WordPuzzleManager.getWord(@letters, @puzzleWidth, uppercaseSearch).then (foundWord) =>
          if foundWord.error
            $log.debug 'Not Found'
          else
            @selectWordOnTiles(foundWord)
            @wordToSearch = ''
        , () ->
          $log.debug 'error on call'

    @createNewPuzzle = =>
      @newPuzzleLetters = @newPuzzleLetters.trim()
      if @newPuzzleWidth && (@newPuzzleWidth > 2) && (@newPuzzleLetters.length == (@newPuzzleWidth*@newPuzzleWidth))
        WordPuzzleManager.createPuzzle(@newPuzzleLetters, @newPuzzleWidth).then (puzzle) =>
          @puzzleWidth = angular.copy @newPuzzleWidth
          @letters = puzzle.letters
      else
        $log.debug 'please check your parameters'

angular
  .module('home')
  .controller 'HomeCtrl', HomeCtrl
