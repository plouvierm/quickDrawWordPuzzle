'use strict'

###*
 # @ngdoc service
 # @name utils.factory:UiHelpers

 # @description

###
angular
  .module 'utils'
  .factory 'RestUtils', [
    '$q'
    '$log'
    ($q, $log) ->

      RestUtilsBase = {}
      RestUtilsBase.getFullList = (factory, parameters, subElement, list) ->

        actualParameters = parameters or {}
        actualList = list or Array()
        actualSubElement = subElement or false
        actualArguments = []
        if !actualParameters.limit
          actualParameters.limit = 99
        if !actualParameters.offset
          actualParameters.offset = 0
        if actualSubElement
          actualArguments.push actualSubElement
        actualArguments.push actualParameters
        response = $q (resolve, reject) ->
          factory.getList.apply(factory, actualArguments).then ((results) ->
            if angular.isUndefined(results.count)
              angular.forEach results.data, (result) ->
                actualList.push result
            else
              angular.forEach results, (result) ->
                actualList.push result
            if actualList.length < (if angular.isUndefined(results.count) then results.data.count else results.count)
              actualParameters.offset += actualParameters.limit
              that.getFullList(factory, actualParameters, actualSubElement, actualList).then ((res) ->
                resolve res
                return
              ), (errorResponse) ->
                reject errorResponse
                return
            else
              resolve actualList
            return
          ), (errorResponse) ->
            reject errorResponse
            return
          return
        response.$object = actualList
        return response

      RestUtilsBase
  ]
