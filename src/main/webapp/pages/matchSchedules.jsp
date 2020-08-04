<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
td {
    border: solid 2px lightgrey;
}
</style>
<body>
<table style="border: 5px solid #990000; border-collapse: collapse">
  <tr>
  
    <th>Match Schedule</th>
  </tr>
  <tr>
   <td>Team</td>
    <td>${schedule.country_name}</td>
    
    
 
    
   
  </tr>
  <tr>
</table>

<script type="text/javascript">

$(document).ready(function() {
	
	  $.getJSON('/cs', function(persons) {
	    persons.each(function(i, person) {

		    alert(person);
	    });
	  });
	});

</script>

</body>
</html>