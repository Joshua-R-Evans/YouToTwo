<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<title>You To Two</title>
<head>
<meta charset="ISO-8859-1">


</head>
<jsp:include page="header.jsp" />
</head>

<style>
body {
	background-color: rgb(75, 75, 75);
	background-image: url('static/archbike.jpg');
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
	<div class="container center">
		<br>
		<h1><span>About Us</span></h1>
		<br />
		<p><span>We at YouToTwo are all about that
			motor-bike life. Motorcycles are our passion and we are dedicated to
			the preservation of it as a lifestyle. We believe in proper riding
			practices, safety equipment, and above all else, education. We are
			establishing ourselves as the worlds' premier motorcycle hub with
			members joining us from around the world. Please register today even
			if you are not a current rider. We have a wealth of information we
			would love to share and our goal is to get you on two wheels ASAP.</span></p>

		<a style="text-align: center" class="btn btn-info" href="updates">Coming
			Soon</a>

	</div>
</body>
</html>