<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<title>Contact Us</title>
<head>
<meta charset="ISO-8859-1">


</head>
<jsp:include page="header.jsp" />
</head>

<style>
body {
	background-color: rgb(75, 75, 75);
	background-image: url('static/bigbike.jpg');
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
}

span {
	background-color: rgba(0, 0, 0, 0.85);
	text-shadow: 1px 1px rgb(00, 100, 250);
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 3px solid black;
  border-radius: 4px;
  box-sizing: border-box;
}
textarea[type=text], select{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 3px solid black;
  border-radius: 4px;
  box-sizing: border-box;
}

</style>

<body>
	<br />
	<br />
	<br />
	<h1><span>${msg}</span></h1>
	<br />
	<div class="container center">
		<form id="emails" method="post" action="sendmail">
			<div class="row">
				<div class="col-md-3">
					<div class="form-group">
						<input type="text" class="form-control" name="email"
							placeholder="E-mail Address" />
					</div>
				</div>
				<div class="col-md-3">
					<input type="text" name="subject" class="form-control"
						placeholder="subject" />
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<textarea type="text" class="form-control" id="msg" name="msg" rows="5"
						placeholder="message"></textarea>
				</div>
			</div>
			<br />
			<div class="row">
				<div class="col-md-4">
					<button type="submit" name="submit" class="btn btn-primary">Submit
						Message</button>
					<a href="contact" class="btn btn-primary" role="button">Reset</a>
				</div>
			</div>

		</form>
	</div>
</body>
</html>