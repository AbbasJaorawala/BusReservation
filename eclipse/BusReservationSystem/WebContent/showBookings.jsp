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
<title>Show Booking</title>
      <link rel="icon" href="./busicon.png" type="image/png">
      <link rel="shortcut" href="./busicon.png" type="image/png">
      <meta name="viewport" content="width=device-width,intial-scale=2,shrink-to-fit=no">
      <meta name="name" content="Show Booking ">
      <meta name="robots" ><link rel="stylesheet" href="./showBookings.css">
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Expires","0");
	if(session.getAttribute("username")==null){
		response.sendRedirect("Index.html");
	}
%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
String sql="Select Seats_id,amount,username,seat_no,seat_no1,seat_no2,seat_no3,seat_no4,seat_no5,seat_no6,seat_no7 from `seats allocation`join`fare` on `seats allocation`.fare_id=fare.fare_id";
PreparedStatement st=conn.prepareStatement(sql);
ResultSet rs=st.executeQuery();
%>
<form method="post" action="Logout">
			<input type="submit" value="Logout">
		</form>
<div><center><h1>Bookings</h1></center></div>
<table id="booking">
<tr><th>S.no</th><th>Amount</th><th>Username</th><th>Seat_no</th><th>Seat_no1</th><th>Seat_no2</th><th>Seat_no3</th><th>Seat_no4</th><th>Seat_no5</th><th>Seat_no6</th><th>Seat_no7</th></tr>
<% while(rs.next())
{
%>
<tr><td><%=rs.getInt(1) %></td><td><%=rs.getInt(2) %></td><td><%= rs.getString(3) %></td><td><% if(rs.getInt(4)!=0){out.println(rs.getInt(4));}%></td><td><% if(rs.getInt(5)!=0){out.println(rs.getInt(5));}%></td><td><% if(rs.getInt(6)!=0){out.println(rs.getInt(6));}%></td><td><% if(rs.getInt(7)!=0){out.println(rs.getInt(7));}%></td><td><% if(rs.getInt(9)!=0){out.println(rs.getInt(8));}%></td><td><% if(rs.getInt(9)!=0){out.println(rs.getInt(9));}%></td><td><% if(rs.getInt(10)!=0){out.println(rs.getInt(10));}%></td><td><% if(rs.getInt(11)!=0){out.println(rs.getInt(11));}%></td></tr>
<%
}
%>
</table>
</body>
</html>