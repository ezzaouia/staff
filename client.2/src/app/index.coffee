angular.module 'fakeLunchHub', [ 'ngResource', 'ui.router', 'ui.bootstrap' ]
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainCtrl"
      .state "groups",
        url: "/groups",
        templateUrl: "app/components/groups/groups.html",
        controller: "GroupsCtrl"

    $urlRouterProvider.otherwise '/'

