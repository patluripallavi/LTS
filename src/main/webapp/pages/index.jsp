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

<marquee behavior="scroll" direction="left" scrollamount="10"> <a href="https://www.cricbuzz.com/">Click Here!</a> to view live scores in more detail.</marquee>


	<div style="position: relative; width: 100%;">
		<img alt="sports pic" src="img/Sports2.jpg"
			style="height: 600px; width: 100%;">
		<h2
			style="position: absolute; top: 10%; left: 40%; font-style: oblique; font-family: serif; color: white;">
			<b>CHECK IT OUT!!!</b>
		</h2>
		<form action="/cricket">
			<button class="btn btn-dark btn-lg my-2 my-sm-0" type="submit"
				style="position: absolute; top: 20%; left: 45%;">Score</button>
		</form>
	</div>
	
	
	<br>
	<h3
		style="font-style: oblique; font-family: serif; color: black; margin-left: 2%;">
		<b>NEW FEEDS :-</b>
	</h3>
	<div class="container-fluid" style="margin-bottom: 1%;">
		<div class="row">
			<div class="col-md">
				<div class="card" style="weight: 40rem;">
					<img class="card-img-top" src="img/dhoni.jpg" alt="dhoni image">
					<div class="card-body">
						<p class="card-text">Mahendra Singh Dhoni (born 7 July 1981),
							commonly known as M. S. Dhoni and *Mahi*, is a cricket player and
							was the former captain of the Indian cricket team.Dhoni is a
							right-handed batsman. He is known as the greatest captain of all
							time, having achieved more success than any other captain in the
							history of cricket.The Indian cricket team won the 2011 Cricket
							World Cup under his captainship. His Test cricket and One Day
							International records are the best among all Indian captains to
							date. He took over the ODI captaincy from Rahul Dravid in 2007
							and led the team to its first ever inter-country ODI series wins
							in Sri Lanka and New Zealand. Dhoni also holds the post of
							Vice-President of India Cements Ltd. after resigning from Air
							India. India Cements is the owner of the Indian Premier League
							team Chennai Super Kings, and Dhoni has been its captain since
							the first edition of IPL.Dhoni has also been given many awards,
							such as the ICC ODI Player of the Year award in 2008 and 2009
							(the first Indian player to achieve this), the Rajiv Gandhi Khel
							Ratna award in 2007 and the Padma Shri, India's fourth-highest
							civilian honour, in 2009.</p>
					</div>
				</div>
			</div>
			
			
			<div class="col-md">
				<h3 style="font-style: oblique; font-family: serif; color: black;">
					<b>Twenty20 Superstars: AB de Villiers :-</b>
				</h3>
				<video controls style="margin-bottom: 7%;">
					<source src="img/clip.mp4" type="video/ogg">
				</video>
				<h3 style="font-style: oblique; font-family: serif; color: black;">
					<b>Australian's on Virat Kohli :-</b>
				</h3>
				<video controls>
					<source src="img/clip1.mp4" type="video/ogg">
				</video>
			</div>
		</div>
	</div>


	<div align="center"
		style="position: absoulte; bottom: 0; left: 2%; background-color: #565656; color: white;">
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