<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<title>Say What?</title>
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
	<h1>A Bit More Info</h1>
	<br />
	<p>
		<a href="static/cruiser.jpg">Cruiser (Hog):</a> <span>A cruiser is a motorcycle
			in the style of American machines from the 1930s to the early 1960s,
			including those made by Harley-Davidson, Indian, Excelsior and
			Henderson. The riding position usually places the feet forward and
			the hands up, with the spine erect or leaning back slightly. Typical
			cruiser engines emphasize easy rideability and shifting, with plenty
			of low-end torque but not necessarily large amounts of horsepower,
			traditionally V-twins but inline engines have become more common.
			Cruisers with greater performance than usual, including more
			horsepower, stronger brakes and better suspension, are often called
			power cruisers. Japanese companies began producing models evocative
			of the early cruisers in the mid-1980s, and by 1997 the market had
			grown to nearly 60 percent of the US market, such that a number of
			motorcycle manufacturers including BMW, Honda, Moto Guzzi, Yamaha,
			Suzuki, Triumph and Victory have currently or have had important
			models evocative of the American cruiser. Moto Guzzi California
			Jackal Harley-Davidsons and other cruisers with extensive luggage for
			touring have been called, sometimes disparagingly or jocularly,
			baggers, or full baggers, as well as dressers, full dressers, or full
			dress tourers. These terms are no longer limited to cruisers, but may
			be used to refer to any touring motorcycle. Cruisers are often the
			basis for custom motorcycle projects that result in a bike modified
			to suit the owner's ideals, and as such are a source of pride and
			accomplishment.</span>
	</p>
	<br />
	<p>
		<a href="static/sport.jpg">Sport (Rocket):</a> <span>A sportbike, or sports
			bike, is a motorcycle optimized for speed, acceleration, braking, and
			cornering on paved roads, typically at the expense of comfort and
			fuel economy by comparison with other motorcycles. Soichiro Honda
			wrote in the owner's manual of the 1959 Honda CB92 Benly Super Sport
			that, "Primarily, essentials of the motorcycle consists in the speed
			and the thrill," while Cycle World's Kevin Cameron says that, "A
			sportbike is a motorcycle whose enjoyment consists mainly from its
			ability to perform on all types of paved highway- its cornering
			ability, its handling, its thrilling acceleration and braking power,
			even (dare I say it?) its speed." Motorcycles are versatile and may
			be put to many uses as the rider sees fit. In the past there were few
			if any specialized types of motorcycles, but the number of types and
			sub-types has proliferated, particularly in the period since the
			1950s. The introduction of the Honda CB750 in 1969 marked a dramatic
			increase in the power and speed of practical and affordable sport
			bikes available to the general public. The groundbreaking inline four
			of the Honda CB750. This was followed in the 1970s by improvements in
			suspension and braking commensurate with the power of the large
			inline fours that had begun to dominate the sport bike world. In the
			1980s sport bikes again took a leap ahead, becoming almost
			indistinguishable from racing motorcycles. Since the 1990s sport
			bikes have become more diverse, adding new variations like the naked
			bike and streetfighter to the more familiar road racing style of
			sport bike.</span>
	</p>
	<br />
	<p>
		<a href="static/standard.jpg">Standard (Naked):</a> <span>Standards, also called
			naked bikes or roadsters, are versatile, general-purpose street
			motorcycles. They are recognized primarily by their upright riding
			position, part-way between the reclining rider posture of the
			cruisers and the forward leaning sport bikes. Footpegs are below the
			rider and handle bars are high enough to not force the rider to reach
			too far forward, placing the shoulders above the hips in a natural
			position. Because of their flexibility, lower costs, and moderate
			engine output, standards are particularly suited to motorcycle
			beginners. Standards usually do not come with fairings or
			windscreens, or if they have them, they are relatively small.
			Standard is often a synonym for naked, a term that was used in
			reference to 1950s road racing bikes. The standard seemed to have
			disappeared, fueling nostalgia for the return of the Universal
			Japanese Motorcycle, which were admired for their simplicity,
			quality, and versatility. Muscle bike is a nickname for a motorcycle
			type, derived from either a standard or sport bike design, that puts
			a disproportionately high priority on engine power. Roadster is
			equivalent to standard or naked.</span>
	</p>
	<br />
	<p>
		<a href="static/adventure.jpg">Adventure (ADV):</a> <span>Adventure Bikes,
			sometimes called dual-sports or on/off-road motorcycles, are street
			legal machines that are also designed to enter off-road situations.
			Typically based on a dirt bike chassis, they have added lights,
			mirrors, signals, and instruments that allow them to be licensed for
			public roads. They are higher than other street bikes, with a high
			center of gravity and tall seat height, allowing good suspension
			travel for rough ground. Adventure motorcycles are motorcycles with
			touring capability on paved and unpaved roads. As a dual-sport they
			have a significant on-pavement bias and perform well on pavement at
			higher speeds unlike most dual-sports. Their size, weight and
			sometimes their tires, however, limits their off-road capability.
			Most adventure motorcycles function well on graded dirt and gravel
			roads but are less than ideal on more difficult off-pavement terrain.
			Supermoto motorcycles were designed to compete on a single course
			that alternated between three genres of motorcycle racing: road
			racing, track racing, and motocross. This increasingly popular type
			of motorcycle is often a dual-sport that has been fitted by the
			manufacturer with smaller rims and road tires. Supermotos are quickly
			gaining popularity as street bikes due to their combination of light
			weight, durability, relatively low cost, and sporty handling.</span>
	</p>
</div>
</body>
</html>