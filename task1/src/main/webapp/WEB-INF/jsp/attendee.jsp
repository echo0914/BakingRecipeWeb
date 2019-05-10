<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<title>Attendee Page</title>
	 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
	</head>
	<body>
	<a href="?lang=en">English</a>
	<br>
	<a href="?lang=es">Spanish</a>
<form:form modelAttribute="attendee" >
	<form:errors path="*" cssClass="errorblock" element="div" />
	<label for="textinput1"><spring:message code="attendee.name" />:</label>
	<form:input path="name" cssErrorClass="error"/>
	<form:errors path="name" cssClass="error"/>
	<br>
	
	<label for="textinput2"><spring:message code="attendee.email.address"  /> :</label>
	<form:input path="emailAddress" cssErrorClass="error"/>
	<form:errors path="emailAddress" cssClass="error"/>
	<br>
	
	<label for="textinput3"><spring:message code="attendee.phone" /> :</label>
	<form:input path="phone" cssErrorClass="error"/>
	<form:errors path="phone" cssClass="error"/>
	<br>

	<input type="submit" class="btn" value="Enter Attendee" />
	
</form:form>
</body>
</html>