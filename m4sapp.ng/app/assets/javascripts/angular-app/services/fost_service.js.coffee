angular.module('m4sapp.fostService', ['ngResource'])
  .factory 'FostFactory', ['$resource',
  	($resource) ->
  		$resource 'api/v1/fosts/:id.json', {id: '@id'},
  			all: isArray: true
  			create:
          method: 'POST'
          transformRequest: (object) ->
            angular.toJson fost: object
        update:
          method: 'PUT'
          transformRequest: (object) ->
            angular.toJson fost: object
        destroy:
          method: 'DELETE'
          transformRequest: (object) ->
        upvote:
          method: 'PUT'
          url: '/api/v1/fosts/:id/like'
          transformRequest: (object) ->
            angular.toJson fost: object
        downvote:
          method: 'PUT'
          url: '/api/v1/fosts/:id/dislike'
          transformRequest: (object) ->
            angular.toJson fost: object
        get_upvotes:
          method: 'GET'
          url: '/api/v1/fosts/:id/getlikes'
        get_downvotes:
          method: 'GET'
          url: '/api/v1/fosts/:id/getdislikes'
  ]
