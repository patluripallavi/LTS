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
<body style="background-image: url('img/Sports4.jpg'); background-size: 1600px 800px; background-repeat: no-repeat;">

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

		<marquee behavior="scroll" direction="left" scrollamount="10"" style="color: white;">
			<a href="https://www.cricbuzz.com/">Click Here!</a> to view live
			scores in more detail.
		</marquee>

	</div>
	
<div align="center">
<h1 style="color: white;">Cricket Fixtures</h1>
<form action="/cf" method="get">
  <h3 style="margin-top: 3%; margin-bottom: 3%;">Choose respective ID:</h3>
  <input list="fixtures" name="id1" id="id1">
  <datalist id="fixtures">
    <option value="5">ID of Australia</option>
    <option value="30">ID of India</option>
    <option value="29">ID of New Zealand</option>
    <option value="108">ID of Tamil Nadu</option>
    <option value="100">ID of Punjab</option>
    <option value="102">ID of Uttar Pradesh</option>
    <option value="92">ID of Himachal Pradesh</option>
    <option value="66">ID of Karnataka</option>
    <option value="109">ID of Rajasthan</option>
    <option value="99">ID of Madhya Pradesh</option>
    
  </datalist>
  <button class="btn btn-dark btn-sm my-2 my-sm-0" type="submit">Extract</button>
</form>

</div>	
<div align="center"
		style="position: absoulte; background-color: #565656; color: white; margin-top: 25%;">
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