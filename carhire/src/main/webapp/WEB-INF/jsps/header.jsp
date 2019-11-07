<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>

<!-- Bootstrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
	integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
	crossorigin='anonymous'>

</head>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	<a class="navbar-brand" href="index">You to Two</a>

	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active"><a class="nav-link" href="index">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbardrop"
				data-toggle="dropdown"> About </a>
				<div class="dropdown-menu" style="background: black;">
					<a class="dropdown-item" id="a" href="about" style="color: white;">About</a>
					<a class="dropdown-item" id="c" href="contact"
						style="color: white;">Contact Us</a>
					<c:choose>
						<c:when test="${not empty logedinUser}">
							<a class="dropdown-item" id="m" href="members"
								style="color: white;">Members</a>
						</c:when>
					</c:choose>
				</div></li>
			<c:choose>
				<c:when test="${not empty logedinUser}">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> Profile </a>
						<div class="dropdown-menu" style="background: black;">
							<a class="dropdown-item" style="color: white;" href="profile">
								My Profile </a> <a class="dropdown-item"
								href="edituser-${logedinUser.id}" style="color: white;"> <i
								class="fas fa-pencil-alt "> Edit</i>
							</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" id="logout"
						href="logout">|Logout|</a></li>
				</c:when>
				<c:otherwise>
					<li class="nav-item"><a class="nav-link" id="signup"
						href="register">Become a Member</a></li>
					<li class="nav-item"><a class="nav-link" id="login"
						href="login">Login</a></li>
				</c:otherwise>
			</c:choose>

		</ul>
		<form class="form-inline navbar-right" action="search" method="post">
			<input class="form-control mr-sm-2" name="dictionary" type=""
				placeholder="Dictionary Search" required>
			<button class="btn btn-info" id="search" type="submit">Find
				it >></button>
		</form>
	</div>
</nav>