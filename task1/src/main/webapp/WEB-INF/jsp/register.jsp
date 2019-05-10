<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Dessert First Registration </title>
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
		<form:form modelAttribute="register" >
			<fieldset>
				<h2> Register</h2>
				<hr class="colorgraph">
				<div class="form-group">
					<label class="control-label" for="textinput1"> User Name (Required)</label>
					<p class="help-block">User Name can contain any letters or numbers, without spaces</p>
					<form:input path="userId" class="input-xlarge" cssErrorClass="error"/>
					<br>
					<form:errors path="userId" cssClass="error"/>
				</div>
				<div class="form-group">
					<label class="control-label" for="textinput2"> E-mail (Required)</label>
					<p class="help-block">Please provide your E-mail</p>
					<form:input path="emailAddress" class="input-xlarge" cssErrorClass="error"/>
					<br>
					<form:errors path="emailAddress" cssClass="error"/>
				</div>
				<div class="form-group">
					<label class="control-label" for="textinput3"> Password (Required)</label>
					<p class="help-block">Password should be at least 4 characters</p>
					<form:input path="password" class="input-xlarge" cssErrorClass="error"/>
					<br>
					<form:errors path="password" cssClass="error"/>
				</div>
				<div class="form-group">
					<label class="control-label" for="textinput4">Password (Required)</label>
					<p class="help-block">Please confirm password</p>
					<form:input path="confirmPassword" class="input-xlarge" cssErrorClass="error"/>
					<br>
					<form:errors path="confirmPassword" cssClass="error"/>
				</div>
				<div class="form-group">
					<label class="control-label" for="textinput5">Phone number (Optional)</label>
					<p class="help-block"></p>
					<form:input path="phone" class="input-xlarge" cssErrorClass="error"/>
					<br>
					<form:errors path="phone" cssClass="error"/>
				</div>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
						<input type="submit" class="btn btn-lg btn-primary btn-block" value="Create" />
						
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
						<a href="index.html" class="btn btn-lg btn-primary btn-block">Cancel</a>
					</div>
				</div> 
			</fieldset>
		</form:form>
		</div>
	</div>
</div>
</body>
</html>