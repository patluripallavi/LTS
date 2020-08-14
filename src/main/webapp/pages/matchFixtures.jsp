
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color:#E8E8E8;">

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

		<marquee behavior="scroll" direction="left" scrollamount="10"" style="color: black;">
			<a href="https://www.cricbuzz.com/">Click Here!</a> to view live
			scores in more detail.
		</marquee>

	</div>
	
<div class="container" >
<table class="table table-striped table-bordered table-sm" style="margin-top: 6%;">
			<thead class="thead-dark">
    <tr >
      <th scope="col">Teams</th>
      <th scope="col">Score</th>
      <th scope="col">Status</th>
      
    </tr>
  </thead>
 <c:forEach var = "i" begin = "0" end = "${fn:length(teamFixtures) - 1}" >
  <tr>
          <th scope="row"> <c:out value = "${teamFixtures.get(i)}"/> </th>
          <th scope="row"> <c:out value = "${teamScores.get(i)}"/> </th>
          <th scope="row"> <c:out value = "${matchStatus.get(i)}"/> </th>
  </tr>
 </c:forEach>
 
 </table> 
 </div>


<div align="center"
		style="position: absoulte; background-color: #565656; color: white; margin-top: 9%;">
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