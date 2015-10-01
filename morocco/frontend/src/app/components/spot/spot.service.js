(function () {
  'use strict';

  angular
    .module('frontend2')
    .service('spotRepo', spotRepo);

  /** @ngInject */
  function spotRepo($http) {

    var spots = [
      {
        "title": "AKCHOUR",
        "createdAt": "2015-08-25T21:42:12.801Z",
        "updatedAt": "2015-08-25T21:42:12.801Z",
        "id": 1,
        "logo": "angular.png",
        "description": "HTML enhanced for web apps!"
      },
      {
        "title": "WADLAOU",
        "createdAt": "2015-08-25T21:42:45.208Z",
        "updatedAt": "2015-08-25T21:42:45.208Z",
        "id": 2,
        "logo": "angular.png",
        "description": "HTML enhanced for web apps!"
      },
      {
        "title": "TARGHA",
        "createdAt": "2015-08-25T21:42:54.683Z",
        "updatedAt": "2015-08-25T21:42:54.683Z",
        "id": 3,
        "logo": "angular.png",
        "description": "HTML enhanced for web apps!"
      },
      {
        "title": "ELMADIYAK",
        "createdAt": "2015-08-25T21:43:05.963Z",
        "updatedAt": "2015-08-25T21:43:05.963Z",
        "id": 4,
        "logo": "angular.png",
        "description": "HTML enhanced for web apps!"
      }
    ];
    this.findAll = findAll;

    function findAll() {
      console.log("===> starting findAll..")
      $http.get('api/spot/findAll').then(function (spots) {
        console.log(spots);
        return spots;
      });
      console.log("findAll.. <===")
    }
  }

})();
