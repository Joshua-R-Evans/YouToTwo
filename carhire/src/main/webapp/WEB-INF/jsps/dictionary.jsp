<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<title>Terms and Things</title>
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
	color: rgb(00, 150, 175);
	text-align: center;
	text-shadow: 1px 1px black;
}

h2 {
	color: rgb(00, 150, 175);
	text-shadow: 1px 1px black;
}

a {
	hover:;
	text-shadow: 1px 1px black;
}

p {
	color: white;
}

label {
	color: white;
	text-shadow: 1px 1px black;
}

span {
	background-color: rgba(0, 0, 0, 0.75);
	text-shadow: 1px 1px black;
}
</style>




<br />
<br />
<br />
<div class="container center" id="wrapper">

	<br />
	<h1>Dictionary</h1>
	<br />
	<p><a>Dank: <span>adjective; Synonymous with awesome / cool.</span></a>
	
	
	<p>
		<a href="static/squid.jpg">Squid(s):</a> <span>noun; One that
			rides a motorcycle with minimal protective gear and experience. Also,
			called squidlet(s). Also see: (verb) Squiding</span>
	</p>
	<br />
	<p>
		<a href="static/wheelie.jpg">Nooner(s): verb; Wheelie</a> <span></span>
	</p>
	<br />
	<p>
		<a href="static/standard.jpg">Standard (Naked):</a> <span></span>
	</p>
	<br />
	<p>
		<a href="static/adventure.jpg">Adventure (ADV):</a> <span>Adventure
			Bikes, sometimes called dual-sports or on/off-road motorcycles, are
			street legal machines that are also designed to enter off-road
			situations. Typically based on a dirt bike chassis, they have added
			lights, mirrors, signals, and instruments that allow them to be
			licensed for public roads. They are higher than other street bikes,
			with a high center of gravity and tall seat height, allowing good
			suspension travel for rough ground. Adventure motorcycles are
			motorcycles with touring capability on paved and unpaved roads. As a
			dual-sport they have a significant on-pavement bias and perform well
			on pavement at higher speeds unlike most dual-sports. Their size,
			weight and sometimes their tires, however, limits their off-road
			capability. Most adventure motorcycles function well on graded dirt
			and gravel roads but are less than ideal on more difficult
			off-pavement terrain. Supermoto motorcycles were designed to compete
			on a single course that alternated between three genres of motorcycle
			racing: road racing, track racing, and motocross. This increasingly
			popular type of motorcycle is often a dual-sport that has been fitted
			by the manufacturer with smaller rims and road tires. Supermotos are
			quickly gaining popularity as street bikes due to their combination
			of light weight, durability, relatively low cost, and sporty
			handling.</span>
	</p>
</div>
</body>
</html>