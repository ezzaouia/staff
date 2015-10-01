#= require ../services/fost_service
#= require ../services/review_service

mainController = angular.module 'mainController', ['m4sapp.fostService', 'reviewService']

mainController.controller 'MainController', ['$scope', 'FostFactory'
  ($scope, FostFactory) ->
    $scope.fosts = FostFactory.all {}
]

mainController.controller 'FostsController', ['$scope',  '$state', '$stateParams', 'FostFactory', 'ReviewFactory'
  ($scope, $stateParams, FostFactory, ReviewFactory) ->
  	$scope.fost = FostFactory.get({ id: $stateParams.fost_id }) (fost) ->
    # $scope.reviews = ReviewFactory.query {fost_id: $stateParams.fost_id}
]

mainController.controller 'FostViewController', ['$scope', 'Auth', '$stateParams', '$location', 'FostFactory', 'ReviewFactory'
  ($scope, Auth, $stateParams, $location, FostFactory, ReviewFactory) ->
    $scope.fost = FostFactory.get({ id: $stateParams.fost_id })
    $scope.reviews = ReviewFactory.query {fost_id: $stateParams.fost_id}
    $scope.upvotes =  FostFactory.get_upvotes { id: $stateParams.fost_id }
    $scope.downvotes =  FostFactory.get_downvotes { id: $stateParams.fost_id }

    $scope.removeFost = (fost) ->
      $scope.fosts = FostFactory.all {}
      fost.$destroy {}, ->
        $scope.fosts = (b for b in $scope.fosts when b.id isnt fost.id)
        $location.path "/"

    $scope.submitReview = ->
      console.log $scope.fost.id
      $scope.review.fost_id = $scope.fost.id
      console.log $scope.review
      ReviewFactory.create $scope.review
      $scope.reviews.push $scope.review
      $scope.review = {}

    $scope.like = ->
      callback = -> $location.path "/"
      console.log $scope.fost
      $scope.fost.$upvote {}, callback

    $scope.dislike = ->
      callback = -> $location.path "/"
      console.log $scope.fost
      $scope.fost.$downvote {}, callback

    $scope.signedIn = Auth.isAuthenticated
    console.log $scope.signedIn
    $scope.logout = Auth.logout
    Auth.currentUser().then (user) ->
      $scope.user = user

    $scope.$on "devise:new-registration", (event, user) ->
      $scope.user = user

    $scope.$on "devise:login", (event, user) ->
      $scope.user = user

    $scope.$on "devise:logout", (event, user) ->
      $scope.user = {}
      
]

mainController.controller 'FostEditController', ['$scope', '$stateParams','$location', 'FostFactory'
  ($scope, $stateParams, $location, FostFactory) ->
    $scope.image = 'none'
    $scope.add = ->
      f = document.getElementById('file').files[0]
      r = new FileReader

      r.onloadend = (e) ->
        $scope.image = e.target.result

      r.readAsBinaryString f

    if $stateParams.fost_id?
      $scope.fost = FostFactory.get({ id: $stateParams.fost_id })
    else
      $scope.fost = new FostFactory()
  
    $scope.submitFost = ->
      callback = -> $location.path "/"
      if $scope.fost.id?
        $scope.fost.$update {}, callback
      else
        $scope.fost.image = $scope.image
        FostFactory.create $scope.fost, callback


]

mainController.controller "NavCtrl", ["$scope", "Auth"
  ($scope, Auth) ->
    $scope.signedIn = Auth.isAuthenticated
    $scope.logout = Auth.logout
    Auth.currentUser().then (user) ->
      $scope.user = user

    $scope.$on "devise:new-registration", (event, user) ->
      $scope.user = user

    $scope.$on "devise:login", (event, user) ->
      $scope.user = user

    $scope.$on "devise:logout", (event, user) ->
      $scope.user = {}
]

mainController.controller "AuthCtrl", ["$scope", "$state", "Auth"
  ($scope, $state, Auth) ->
    $scope.login = ->
      Auth.login($scope.user).then ->
        $state.go('index')

    $scope.register = ->
      Auth.register($scope.user).then ->
        $state.go('index')
]