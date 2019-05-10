var app = angular.module('recipeApp', []);


app.controller('Recipes', function($scope, $http) {
	  $http({
	    method : "GET",
	      url : "http://localhost:8080/task1/recipes.json"
	  }).then(function mySuccess(response) {
	    $scope.events = response.data;
	  }, function myError(response) {
	    $scope.events = response.statusText;
	  });
	});