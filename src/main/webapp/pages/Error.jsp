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
<body style="background-color: #E8E8E8;">

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
 <h3 align="center" style="color: red; margin-top: 10%;">Please Enter a valid data or there meight be no appropriate result found.	</h3> 

</body>
</html>