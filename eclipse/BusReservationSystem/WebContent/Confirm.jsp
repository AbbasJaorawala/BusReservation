<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
      <link rel="icon" href="./busicon.png" type="image/png">
      <link rel="shortcut" href="./busicon.png" type="image/png">
      <meta name="viewport" content="width=device-width,intial-scale=2,shrink-to-fit=no">
      <meta name="name" content="Confirmation ">
      <meta name="robots" >
      <link rel="stylesheet" href="./Confirm.css">
</head>
<body>

<div class="nav">
	<form method="post" action="Logout">
			<input type="submit" value="Logout">
	</form>
  <a href="Profile.jsp">${username}</a>
  <a href="Aboutus.jsp"class="active1">About us</a>
  <a href="TicketReservation.jsp">Ticket Reservation</a>
  <a href="Home.jsp" class="active" id="default open">Home</a>
</div>
<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	response.setHeader("Expires","0");
	if(session.getAttribute("username")==null){
		response.sendRedirect("Login.html");
	}
	else if(session.getAttribute("fareId")==null){
		response.sendRedirect("booking.jsp");
	}
	else if(session.getAttribute("transaction_id")==null){
		response.sendRedirect("Payment.jsp");
	}
%>
<h1><center>${username} your ticket is booked</center></h1>
</body>
</html>