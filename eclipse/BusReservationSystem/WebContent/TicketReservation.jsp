<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./Index.css">
<title>Reservation</title>
      <link rel="icon" href="./busicon.png" type="image/png">
      <link rel="shortcut" href="./busicon.png" type="image/png">
      <meta name="viewport" content="width=device-width,intial-scale=2,shrink-to-fit=no">
      <meta name="name" content="Reservation ">
      <meta name="robots" ><style type="text/css">
body{
background-color: #34495e;
}
</style>
</head>
<body>
<%
   response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	response.setHeader("Expires","0");
      if(session.getAttribute("username")==null){
		response.sendRedirect("Login.html");
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
  <h1> Welcome to the online Bus booking System</h1>
</div>

  <div class="searchBar">
<form action="search" name="searchBar" >
<input type="text"  name="source" placeholder="From">
<input type="text" name="destination" placeholder="To" >
<input type="submit" value="search">
</div>
</form>
</body>
</html>