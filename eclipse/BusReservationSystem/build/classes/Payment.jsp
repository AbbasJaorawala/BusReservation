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
<link rel="stylesheet" href="./Payment.css">
<title>BILL</title>
      <link rel="icon" href="./busicon.png" type="image/png">
      <link rel="shortcut" href="./busicon.png" type="image/png">
      <meta name="viewport" content="width=device-width,intial-scale=2,shrink-to-fit=no">
      <meta name="name" content="BILL">
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
		
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Expires","0");
	if(session.getAttribute("username")==null){
		response.sendRedirect("Login.html");
	}
	else if(session.getAttribute("fareId")==null){
		response.sendRedirect("booking.jsp");
	}
	/*else if(session.getAttribute("noOfSeats")==
			null){
		response.sendRedirect("booking.jsp");
	}*/
%>
<h1><center>BILL</center></h1>
<div class="bill">
<strong>Pay to this number 8770130741 through paytm,phonepe,gpay</strong>
<%

int noOfSeats=(Integer)session.getAttribute("seatNo.length");
String username=(String)session.getAttribute("username");
String fareId=(String)session.getAttribute("fareId");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
String query1="select `firstname`,`lastname`,`username` from profile where username=?";
String query2="select `source`,`destination`,`journey_date`,`journey_time`,`amount` from fare where `fare_id`=?";
String query3="select  `seat_no`,`seat_no1`,`seat_no2`,`seat_no3`,`seat_no4`,`seat_no5`,`seat_no6`,`seat_no7` from `seats allocation` where  fare_id=? and username=?";
PreparedStatement st=conn.prepareStatement(query1);
PreparedStatement statement=conn.prepareStatement(query2);
PreparedStatement stmt=conn.prepareStatement(query3);
st.setString(1, username);
statement.setString(1, fareId);
stmt.setString(1, fareId);
stmt.setString(2,username);
ResultSet rs=st.executeQuery();
ResultSet result=statement.executeQuery();
ResultSet result1=stmt.executeQuery();
while(rs.next())
{
%>
<ul>
<li>FirstName: <%=rs.getString(1) %></li>
<li>LastName : <%=rs.getString(2) %></li>
<li>Username : <%=rs.getString(3) %></li>
<%
}
%>
<% while(result.next())
{
%>
<li>Boarding point:<%=result.getString(1) %></li>
<li>Dropping point:<%=result.getString(2) %></li>
<li>Date		  :<%=result.getString(3) %></li>
<li>Time          :<%=result.getString(4) %></li>
<% int TotalAmount=result.getInt(5)*noOfSeats; %>
<li>Amount        :<%=TotalAmount %></li>
<%
}
%>
<% while(result1.next()) 
{
%>
<li>Seats :<% if(result1.getInt(1)!=0){out.println(result1.getInt(1));}%>   <% if(result1.getInt(2)!=0){out.println(result1.getInt(2));}%>  <% if(result1.getInt(3)!=0){out.println(result1.getInt(3));}%>  <% if(result1.getInt(4)!=0){out.println(result1.getInt(4));}%>  <% if(result1.getInt(5)!=0){out.println(result1.getInt(5));}%>  <% if(result1.getInt(6)!=0){out.println(result1.getInt(6));}%>  <% if(result1.getInt(7)!=0){out.println(result1.getInt(7));}%>  <% if(result1.getInt(8)!=0){out.println(result1.getInt(8));}%></li>

<%
}
%>
</ul>
<form action="pay" method="post" onSubmit="return validate()">
<input type="number" name="transactionId" id="upiId" placeholder="UPI Transaction ID"><br>
<input type="submit" value="pay">
</form>
<script src="./payment.js"></script>
</div>
</body>
</html>