angular.module 'fakeLunchHub', ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'ngResource', 'ui.router', 'ui.bootstrap', 'rails']
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

  .factory "Group", (RailsResource) ->
    class Group extends RailsResource
      @configure url: "/api/groups", name: "group"