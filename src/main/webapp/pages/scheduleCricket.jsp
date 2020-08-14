<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body
	style="background-image: url('img/Sports3.jpg'); background-size: 1600px 800px; background-repeat: no-repeat;">
	<div>
		<nav class="navbar navbar-expand-lg bg-dark">
			<a class="navbar-brand" href="/" style="color: white;">Live
				Tournament Score</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="navbar-nav ml-auto">
				<a class="nav-item nav-link " href="/cl"
					style="color: white;">Live Score</a> <a class="nav-item nav-link"
					href="/scheduleCricket" style="color: white;">Schedules</a> <a
					class="nav-item nav-link" href="/fixturesCricket"
					style="color: white;">Fixtures</a>
			</div>
		</nav>

		<marquee behavior="scroll" direction="left" scrollamount="10"">
			<a href="https://www.cricbuzz.com/">Click Here!</a> to view live
			scores in more detail.
		</marquee>

	</div>

	<h1
		style="font-style: oblique; margin-bottom: 6%; margin-left: 10%; margin-top: 4%;">Cricket
		schedule</h1>
	<div>
		<form action="cs">
			<label style="font-style: oblique; margin-left: 5%;"><b>From
					Date</b></label> <input type="date" name="fromDate" id="datePicker"
				min="1997-01-01" max="2030-12-31" /> <label
				style="font-style: oblique; margin-left: 2%;"><b>To Date</b></label>
			<input type="date" name="toDate" />
			<button class="btn btn-dark  my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
	
	<div align="center"
		style="position: absoulte; background-color: #565656; color: white; margin-top: 23%;">
		<h6>Follow us on</h6>
		<i class="social-icon fa fa-facebook"></i> <i
			class="social-icon fa fa-twitter"></i> <i
			class="social-icon fa fa-instagram"></i>
		<p>
			<i class="fa fa-registered" style="font-size: 24px;"></i>Copyright2020LiveTournamentScores
		</p>
	</div>

</body>




</html>