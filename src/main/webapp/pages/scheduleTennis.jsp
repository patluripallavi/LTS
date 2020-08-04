<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<h1>Tennis schedule</h1>  
    <form action="tennisschedule">
       <label for="schedule">Select matches by days</label>
    <select name="day" id="day">
       <option value="SUN">Sunday</option>
       <option value="MON">Monday</option>
       <option value="TUE">Tuesday</option>
       <option value="WED">Wednesday</option>
       <option value="THU">Thursday</option>
       <option value="FRI">Friday</option>
       <option value="SAT">Saturday</option>
    </select>
    <select name="month" id="month">
       <option value="JAN">January</option>
       <option value="FEB">February</option>
       <option value="MAR">March</option>
       <option value="APR">April</option>
       <option value="MAY">May</option>
       <option value="JUN">June</option>
       <option value="JUL">July</option>
       <option value="AUG">August</option>
       <option value="SEP">September</option>
       <option value="OCT">October</option>
       <option value="NOV">November</option>
       <option value="DEC">December</option>
    </select>
    <select name="date" id="date">
       <option value="01">01</option>
       <option value="02">02</option>
       <option value=03>03</option>
       <option value="04">04</option>
       <option value="05">05</option>
       <option value="06">06</option>
       <option value="07">07</option>
       <option value="08">08</option>
       <option value="09">09</option>
       <option value="10">10</option>
       <option value="11">11</option>
       <option value="12">12</option>
       <option value="13">13</option>
       <option value="14">14</option>
       <option value="15">15</option>
       <option value="16">16</option>
       <option value="17">17</option>
       <option value="18">18</option>
       <option value="19">19</option>
       <option value="20">20</option>
       <option value="21">21</option>
       <option value="22">22</option>
       <option value="23">23</option>
       <option value="24">24</option>
       <option value="25">25</option>
       <option value="26">26</option>
       <option value="27">27</option>
       <option value="28">28</option>
       <option value="29">29</option>
       <option value="30">30</option>
       <option value="31">31</option>              
    </select>
    <input type="text" name="year" id="year" placeholder="year">   
    <input type="submit" value="submit">
    </form>

</body>
</html>