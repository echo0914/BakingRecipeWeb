<!DOCTYPE html>
<html>
	<head>
		<title>Dessert First Login Page</title>
  		<style><%@include file="/WEB-INF/css/bootstrap.css"%></style>
  		<style><%@include file="/WEB-INF/css/main.css"%></style>
  		<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  		<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	</head>
<body>
<div class="container">
<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form:form modelAttribute="login" role="form">
			<fieldset>
				<h2>Please Sign In</h2>
				<hr class="colorgraph">
				<div class="form-group">
                    <form:input path="userName" type="email" name="email" id="email" class="form-control input-lg" placeholder="Email Address" />
					<form:errors path="userName" cssClass="error"/>
				</div>
				<div class="form-group">					
                    <form:input path="passWord" type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" />
					<form:errors path="passWord" cssClass="error"/>
				
				</div>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
                        <input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In">
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
						<a href="register.html" class="btn btn-lg btn-primary btn-block">Register</a>
					</div>
				</div>
			</fieldset>
		</form:form>
	</div>
</div>
</div>
</body>
</html>