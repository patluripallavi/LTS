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

<%-- <h1>${list[0].scorecard["RCB Innings"]}</h1> --%>
<%-- <table style="width:50%;border: 1px solid black;text-align: center;">
    <tr>
        <th>User_id</th>
        <!-- <th>User_name</th>
        <th>Amount</th> -->
    </tr>

    <c:forEach var="par" items="${list}">
    	<c:forEach var ="number" items = "${par}">
    	
			<tr>
				<font color="#000080"><td>${number}</td></font>
			</tr>
		</c:forEach>

        <tr>
            <td><c:out value="${par}"/></td>
           <!-- <td><c:out value="${par.username}"/></td>
            <td><c:out value="${par.amount}"/></td> -->

        </tr>

    </c:forEach>

</table>
<p>${list[0].scorecard["RCB Innings"][0].player}</p>
<p>${list[0].scorecard["RCB Innings"][1].player}</p>
<p>${list[0].scorecard["RCB Innings"][2].player}</p>
<p>${list[0].scorecard["RCB Innings"][0]}</p>
<p>${list[0].scorecard["RCB Innings"][0].innings}</p>
<p>${list[0].event_home_team} hello<p>
 --%>
 
 <%-- <h1>hey</h1>
 <h1>${team_names[0]}</h1>--%>
  <h1>${players}</h1>  
 <h1>${batsmen}</h1>
 <h1>${bowlers}</h1>
 <%-- <h1><%= list.get("event_home_team")} %></h1> --%>
 
 <h1>${totalScores}</h1>
<div class="container">

<h5 style="font-style: oblique;">${team_names.get(0)}</h5>
<h6>innings</h6>
<%-- <h1>${players.size()}</h1> --%>

<h1>${teamFixture}</h1>
<h1>${fromDate}</h1>
<h1>${toDate}</h1>
<h1>${bowlersRuns}</h1>
<h1>${batsmenRuns}</h1>
<h1>${totalWickets}</h1>
<h1>overs  = = = = ${overs} </h1>

  

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
  <%-- 	<c:set var="mystring" value="${fours.get(0)}"/>
  	
 <c:choose>
    <c:when test="${mystring == ''}">
        <td><c:out value = "--"/></td>
	      <td><c:out value = "${balls.get(i)}"/></td>
	      <td><c:out value = "${fours.get(i)}"/></td>
	      <td><c:out value = "${sixes.get(i)}"/></td>
	      <td><c:out value = "${strikeRates.get(i)}"/></td>
        <br />
    </c:when>    
    <c:otherwise>	
        <td><c:out value = "${runs.get(i)}"/></td>
	      <td><c:out value = "${balls.get(i)}"/></td>
	      <td><c:out value = "${fours.get(i)}"/></td>
	      <td><c:out value = "${sixes.get(i)}"/></td>
	      <td><c:out value = "${strikeRates.get(i)}"/></td>
        <br />
    </c:otherwise>
