(function () {
  'use strict';

  angular
    .module('frontend2')
    .controller('SpotController', SpotController);

  /** @ngInject */
  function SpotController(spotRepo) {
    console.log('spot controller');
    var vm = this;
    vm.spots = [];
    findAllSpots();

    function findAllSpots() {
      vm.spots = spotRepo.findAll();

      angular.forEach(vm.spots, function (spot) {
        spot.rank = Math.random();
      });
    }
  }
})();
