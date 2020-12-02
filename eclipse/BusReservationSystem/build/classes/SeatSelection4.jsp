<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Seat</title>
      <link rel="icon" href="./busicon.png" type="image/png">
      <link rel="shortcut" href="./busicon.png" type="image/png">
      <meta name="viewport" content="width=device-width,intial-scale=2,shrink-to-fit=no">
      <meta name="name" content="Select Seat ">
      <meta name="robots" ><link rel="stylesheet" href="./selectSeat.css">
</head>
<!-- partial:index.partial.html -->
<body onload="onLoaderFunc()">
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Expires","0");

	if(session.getAttribute("username")==null){
		response.sendRedirect("Login.html");
	}
	else if(session.getAttribute("fareId")==null){
		response.sendRedirect("booking.jsp");
	}
%>
<div class="nav">
	<form method="post" action="Logout">
			<input type="submit" value="Logout">
		</form>
  <a href="Profile.jsp">${username}</a>
  <a href="Aboutus.jsp"class="active1">About us</a>
  <a href="TicketReservation.jsp" class="active">Ticket Reservation</a>
  <a href="Home.jsp" id="default open">Home</a>
</div>
<div>
<%
	String fareId=(String)session.getAttribute("fareId");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
	String query2="Select `seat_no`,`seat_no1`,`seat_no2`,`seat_no3`,`seat_no4`,`seat_no5`,`seat_no6`,`seat_no7` from  `seats allocation` where `seats allocation`.fare_id=? ";
	PreparedStatement stat=conn.prepareStatement(query2);
	stat.setString(1,fareId);
	ResultSet res=stat.executeQuery();
%>
can't select this seat:
<%
	while(res.next()){
%>
<% if(res.getInt(1)!=0){out.println(res.getInt(1));}%>  <% if(res.getInt(2)!=0){out.println(res.getInt(2));}%> <% if(res.getInt(3)!=0){out.println(res.getInt(3));}%> <% if(res.getInt(4)!=0){out.println(res.getInt(4));}%> <% if(res.getInt(5)!=0){out.println(res.getInt(5));}%> <% if(res.getInt(6)!=0){out.println(res.getInt(6));}%> <% if(res.getInt(7)!=0){out.println(res.getInt(7));}%> <% if(res.getInt(8)!=0){out.println(res.getInt(8));}%>
<%
	}
%>
</div>
<div class="inputForm">
<center>
<form method="post" action="noOfSeat" onSubmit="returnValidate()">
  Number of Seats *: <input type="number" id="Numseats" required>
  <br/><br/>
  <button onclick="takeData()"> Start Selecting</button>
  
</center>
</div>
  

<div class="seatStructure">
<center>
  
<table id="seatsBlock">
 <p id="notification"></p>
  <tr>
    <td colspan="14"></td>
    <td rowspan="20">
      <div class="smallBox greenBox">Selected Seat</div> <br/>
      <div class="smallBox redBox">Reserved Seat</div><br/>
      <div class="smallBox emptyBox">Empty Seat</div><br/>
    </td>
    
    <br/>
  </tr>  
<tr>
    <td>1</td>
    <td><input type="checkbox" name="seatNo."class="seats" value="1"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="2"></td>
  <td class="seatGap"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="3"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="4"></td>
  </tr>
  
  <tr>
    <td>2</td>
    <td><input type="checkbox" name="seatNo."class="seats" value="5"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="6"></td>
    <td></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="7"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="8"></td>

  </tr>

  <tr>
    <td>3</td>
    <td><input type="checkbox" name="seatNo."class="seats" value="9"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="10"></td>
    <td></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="11"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="12"></td>
    
</tr>
  
<tr>
    <td>4</td>
    <td><input type="checkbox" name="seatNo."class="seats" value="13"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="14"></td>
  <td></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="15"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="16"></td>
</tr>
  
<tr>
    <td>5</td>
    <td><input type="checkbox" name="seatNo."class="seats" value="17"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="18"></td>
  <td></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="19"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="20"></td>
</tr>
<tr>
    <td>6</td>
    <td><input type="checkbox" name="seatNo."class="seats" value="21"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="22"></td>
  <td></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="23"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="24"></td>
</tr>
  
<tr>
    <td>7</td>
    <td><input type="checkbox" name="seatNo."class="seats" value="25"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="26"></td>
  <td></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="27"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="28"></td>
</tr>
  
<tr>
    <td>8</td>
    <td><input type="checkbox" name="seatNo."class="seats" value="29"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="30"></td>
  <td></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="31"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="32"></td>
</tr>
  
<tr>
    <td>9</td>
    <td><input type="checkbox" name="seatNo."class="seats" value="33"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="34"></td>
  <td></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="35"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="36"></td>
</tr>
  
<tr>
    <td>10</td>
    <td><input type="checkbox" name="seatNo."class="seats" value="37"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="38"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="39"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="40"></td>
    <td><input type="checkbox" name="seatNo."class="seats" value="41"></td>
</tr>
</table>
<input type="submit" value="payment>>">
</form>  
<br/><button onclick="updateTextArea()">Confirm Selection</button>
</center>
</div>
      
<br/><br/>

<div class="displayerBoxes">
<center>
  <table class="Displaytable">
  <tr>
    <th>Number of Seats</th>
    <th>Seats</th>
    <th>Amount</th>
  </tr>
  <tr>
    
    <td><textarea id="NumberDisplay"></textarea></td>
    <td><textarea id="seatsDisplay"></textarea></td>
    <td><textarea id="amountDisplay"></textarea></td>
  </tr>
</table>

</center>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js'></script><script  src="./selectSeat4.js"></script>


</body>
</html>