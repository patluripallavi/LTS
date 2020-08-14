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

<body style="background-image: url('img/Sports1.jpg');">
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

	<h1 align="center"
		style="margin-top: 30px; margin-bottom: 70px;margin-right: 40%;font-style: oblique; font-family: serif; "><b>Cricket
		Score</b></h1>
	<div align="center" style="margin-bottom: 9%; margin-right: 40%; font-style: oblique; font-family: serif;">
		<form action="cl">
			<h4 style="margin-bottom: 20px;"><b>Click here to watch live score</b></h4>
			<button class="btn btn-dark  my-2 my-sm-0" type="submit">Live
				Score</button>
		</form>


		<br>
		<form action="scheduleCricket">
			<h4 style="margin-bottom: 20px;"><b>Click here to search for a
				match</b></h4>
			<button class="btn btn-dark  my-2 my-sm-0" type="submit">Schedules</button>
		</form>


		<br>
		<form action="fixturesCricket">
			<h4 style="margin-bottom: 20px;"><b>Click here to select teams</b></h4>
			<button class="btn btn-dark  my-2 my-sm-0" type="submit">Fixtures</button>
		</form>
	</div>


	<div align="center"
		style="position: absoulte; left: 2%; background-color: #565656; color: white; margin-bottom: 0%;">
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