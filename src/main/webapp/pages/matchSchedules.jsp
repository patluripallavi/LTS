<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color:#E8E8E8;">
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

<hr>

  <h1>${players}</h1>  
 <h1>${batsmen}</h1>
 <h1>${bowlers}</h1>
 <%-- <h1><%= list.get("event_home_team")} %></h1> --%>
 
 <h1>${totalScores}</h1>
<div class="container">

<h5 style="font-style: oblique;">${team_names.get(0)}</h5>
<h6>innings</h6>
<%-- <h1>${players.size()}</h1> --%>

<%-- <h1>${teamFixture}</h1>
<h1>${fromDate}</h1>
<h1>${toDate}</h1>
h1llo
<h1>${fn:length(bowlersRuns)-3 }</h1>
<h1>${fn:length(bowlersA) }</h1>
<h1>${fn:length(bowlersRuns)}</h1>
<h1>${bowlersRuns}</h1>
<h1>${batsmenRuns}</h1>
<h1>${totalWickets}</h1>
<h1>overs  = = = = ${overs} </h1>
<h1>${balls }</h1>
h1loooooo
<h1>${ER}</h1>

<h1>${bowlersB}</h1> --%>
yoooooo
<c:out value = "${bowlersRuns.get(6)}"/>
			      <c:out value = "${overs.get(6)}"/>
			      <c:out value = "${M.get(6)}"/>
			      <c:out value = "${W.get(6)}"/>
			      <c:out value = "${ER.get(6)}"/>
			      yoooooo
			      <c:out value = "${bowlersRuns.get(7)}"/>
			      <c:out value = "${overs.get(7)}"/>
			      <c:out value = "${M.get(7)}"/>
			      <c:out value = "${W.get(7)}"/>
			      <c:out value = "${ER.get(7)}"/>
			      yoooooo
			      <c:out value = "${bowlersRuns.get(8)}"/>
			      <c:out value = "${overs.get(8)}"/>
			      <c:out value = "${M.get(8)}"/>
			      <c:out value = "${W.get(8)}"/>
			      <c:out value = "${ER.get(8)}"/>
			      yoooooo
			      <c:out value = "${bowlersRuns.get(9)}"/>
			      <c:out value = "${overs.get(9)}"/>
			      <c:out value = "${M.get(9)}"/>
			      <c:out value = "${W.get(9)}"/>
			      <c:out value = "${ER.get(9)}"/>
			      yoooooo
			      <c:out value = "${bowlersRuns.get(10)}"/>
			      <c:out value = "${overs.get(10)}"/>
			      <c:out value = "${M.get(10)}"/>
			      <c:out value = "${W.get(10)}"/>
			      <c:out value = "${ER.get(10)}"/>
			      yoooooo
			      <c:out value = "${bowlersRuns.get(11)}"/>
			      <c:out value = "${overs.get(11)}"/>
			      <c:out value = "${M.get(11)}"/>
			      <c:out value = "${W.get(11)}"/>
			      <c:out value = "${ER.get(11)}"/>

  <h1>scores -  ${totalWickets.get(0) }</h1>

 <table class="table table-striped table-bordered table-sm">
	<thead class="thead-dark">
    	<tr >
      		<th scope="col">Batsman</th>
	      <th scope="col">R</th>
	      <th scope="col">B</th>
	      <th scope="col">4s</th>
	      <th scope="col">6s</th>
	      <th scope="col">SR</th>
    	</tr>
  	</thead>
  	 <c:forEach var = "i" begin = "0" end = "${fn:length(batsmenA) - 1}" >
        <tr>
          <th scope="row"> <c:out value = "${batsmenA.get(i)}"/> </th>
          <%-- <c:set var="mystrings" value="${fours.get(i)}" --%>
          
          <c:choose>
		    <c:when test = "${i >= 6 }">  <!--  test="${fours.get(i) eq ''}" -->
		          <td>-</td>	
			      <td><c:out value = "${balls.get(i)}"/></td>
			      <td><c:out value = "${fours.get(i)}"/></td>
			      <td><c:out value = "${sixes.get(i)}"/></td>
			      <td><c:out value = "${strikeRates.get(i)}"/></td>
		    </c:when>    
		    <c:otherwise>
		    <%-- <td><c:out value = "${mystrings}"/></td>	 --%>
		        <td><c:out value = "${batsmenRuns.get(i)}"/></td>
			      <td><c:out value = "${balls.get(i)}"/></td>
			      <td><c:out value = "${fours.get(i)}"/></td>
			      <td><c:out value = "${sixes.get(i)}"/></td>
			      <td><c:out value = "${strikeRates.get(i)}"/></td>
		    </c:otherwise>
		</c:choose>
    
	        </tr>
	      </c:forEach> 
  </table>
        
  <table class="table table-striped table-bordered table-sm">
			<thead class="thead-dark">
    <tr >
      <th scope="col">Bowler</th>
      <th scope="col">R</th>
      <th scope="col">O</th>
      <th scope="col">M</th>
      <th scope="col">W</th>
      <th scope="col">ECO</th>
    </tr>
  </thead>
      <tbody>
    <c:forEach var = "i" begin = "0"  end = "${fn:length(bowlersA) - 1}" >
        <tr>
          <th scope="row"> <c:out value = "${bowlersA.get(i)}"/> </th>
          <%-- <c:set var="mystrings" value="${fours.get(i)}" --%>
          
		    <%-- <td><c:out value = "${mystrings}"/></td>	 --%>
		        <td><c:out value = "${bowlersRuns.get(i)}"/></td>
			      <td><c:out value = "${overs.get(i)}"/></td>
			      <td><c:out value = "${M.get(i)}"/></td>
			      <td><c:out value = "${W.get(i)}"/></td>
			      <td><c:out value = "${ER.get(i)}"/></td>

	        </tr>
	      </c:forEach> 
  </tbody>
        </table>
        <c:set var="x1" value="${totalWickets.get(0) }"/>
        <table class="table table-striped table-bordered table-sm">
	<thead class="thead-dark">
    	<tr >
      		<th scope="col">Batsman</th>
	      <th scope="col">R</th>
	      <th scope="col">B</th>
	      <th scope="col">4s</th>
	      <th scope="col">6s</th>
	      <th scope="col">SR</th>
    	</tr>
  	</thead>
  	 <c:forEach var = "i" begin = "0" end = "${fn:length(batsmenB) - 1}" >
        <tr>
          <th scope="row"> <c:out value = "${batsmenB.get(i)}"/> </th>
          
		        <td><c:out value = "${batsmenRuns.get(i + 2 + x1)}"/></td>
			      <td><c:out value = "${balls.get(i+2+x1)}"/></td>
			      <td><c:out value = "${fours.get(i+2+x1)}"/></td>
			      <td><c:out value = "${sixes.get(i+2+x1i)}"/></td>
			      <td><c:out value = "${strikeRates.get(i+2+x1)}"/></td>
    
	    </tr>
	  </c:forEach> 
  </table>
        
  <table class="table table-striped table-bordered table-sm">
			<thead class="thead-dark">
    <tr >
      <th scope="col">Bowler</th>
      <th scope="col">R</th>
      <th scope="col">O</th>
      <th scope="col">M</th>
      <th scope="col">W</th>
      <th scope="col">ECO</th>
    </tr>
  </thead>
      <tbody>
      <c:set var="x2" value="${fn:length(bowlersRuns) }"/>
    <c:forEach var = "i" begin = "${fn:length(bowlersA) }"  end = "7" >
        <tr>
          <%-- <th scope="row"> <c:out value = "${bowlersB.get(i)}"/> </th> --%>
          
		        <%-- <td><c:out value = "${bowlersRuns.get(i)}"/></td>
			      <td><c:out value = "${overs.get(i)}"/></td>
			      <td><c:out value = "${M.get(i)}"/></td>
			      <td><c:out value = "${W.get(i)}"/></td>
			      <td><c:out value = "${ER.get(i)}"/></td> --%>
		 
	        </tr>
	      </c:forEach> 
  </tbody>
        </table>
 
 
</div>	
<h1>hello</h1>
<h1>${aPer}</h1>
<h1>${aPer}</h1>

  <form action="/displayPieChart" method="get"> 
<input  name="t1" value="${aPer}" id="t1">
<input  name="t2" value="${bPer}" id="t2">
  <button class="btn btn-dark  my-2 my-sm-0" type="submit">Statistics</button>
  </form>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
</body>
</html>