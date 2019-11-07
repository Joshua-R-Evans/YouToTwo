<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<title>Log-in</title>
<head>
<meta charset="ISO-8859-1">


</head>
<jsp:include page="header.jsp" />
</head>

<style>
body {
	background-color: rgb(75, 75, 75);
	background-image: url('static/r1.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
}

h1 {
	color: rgb(250, 250, 250);
	text-align: center;
	text-shadow: 1px 1px rgb (00, 100, 250);
	font-size: 50px;
}

h2 {
	color: rgb(00, 00, 00);
	text-shadow: 1px 1px black;
	text-size: 50px;
}

a {
	hover:;
	text-shadow: 1px 1px black;
}

p {
color: white;
font-size: 28px;
}

label {
	color: white;
	text-shadow: 1px 1px black;
}

span {
	background-color: rgba(0, 0, 0, 0.85);
	text-shadow: 1px 1px rgb (00, 100, 250);
}
</style>


<body>
	<br />
	<br />
	<br />
	<div class="container center">
		<br>
		<h1><span>${msg}</span>
			<br>
			<small>${success}</small>
		</h1>
		<h1 class="text-danger text-center">${error}</h1>
		<br>
		<div class="row justify-content-center">
			<form:form action="login" modelAttribute="user" method="post"
				class="col-md col-md-4 col-sm-12">
				<br/>
				<form:input type="email" class="form-control" path="email"
					placeholder="E-mail" />
				<br/>
				<form:input class="form-control" path="password" type="password"
					placeholder="Password" />
				<br>
				<button class="btn btn-info" name="submit" type="submit">Submit >></button>
				<a href="index" class="btn btn-danger">Cancel</a>

			</form:form>
		</div>
	</div>
</body>
</html>