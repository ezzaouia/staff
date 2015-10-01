angular.module('app').controller('MyPostsCtrl', function ($scope, $http) {
  $http.get('api/spot/findAll').then(function (spots) {
    $scope.spots = spots.data;
    console.log(spots.data)
  })
});
