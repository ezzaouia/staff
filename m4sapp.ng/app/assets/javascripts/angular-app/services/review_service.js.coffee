reviewService = angular.module 'reviewService', ['ngResource']

reviewService.factory 'ReviewFactory', ['$resource',
	($resource) ->
		$resource 'api/v1/fosts/:fost_id/reviews/:id.json', {fost_id: '@fost_id', id: '@id'},
			all: isArray: true
			create:
        method: 'POST'
        transformRequest: (object) ->
          angular.toJson review: object
      update:
        method: 'PUT'
        transformRequest: (object) ->
          angular.toJson review: object
      destroy:
        method: 'DELETE'
        transformRequest: (object) ->
]