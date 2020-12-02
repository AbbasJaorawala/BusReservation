<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./Profile.css">
<title>PROFILE</title>
      <link rel="icon" href="./busicon.png" type="image/png">
      <link rel="shortcut" href="./busicon.png" type="image/png">
      <meta name="viewport" content="width=device-width,intial-scale=2,shrink-to-fit=no">
      <meta name="name" content="PROFILE">
      <meta name="robots" ></head>
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
<div class=details>
<h1>BOOKING HISTORY</h1>
<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	response.setHeader("Expires","0");

	if(session.getAttribute("username")==null){
		response.sendRedirect("Login.html");
	}
%>
<%
	String username=(String)session.getAttribute("username");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
	String query2="Select `source`,`destination`,`journey_date`,`journey_time` from fare join `seats allocation` where `seats allocation`.username=? and `seats allocation`.fare_id=fare.fare_id";
	PreparedStatement stat=conn.prepareStatement(query2);
	stat.setString(1,username);
	ResultSet res=stat.executeQuery();
%>
<% while(res.next())
{
%>
<ol>
<li>From:<%=res.getString(1) %></li>
<li>To  :<%=res.getString(2) %></li>
<li>Date:<%=res.getString(3) %></li>
<li>Time:<%=res.getString(4) %></li>
</ol>
<% 		
}	
%>
</div>
</body>
</html>