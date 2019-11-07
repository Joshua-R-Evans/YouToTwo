<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<title>Coming Soon</title>
<head>
<meta charset="ISO-8859-1">


</head>
<jsp:include page="header.jsp" />
</head>

<style>
body {
	background-color: rgb(75, 75, 75);
	background-image: url('static/future2.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
}

h1 {
	color: rgb(250, 250, 250);
	text-align: center;
	text-shadow: 1px 1px black;
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
	text-shadow: 1px 1px black;
}
</style>

<body>
	<br />
	<br />
	<br />

	<div class="container center" id="wrapper">

		<br />
		<h1><span>Future Enhancements</span></h1>
		<br />
		<p><span>Coming Soon to this site:</span>
		<p><span>- Google Maps for bike shop locations, other riders locations
			and routes.</span>
		<br />
		<p><span>- IM Chat between riders.</span>
		<br />
		<p><span>- Mobile application</span></p>
		<br/>
		<p><span>- Riding Term Dictionary</span></p>
		<br /> <br />

	</div>
</body>
</html>