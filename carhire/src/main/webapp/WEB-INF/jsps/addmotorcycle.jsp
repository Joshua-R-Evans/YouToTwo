<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<title>Add Motorcycle</title>
<head>
<meta charset="ISO-8859-1">


</head>
<jsp:include page="header.jsp" />
</head>

<style>
body {
	background-color: rgb(75, 75, 75);
	background-image: url('static/valkyrie.jpg');
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
<c:if test="${logedinUser.role eq 'ADMIN'}">
	<div class="container center">
		<br>

		<h1>
			<span>Add Motorcycle</span><br> <small>${success}</small>
		</h1>
		<h1 class="text-danger text-center">${error}</h1>
		<br>
		<div class="row justify-content-center">
			<form:form action="addBike" modelAttribute="motorcycle"
				method="post" class="col-md col-md-4 col-sm-12">


				<form:select path="type" name="type" class="form-control input-sm">

					<option value="">Select</option>
					<option value="Cruiser">Cruiser</option>
					<option value="Sport">Sport</option>
					<option value="Standard">Standard</option>
					<option value="Adventure">Adventure</option>

				</form:select>
				<br />
				<form:select path="make" name="make" class="form-control input-sm">

					<option value="">Select</option>
					<option value="Ducati">Ducati</option>
					<option value="Harley-Davidson">Harley-Davidson</option>
					<option value="Honda">Honda</option>
					<option value="Kawasaki">Kawasaki</option>
					<option value="KTM">KTM</option>
					<option value="Suzuki">Suzuki</option>
					<option value="Yamaha">Yamaha</option>

				</form:select>
				<div class="has-error">
					<form:errors path="make" class="text-danger" />
				</div>
				<br />
				<form:input type="text" class="form-control" path="model"
					placeholder="Model" />
				<div class="has-error">
					<form:errors path="model" class="text-danger" />
				</div>
				<br />
				<form:input type="text" class="form-control" path="size"
					placeholder="Engine Size" />
				<div class="has-error">
					<form:errors path="size" class="text-danger" />
				</div>
				<br />
				<form:input class="form-control" path="seat" type="text"
					placeholder="Seat Height in inches" />
				<div class="has-error">
					<form:errors path="seat" class="text-danger" />
				<br/>
				</div>
					<form:select path="level" name="level" class="form-control input-sm">

					<option value="">Select Experience Needed</option>
					<option value="0">Beginner</option>
					<option value="1">Intermediate</option>
					<option value="2">Experienced</option>
					<option value="3">Veteran</option>

				</form:select>
				<form:errors path="level" class="text-danger" />
				<br />
				<button class="btn btn-info" name="submit" type="submit">Submit</button>
				<a href="index" class="btn btn-danger">Cancel</a>

			</form:form>
		</div>
	</div>
	</c:if>
</body>
</html>