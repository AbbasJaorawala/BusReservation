<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./AdminHome.css">
</head>
<body>
 <%
 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	response.setHeader("Expires","0");
	if(session.getAttribute("username")==null){
		response.sendRedirect("AdminLogin.html");
	}
%>

		<h1>
			WELCOME ADMINISTRATOR
		</h1>
		
		
		<form method="post" action="AddBus.jsp">
			<input type="submit" value="Add Bus">
		</form>
		<form method="post" action="DeleteShow.jsp">
			<input type="submit" value="Delete Bus">
		</form>
		<form method="post" action="showBus.jsp">
			<input type="submit" value="Show and Edit Bus">
		</form>
		<form method="post" action="showBookings.jsp">
			<input type="submit" value="Show Passenger Bookings">
		</form>
		<form method="post" action="Logout">
			<input type="submit" value="Logout">
		</form>

</body>
</html>