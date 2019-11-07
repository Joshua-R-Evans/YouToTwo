<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<title>We Done Goofed</title>
<head>
<meta charset="ISO-8859-1">


</head>
<jsp:include page="header.jsp" />
</head>

<style>
body  {
  
  background-color: rgb(75, 75, 75);
  background-image: url('static/tenor.gif');
  background-repeat: no-repeat;
  background-position: center;
  background-attachment: fixed;
}
</style>

<body>
<br />
		<br />
		<br />
	<div class="container">
		<div class="col-lg-12 col-md-12">
			<br/>
			<br/>
			<br/>
			<h1 class="text-danger text-center">${error}</h1>
			<p class="text-danger text-center">

				<spring:message code="err.msg" />

			</p>

		</div>

	</div>

</body>

</html>