</c:choose> --%> 
  	
  
  	
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
         <%--  <c:if test = "${fours.get(i)}".equals("")>
          <td><c:out value = "--"/></td>
	      <td><c:out value = "${balls.get(i)}"/></td>
	      <td><c:out value = "${fours.get(i)}"/></td>
	      <td><c:out value = "${sixes.get(i)}"/></td>
	      <td><c:out value = "${strikeRates.get(i)}"/></td>
	      </c:if> 
	      <c:else>
	      <td><c:out value = "${runs.get(i)}"/></td>
	      <td><c:out value = "${balls.get(i)}"/></td>
	      <td><c:out value = "${fours.get(i)}"/></td>
	      <td><c:out value = "${sixes.get(i)}"/></td>
	      <td><c:out value = "${strikeRates.get(i)}"/></td>
	      </c:else>
         
           --%>
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
          
          <c:choose>
		    <c:when test = "${i >= 6 }">  <!--  test="${fours.get(i) eq ''}" -->
		          <!-- <td>-</td>	 -->
			      <td><c:out value = "${overs.get(i)}"/></td>
			      <td><c:out value = "${M.get(i)}"/></td>
			      <td><c:out value = "${W.get(i)}"/></td>
			      <td><c:out value = "${ER.get(i)}"/></td>
		    </c:when>    
		    <c:otherwise>
		    <%-- <td><c:out value = "${mystrings}"/></td>	 --%>
		        <td><c:out value = "${bowlersRuns.get(i)}"/></td>
			      <td><c:out value = "${overs.get(i)}"/></td>
			      <td><c:out value = "${M.get(i)}"/></td>
			      <td><c:out value = "${W.get(i)}"/></td>
			      <td><c:out value = "${ER.get(i)}"/></td>
		    </c:otherwise>
		</c:choose>
         <%--  <c:if test = "${fours.get(i)}".equals("")>
          <td><c:out value = "--"/></td>
	      <td><c:out value = "${balls.get(i)}"/></td>
	      <td><c:out value = "${fours.get(i)}"/></td>
	      <td><c:out value = "${sixes.get(i)}"/></td>
	      <td><c:out value = "${strikeRates.get(i)}"/></td>
	      </c:if> 
	      <c:else>
	      <td><c:out value = "${runs.get(i)}"/></td>
	      <td><c:out value = "${balls.get(i)}"/></td>
	      <td><c:out value = "${fours.get(i)}"/></td>
	      <td><c:out value = "${sixes.get(i)}"/></td>
	      <td><c:out value = "${strikeRates.get(i)}"/></td>
	      </c:else>
         
           --%>
	        </tr>
	      </c:forEach> 
  </tbody>
        </table>
 <h6>innings</h6>
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
      <tbody>
    <tr>
      <th scope="row">player</th>
      <td>R</td>
      <td>B</td>
      <td>4s</td>
      <td>6s</td>
      <td>SR</td>
    </tr>
    <tr>
      <th scope="row">player</th>
      <td>R</td>
      <td>B</td>
      <td>4s</td>
      <td>6s</td>
      <td>SR</td>
    </tr><tr>
      <th scope="row">player</th>
      <td>R</td>
      <td>B</td>
      <td>4s</td>
      <td>6s</td>
      <td>SR</td>
    </tr><tr>
      <th scope="row">player</th>
      <td>R</td>
      <td>B</td>
      <td>4s</td>
      <td>6s</td>
      <td>SR</td>
    </tr><tr>
      <th scope="row">player</th>
      <td>R</td>
      <td>B</td>
      <td>4s</td>
      <td>6s</td>
      <td>SR</td>
    </tr><tr>
      <th scope="row">player</th>
      <td>R</td>
      <td>B</td>
      <td>4s</td>
      <td>6s</td>
      <td>SR</td>
    </tr><tr>
      <th scope="row">player</th>
      <td>R</td>
      <td>B</td>
      <td>4s</td>
      <td>6s</td>
      <td>SR</td>
    </tr><tr>
      <th scope="row">player</th>
      <td>R</td>
      <td>B</td>
      <td>4s</td>
      <td>6s</td>
      <td>SR</td>
    </tr><tr>
      <th scope="row">player</th>
      <td>R</td>
      <td>B</td>
      <td>4s</td>
      <td>6s</td>
      <td>SR</td>
    </tr><tr>
      <th scope="row">player</th>
      <td>R</td>
      <td>B</td>
      <td>4s</td>
      <td>6s</td>
      <td>SR</td>
    </tr><tr>
      <th scope="row">player</th>
      <td>R</td>
      <td>B</td>
      <td>4s</td>
      <td>6s</td>
      <td>SR</td>
    </tr>
   <tr>
    <th scope="row">Total</th>
    <td colspan="5" align="center">total</td>
   </tr>
  </tbody>
        </table>
        
  <table class="table table-striped table-bordered table-sm">
			<thead class="thead-dark">
    <tr >
      <th scope="col">Bowler</th>
      <th scope="col">O</th>
      <th scope="col">M</th>
      <th scope="col">R</th>
      <th scope="col">W</th>
      <th scope="col">NB</th>
      <th scope="col">WD</th>
      <th scope="col">ECO</th>
    </tr>
  </thead>
      <tbody>
    <tr>
      <th scope="row">bowler_to_batsma</th>
      <td>O</td>
      <td>M</td>
      <td>R</td>
      <td>W</td>
      <td>NB</td>
      <td>WD</td>
      <td>ECO</td>
    </tr>
    <tr>
      <th scope="row">bowler_to_batsma</th>
      <td>O</td>
      <td>M</td>
      <td>R</td>
      <td>W</td>
      <td>NB</td>
      <td>WD</td>
      <td>ECO</td>
    </tr><tr>
      <th scope="row">bowler_to_batsma</th>
      <td>O</td>
      <td>M</td>
      <td>R</td>
      <td>W</td>
      <td>NB</td>
      <td>WD</td>
      <td>ECO</td>
    </tr><tr>
      <th scope="row">bowler_to_batsma</th>
      <td>O</td>
      <td>M</td>
      <td>R</td>
      <td>W</td>
      <td>NB</td>
      <td>WD</td>
      <td>ECO</td>
    </tr><tr>
      <th scope="row">bowler_to_batsma</th>
      <td>O</td>
      <td>M</td>
      <td>R</td>
      <td>W</td>
      <td>NB</td>
      <td>WD</td>
      <td>ECO</td>
    </tr><tr>
      <th scope="row">bowler_to_batsma</th>
      <td>O</td>
      <td>M</td>
      <td>R</td>
      <td>W</td>
      <td>NB</td>
      <td>WD</td>
      <td>ECO</td>
    </tr>    
  </tbody>
</table>
</div>	
  <form action="/displayPieChart">
  <button class="btn btn-dark  my-2 my-sm-0" type="submit">Statistics</button>
  </form>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
</body>
</html>