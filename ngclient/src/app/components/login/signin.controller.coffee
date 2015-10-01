angular.module "slide"
  .controller "SigninCtrl", ($scope, $auth) ->
    $scope.authenticate = (provider) ->
      $auth.authenticate(provider)
