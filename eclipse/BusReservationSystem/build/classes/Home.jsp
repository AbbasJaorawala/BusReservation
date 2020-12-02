<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./Index.css">
<title>Online Bus Reservation System</title>
      <link rel="icon" href="./busicon.png" type="image/png">
      <link rel="shortcut" href="./busicon.png" type="image/png">
      <meta name="viewport" content="width=device-width,intial-scale=2,shrink-to-fit=no">
      <meta name="name" content="Online Bus Reservation System ">
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
  <a href="Home.jsp" class="active" id="default open">Home</a>
</div>
<div>
  <h1> Welcome to the online Bus booking System</h1>
</div>
<div>
<img class="mySlides" src="./bus1.jpg">
<img class="mySlides" src="./businside.jpg">
<img class="mySlides" src="./bus2.jpg">
<img class="mySlides" src="./inside bus.jpg">
<img class="mySlides" src="./sleeperBus.jpg">
</div>
<div class="D119_main D119_container D119_qacontainer" itemscope="" itemtype="https://schema.org/FAQPage">
<div class="D119_qa_heading">
<div>
<h2 class="D119_qa_heading_info"> FAQs </h2>
</div>
</div>
<div>
<div class="D119_qa" itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<div itemprop="name" class="D119_question">
<span>
Q: What are the benefits of booking a bus ticket through this website?</span>
</div>
<div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">
A: There are numerous benefits to booking a bus ticket online through this website such as: 1) Book bus tickets with ease from the comfort of your home or workspace. 2) M-ticket and e-ticket facilities are available. 3) types of buses and routes to choose from. 4) Impeccable customer service. 
</div>
</div>
</div>
<div class="D119_qa" itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question"><div itemprop="name" class="D119_question">
<span>Q: Do I need a print out of my bus ticket to board a bus?</span>
</div>
<div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">A: No, you do not. You can present your M-ticket or e-ticket on your mobile device before boarding the bus. It is advisable to carry a government-issued ID to verify your identity before boarding the bus.
</div>
</div>
</div>
<div class="D119_qa" itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<div itemprop="name" class="D119_question">
<span>Q: Is it safe to travel by bus during the COVID-19 pandemic?</span>
</div>
<div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">
A: Have been doing a lot when it comes to upholding the safety standards that have been set by the Government of India and the MoHFW. Passengers can make their bus booking through the redBus platform and travel safely .
</div>
</div>
</div>
<div class="D119_qa" itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question"><div itemprop="name" class="D119_question">
<span>Q: Is it safer to travel by bus or by plane during COVID-19?</span>
</div>
<div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">
A: Though a flight might save some travel time as it does go from Point A to Point B a lot faster than a bus, it is advisable to travel by bus instead. If a passenger wishes to travel via airplane, they would have to get to the terminal early and wait for a long time before boarding a flight. There is a risk of infection as the air in the plane is circulated within the sealed tube and could pose a danger if an asymptomatic passenger does carry the virus onboard. With a bus, the passenger can wait in their vehicle before boarding the bus, and therefore, crowding at a boarding point is significantly reduced. Passengers can even keep their windows open to ensure that fresh air is circulated in the bus. Measures followed on Safety+ buses considerably minimize the chance of contracting the virus on a bus than an airplane.
</div>
</div>
</div>
<div class="D119_qa" itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
</div>
</div>

<script type="text/javascript">
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 6000); // Change image every 2 seconds
}</script>

</body>
</html>