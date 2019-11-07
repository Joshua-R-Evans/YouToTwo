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
	background-image: url('static/wheelie.jpg');
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
</style>

<body>

	<div class="container center">
		<br/> <br /> <br /> <br />
		<h1>
			<span> Welcome to You to Two </span>
		</h1>
		<p>
			<span> Take this questionnaire to find the right bike for you! </span>
		</p>
		<br />

		<form id="quiz" action="calculateAnswers" method="post">
			<!-- Question 1 -->
			<h2>
				<span> What kind of motorcycle are you considering? </span>
			</h2>
			<!-- Here are the choices for the first question. Each input tag must have the same name. For this question, the name is q1. -->
			<!-- The value is which answer the choice corresponds to. -->
			<label><input type="radio" name="q1" value="Cruiser">
				Cruiser </label><br /> <label><input type="radio" name="q1"
				value="Sport"> Sport </label><br /> <label><input type="radio"
				name="q1" value="Standard"> Standard </label><br /> <label><input
				type="radio" name="q1" value="Adventure"> Adventure </label><br /> <a
				class="btn btn-info" href="huh">Huh?</a> <br /> <br />
			<!-- Question 2 -->
			<h2>
				<span> How many miles have you ridden as the operator of a
					motorcycle? </span>
			</h2>
			<!-- Here are the choices for the second question. Notice how each input tag has the same name (q2), but a different name than the previous question. -->
			<label><input type="radio" name="q2" value="0"> 0 -
				2500 miles </label><br /> <label><input type="radio" name="q2"
				value="1"> 2500 - 5000 miles </label><br /> <label><input
				type="radio" name="q2" value="2"> 5000 - 10000 miles </label><br />
			<label><input type="radio" name="q2" value="3"> >
				10000 miles </label> <br />


			<!-- Question 3 -->
			<h2>
				<span> What is your inseam measurement?</span> <a
					class="btn btn-info" id="why" href="why">Why?</a>
			</h2>
			<!-- Choices for the third question -->
			<label><span>Inseam Measurement: </span><input type="text"
				name="q3" placeholder="Inseam Measurement"> </label> <br />
			<br />
			<button class="btn btn-info" type="submit" id="submit"
				>Submit >></button>
			<button class="btn btn-danger" type="reset" id="reset"
				>Reset >></button>
		</form>
		<br /> <br /> <br />
	</div>

</body>
</html>