<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<title>Why?</title>
<head>
<meta charset="ISO-8859-1">


</head>
<jsp:include page="header.jsp" />
</head>

<style>
body {
	background-color: rgb(75, 75, 75);
	background-image: url('static/bgimg.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
}

h1 {
	color: rgb(250, 250, 250);
	text-align: center;
	text-shadow: 1px 1px rgb(00, 100, 250);
	font-size: 50px;
}

h2 {
	color: rgb(250, 250, 250);
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
	text-align: center;
	background-color: rgba(0, 0, 0, 0.85);
}

label {
	color: white;
	text-shadow: 1px 1px black;
	background-color: rgba(0, 0, 0, 0.85);
	text-size: 20px;
}

span {
	background-color: rgba(0, 0, 0, 0.85);
	text-shadow: 1px 1px rgb(00, 100, 250);
}

input[type=text], select {
	border: 3px solid black;
	border-radius: 4px;
	
}

textarea[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 3px solid black;
	border-radius: 4px;
	box-sizing: border-box;
}
input[type=radio], select {
text-size: 20px;
}
label{
text-size: 20px;
}

.pic {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 25% ;
}
</style>

<body>
	<br />
	<br />
	<br />
	<div class="container center" id="wrapper">

		<br />
		<h1 class="text-center"><span>A Bit More Info</span></h1>
		<br />
		<p style="color: white;">Because I asked...just kidding, so inseam
			measurement is very important because, unlike our fellow 'cagers'
			(car drivers), we support the weight of our vehicle at a stop and, on
			occasion, we need to push our vehicle backwards (or forwards if your
			into that sorta' thing). Therefore, inseam measurement is relatively
			important because as an operator you'll need to be confident in your
			footing to avoid dropping your precious two-wheeler. And that ladies
			and gentleman, is why we need to know the measurement between your
			crotch and ankle.</p>
		<br /> <br />
		<h1 class="text-center"><span>THE MORE YOU KNOW!</span></h1>

		<img src="static/inseam.jpg" class="pic">

	</div>
</body>
</html>