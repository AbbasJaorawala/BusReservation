<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./AddBus.css">
<title>Add New Bus</title>
      <link rel="icon" href="./busicon.png" type="image/png">
      <link rel="shortcut" href="./busicon.png" type="image/png">
      <meta name="viewport" content="width=device-width,intial-scale=2,shrink-to-fit=no">
      <meta name="name" content="Add New Bus">
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
<div>
  <form action="AddBus" method="post" class="box">
    <h1>ADD BUS</h1>
    <input type="number" name="busid" placeholder="Bus id"><br>
    <input type="text" name="source" placeholder="Source"><br>
    <input type="text" name="destination" placeholder="Destination"><br>
    <input type="text" name="date" placeholder="Date"><br>
    <input type="time" name="time" placeholder="time"><br>
    <input type="number" name="price" placeholder="Fare"><br>
    <input type="number" name="vacancy" placeholder="Vacancy"><br>
    <input type="submit" value="ADD">
</div>
</body>
</html>