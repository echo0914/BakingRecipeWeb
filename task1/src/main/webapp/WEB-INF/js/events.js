var app = angular.module('myApp', []);

app.controller('Events', function($scope, $http) {
  $http({
    method : "GET",
      url : "http://localhost:8080/task1/events.json"
  }).then(function mySuccess(response) {
    $scope.events = response.data;
  }, function myError(response) {
    $scope.events = response.statusText;
  });
});