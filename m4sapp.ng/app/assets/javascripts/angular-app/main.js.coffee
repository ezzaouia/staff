#= require ./controllers/main_controller
#= require ./controllers/user_controller

m4sapp = angular.module('m4sapp', ['Devise', 'ngResource', 'ngAnimate', 'ui.router', 'templates', 'mainController'])

m4sapp.config ($locationProvider) ->
  $locationProvider.html5Mode true

m4sapp.config ($stateProvider, $urlRouterProvider, $locationProvider) ->
  $urlRouterProvider.otherwise('/')
  $stateProvider.state 'index', url: '/', templateUrl: '/templates/_index.html', controller: 'MainController'
  $stateProvider.state 'new_fost', url: '/fosts/new', templateUrl: '/templates/_form.html', controller: 'FostEditController'
  $stateProvider.state 'view_fost', url: '/fosts/:fost_id', templateUrl: '/templates/_fost_detail.html', controller: 'FostViewController'
  $stateProvider.state 'edit_fost', url: '/fosts/edit/:fost_id', templateUrl: '/templates/_form.html', controller: 'FostEditController'
  $stateProvider.state "register",
                  url: "/sign_up"
                  templateUrl: "/templates/auth/_register.html"
                  controller: "AuthCtrl"
                  onEnter: ['$state', 'Auth', ($state, Auth) ->
                    Auth.currentUser().then ->
                      $state.go('index')
                  ]
  $stateProvider.state "login",
                  url: "/sign_in"
                  templateUrl: "/templates/auth/_login.html"
                  controller: "AuthCtrl"
                  onEnter: ['$state', 'Auth', ($state, Auth) ->
                    Auth.currentUser().then ->
                      $state.go('index')
                  ]

app.directive 'fileUpload', ->
  {
    scope: true
    link: (scope, el, attrs) ->
      el.bind 'change', (event) ->
        files = event.target.files
        #iterate files since 'multiple' may be specified on the element
        i = 0
        while i < files.length
          #emit event upward
          scope.$emit 'fileSelected', file: files[i]
          i++
        return
      return

  }

m4sapp.service 'fileUpload', [
  '$http'
  ($http) ->

    @uploadFileToUrl = (file, uploadUrl) ->
      fd = new FormData
      fd.append 'file', file
      $http.post(uploadUrl, fd,
        transformRequest: angular.identity
        headers: 'Content-Type': undefined).success(->
      ).error ->
      return

    return
]
