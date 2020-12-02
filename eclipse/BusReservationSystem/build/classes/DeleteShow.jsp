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
<link rel="stylesheet" href="./deleteShow.css">
<title>Delete Bus</title>
      <link rel="icon" href="./busicon.png" type="image/png">
      <link rel="shortcut" href="./busicon.png" type="image/png">
      <meta name="viewport" content="width=device-width,intial-scale=2,shrink-to-fit=no">
      <meta name="name" content="Delete Bus  ">
      <meta name="robots" >
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Expires","0");
	if(session.getAttribute("username")==null){
		response.sendRedirect("AdminLogin.html");
	}
%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
String sql="Select `fare_id`,`source`,`destination`,`journey_date`,`journey_time`,`amount`,`bus_type` from fare join bus on bus.bus_id=fare.bus_id";
PreparedStatement st=conn.prepareStatement(sql);
ResultSet rs=st.executeQuery();
%>
<table id=show>
<tr><th>S.no</th><th>Source</th><th>Destination</th><th>Date</th><th>Time</th><th>Amount</th><th>Bus Type</th></tr>
<% while(rs.next())
{
%>
<tr><td><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%= rs.getString(3) %></td><td><%= rs.getString(4) %></td><td><%= rs.getString(5) %></td><td><%= rs.getString(6) %></td><td><%= rs.getString(7) %></td></tr>

<%
}
%>
</table>
<p class="logout">
<form method="post" action="Logout">
			<input type="submit" value="Logout">
		</form>
</p>
<p>
<form action="Delete" name="delete" method="post">
<input type="text" name="id" placeholder="Enter S.no"><br>
<input type="submit" value="delete">
</form>
</p>
</body>
</html>