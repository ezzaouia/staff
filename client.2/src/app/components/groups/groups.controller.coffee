angular.module "fakeLunchHub",
  .controller "GroupsCtrl", [ '$location', 'Group', ($scope, $location, Group) ->
    $scope.groups = Group.all {}
    $scope.submitGroup = (group) ->
      callback = -> $location.path "/"
      if $scope.group.id?
        $scope.group.$update {}, callback
      else
        $scope.group.image = $scope.image
        Group.create $scope.group, callback
   ]