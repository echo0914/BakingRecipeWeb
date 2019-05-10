<!DOCTYPE html>
<html ng-app="recipeApp">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
   
<div ng-controller="Recipes">
I have {{recipes.length}} events!
<ul class="events-container">
	<li ng-repeat="i in recipes">
	{{i.title}}
	</li>
	</ul>

</div>
    
	<head>
		<title> Hello Recipe JS </title>
	</head>

<body>

</body>
</html>