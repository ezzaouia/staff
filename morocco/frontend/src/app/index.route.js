(function () {
  'use strict';

  angular
    .module('frontend2')
    .config(routeConfig);

  function routeConfig($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'app/main/main.html',
        controller: 'MainController',
        controllerAs: 'main'
      }).when('/spots', {
        templateUrl: 'app/components/spot/spot.html',
        controller: 'SpotController',
        controllerAs: 'spot'
      })
      .otherwise({
        redirectTo: '/'
      });
  }

})();
