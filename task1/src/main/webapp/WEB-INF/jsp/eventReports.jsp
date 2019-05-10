<!DOCTYPE html>
<html ng-app="myApp">
	<head>
		<title> Hello Angular JS </title>
	  	<style><%@include file="/WEB-INF/css/bootstrap.css"%></style>
  		<style><%@include file="/WEB-INF/css/main.css"%></style>
	</head>

<body>
<div ng-controller="Events">
I have {{events.length}} events!
<ul class="events-container">
	<li ng-repeat="event in events">
	{{event.name}}
	</li>
	</ul>

</div>
</body>
</html>