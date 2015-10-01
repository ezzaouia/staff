angular.module 'slide', ['ngAnimate', 'satellizer', 'ngCookies', 'ngTouch', 'ngSanitize', 'ngResource', 'ui.router', 'ui.bootstrap']
  .config ($stateProvider, $urlRouterProvider, $authProvider) ->
    $authProvider.facebook clientId: '698302453607466'
    
    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainCtrl"
      .state "signin",
        url: "/signin",
        templateUrl: "app/components/login/signin.jade"
        controller: "SigninCtrl"

    $urlRouterProvider.otherwise '/'

