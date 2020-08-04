<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Cricket schedule</h1>
    <!-- <form action="cs"> -->
 
       <label>From Date</label>
       <input type="date" name="fromDate" id="datePicker" min="1997-01-01" max="2030-12-31" />
     
      <label>To Date</label>
       <input type="date" name="toDate" />
        
       <input type="submit"  onclick="myFunction()" value="search"> 
       
      
     
   <!--  </form> -->


</body>


<script type="text/javascript">



function myFunction(){

	
alert("000");

var fromDate="01-08-2020";

var toDate="02-08-2020";

alert(fromDate);

alert(toDate);

$.get("/cs",
	    {
	fromDate: fromDate,
	toDate: toDate
	    },
	    function(data,status){
	      alert("Data: " + data + "\nStatus: " + status);
	    });
	
}


	 




</script>


</html>