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
<link rel="stylesheet" href="./booking2.css">
<meta charset="ISO-8859-1">
<title> Bus Reservation </title>
      <link rel="icon" href="./busicon.png" type="image/png">
      <link rel="shortcut" href="./busicon.png" type="image/png">
      <meta name="viewport" content="width=device-width,intial-scale=2,shrink-to-fit=no">
      <meta name="name" content=" Bus Reservation  ">
      <meta name="robots" >
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
  <a href="TicketReservation.jsp">Ticket Reservation</a>
  <a href="#home" class="active" id="default open">Home</a>
</div>

<h1>Booking</h1>
<%
	String Journey_source=(String)session.getAttribute("src");
    String Journey_destination=(String)session.getAttribute("destion");
    Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
	String sql="Select `fare_id`,`source`,`destination`,`journey_date`,`journey_time`,`amount`,`bus_type` from fare join bus on bus.bus_id=fare.bus_id and `source`=? and `destination`=?;";
	PreparedStatement st=conn.prepareStatement(sql);
	st.setString(1, Journey_source);
	st.setString(2, Journey_destination);
	ResultSet rs=st.executeQuery();
%>
<table id=book>
<tr><th>Sno.</th><th>Boarding</th><th>Destination</th><th>Date</th><th>Time</th><th>Price</th><th>Bus Type</th></tr>
<% while(rs.next())
{
%>
<tr><td><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%= rs.getString(3) %></td><td><%= rs.getString(4) %></td><td><%= rs.getString(5) %></td><td><%= rs.getString(6) %></td><td><%= rs.getString(7) %></td></tr>
<%
}
%>
<form method="post" action="seatSearch" class="seatsBook">
<input type="number" name="id" placeholder="Sno."><br>
<input type="submit" value="Select Seat">
</form>
</table>
</div>
</body>
</html>