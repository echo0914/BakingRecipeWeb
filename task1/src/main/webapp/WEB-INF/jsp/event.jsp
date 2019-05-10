<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Event Page</title>
  		<style><%@include file="/WEB-INF/css/bootstrap.css"%></style>
  		<style><%@include file="/WEB-INF/css/main.css"%></style>
  		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    </head>
	<body>
		<form:form modelAttribute="event" >
		<form:errors path="*" cssClass="errorblock" element="div"/>
		<label for="textinput1"> Enter Minutes:</label>
		<form:input path="name" cssErrorClass="error"/>
		<form:errors path="name" cssClass="error"/>
		<br>
		<input type="submit" class="btn" value="Enter Event" />
		</form:form>
	</body>
</html>