<%@ page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
			<a class="nav-item nav-link " href="/cl" style="color: white;">Live
				Score</a> <a class="nav-item nav-link" href="/scheduleCricket"
				style="color: white;">Schedules</a> <a class="nav-item nav-link"
				href="/fixturesCricket" style="color: white;">Fixtures</a>
		</div>
	</nav>

	<marquee behavior="scroll" direction="left" scrollamount="10">
		<a href="https://www.cricbuzz.com/">Click Here!</a> to view live
		scores in more detail.
	</marquee>


	
	<div class="container">

		<h3 style="font-style: oblique; margin-left: 20%;">${team_names.get(0)}</h3>

		<h5 style="margin-top: 2%; margin-bottom: 2%;">${home} innings  </h5>
		<table class="table table-striped table-bordered table-sm">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Batsman</th>
					<th scope="col">R</th>
					<th scope="col">B</th>
					<th scope="col">4s</th>
					<th scope="col">6s</th>
					<th scope="col">SR</th>
				</tr>
			</thead>
			<c:forEach var="i" begin="0" end="${fn:length(batsmenA) - 1}">
				<tr>

					<th scope="row"><c:out value="${batsmenA.get(i)}" /></th>
					<%-- <c:set var="mystrings" value="${fours.get(i)}" --%>

					<%-- <td><c:out value = "${mystrings}"/></td>	 --%>
					<td><c:out value="${batsmenRuns.get(i)}" /></td>
					<td><c:out value="${balls.get(i)}" /></td>
					<td><c:out value="${fours.get(i)}" /></td>
					<td><c:out value="${sixes.get(i)}" /></td>
					<td><c:out value="${strikeRates.get(i)}" /></td>

				</tr>
			</c:forEach>
		</table>

		<table class="table table-striped table-bordered table-sm">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Bowler</th>
					<th scope="col">R</th>
					<th scope="col">O</th>
					<th scope="col">M</th>
					<th scope="col">W</th>
					<th scope="col">ECO</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" begin="0" end="${fn:length(bowlersA) - 1}">
					<tr>
						<th scope="row"><c:out value="${bowlersA.get(i)}" /></th>
						<%-- <c:set var="mystrings" value="${fours.get(i)}" --%>

						<%-- <td><c:out value = "${mystrings}"/></td>	 --%>
						<td><c:out value="${bowlersRuns.get(i)}" /></td>
						<td><c:out value="${overs.get(i)}" /></td>
						<td><c:out value="${M.get(i)}" /></td>
						<td><c:out value="${W.get(i)}" /></td>
						<td><c:out value="${ER.get(i)}" /></td>

					</tr>
				</c:forEach>
			</tbody>

		</table>
		<c:set var="x1" value="${totalWickets.get(0) }" />
		
		<h5 style="margin-top: 2%; margin-bottom: 2%;margin-left: 70%;">TOTAL SCORE :- ${totalScores.get(0)} </h5>

		<h5 style="margin-top: 2%; margin-bottom: 2%;">${away}innings</h5>
		<table class="table table-striped table-bordered table-sm">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Batsman</th>
					<th scope="col">R</th>
					<th scope="col">B</th>
					<th scope="col">4s</th>
					<th scope="col">6s</th>
					<th scope="col">SR</th>
				</tr>
			</thead>
			<c:forEach var="i" begin="0" end="${fn:length(batsmenB) - 1}">
				<tr>
					<th scope="row"><c:out value="${batsmenB.get(i)}" /></th>

					<td><c:out value="${batsmenRuns.get(i + 1 + x1)}" /></td>
					<td><c:out value="${balls.get(i+1+x1)}" /></td>
					<td><c:out value="${fours.get(i+1+x1)}" /></td>
					<td><c:out value="${sixes.get(i+1+x1)}" /></td>
					<td><c:out value="${strikeRates.get(i+1+x1)}" /></td>

				</tr>
			</c:forEach>
		</table>

		<table class="table table-striped table-bordered table-sm">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Bowler</th>
					<th scope="col">R</th>
					<th scope="col">O</th>
					<th scope="col">M</th>
					<th scope="col">W</th>
					<th scope="col">ECO</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="x2" value="${fn:length(bowlersA) }" />
				<c:forEach var="i" begin="${fn:length(bowlersA) }"
					end="${fn:length(bowlersA)+fn:length(bowlersB)-1}">
					<tr>
						<th scope="row"><c:out value="${bowlersB.get(i-x2)}" /></th>

						<td><c:out value="${bowlersRuns.get(i)}" /></td>
						<td><c:out value="${overs.get(i)}" /></td>
						<td><c:out value="${M.get(i)}" /></td>
						<td><c:out value="${W.get(i)}" /></td>
						<td><c:out value="${ER.get(i)}" /></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
<h5 style="margin-top: 2%; margin-bottom: 2%;margin-left: 70%;">TOTAL SCORE :- ${totalScores.get(1)} </h5>

	</div>
	

	<form action="/displayPieChart" method="get">
		<input type="hidden" name="t1" value="${team1}" id="t1"> <input
			type="hidden" name="t2" value="${team2}" id="t2">
		<button class="btn btn-dark  my-2 my-sm-0" type="submit" style="margin-left: 50%;">Statistics</button>
	</form>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
</body>
</html>