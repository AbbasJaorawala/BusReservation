<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./FAQs.css">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("username")==null){
		response.sendRedirect("Login.html");
	}
%>
<div class="nav">
  <a href="Profile.jsp">Profile</a>
  <a href="Aboutus"class="active1">About us</a>
  <a href="Contactus.html" class="active2">Contact us</a>
  <a href="FAQs.html">FAQs</a>
  <a href="Bus.jsp">Bus</a>
  <a href="Reservation.html">Ticket Reservation</a>
  <a href="#home" class="active" id="default open">Home</a>
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
Q: What are the benefits of booking a bus ticket through redBus?</span>
</div>
<div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">
A: There are numerous benefits to booking a bus ticket online through redBus such as: 1) Book bus tickets with ease from the comfort of your home or workspace. 2) Quick and easy cancellation and rescheduling options. 3) Exclusive offers and cashback options. 4) M-ticket and e-ticket facilities are available. 5) Wide variety of bus operators, types of buses and routes to choose from. 5) Impeccable customer service. 6) Lower prices. Visit the redBus website or download the app to see the benefits of making a bus ticket booking.
</div>
</div>
</div>
<div class="D119_qa" itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<div itemprop="name" class="D119_question">
<span>
Q: Can I cancel my bus ticket?
</span>
</div>
<div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">
A: Yes, you can. All you have to do is log in to the redBus website or app and follow the cancellation procedure. You can even call the customer care number of redBus to get your ticket canceled.
</div>
</div>
</div>
<div class="D119_qa" itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<div itemprop="name" class="D119_question">
<span>Q: Can I reschedule my bus ticket?</span>
</div>
<div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">A: First, visit https://www.redbus.in/reschedule and then search for your bus ticket by entering your ticket number and registered email ID. Verify your ticket details and select the date to reschedule your journey. Select a bus operator, verify every detail, and make your payment if any difference in bus ticket prices needs to be cleared.</div>
</div>
</div>
<div class="D119_qa" itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<div itemprop="name" class="D119_question">
<span>Q: Do I need a print out of my bus ticket to board a bus?</span>
</div>
<div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">A: No, you do not. You can present your M-ticket or e-ticket on your mobile device before boarding the bus. It is advisable to carry a government-issued ID to verify your identity before boarding the bus.
</div>
</div>
</div>
<div class="D119_qa" itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<div itemprop="name" class="D119_question">
<span>Q: Can I book an RTC bus ticket on redBus?</span>
</div><div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">
A: Yes, you can. redBus has extended its bus booking services to a number of RTCs in India. Some of these RTCs are Andhra Pradesh State Road Transport Corporation (APSRTC), Assam State Transport Corporation (ASTC), Bihar State Tourism Development Corporation (BSTDC), Gujarat State Road Transport Corporation (GSRTC), Himachal Road Transport Corporation (HRTC), Jammu and Kashmir State Road Transport Corporation (JKSRTC), Kerala RTC, Kadamba Transport Corporation (KTCL), Maharashtra State Road Transport Corporation (MSRTC), Odisha State Road Transport Corporation (OSRTC), Patiala and East Punjab States Union (PEPSU), Puducherry Road Transport Corporation (PRTC), Rajasthan State Road Transport Corporation (RSRTC), South Bengal State Transport Corporation (SBSTC), Tamil Nadu State Transport Corporation (TNSTC), Uttar Pradesh State Road Transport Corporation (UPSRTC), Uttarakhand Transport Corporation (UTC), West Bengal Transport Corporation [WBTC (CTC).
</div>
</div>
</div>
<div class="D119_qa" itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<div itemprop="name" class="D119_question">
<span>Q: What does a PNR number on my bus ticket mean?</span>
</div>
<div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">A: PNR stands for 'Passenger Name Record.' This is generally represented as a 10-digit number on your M-ticket or E-ticket.</div>
</div>
</div>
<div class="D119_qa" itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<div itemprop="name" class="D119_question">
<span>Q: Is it safe to travel by bus during the COVID-19 pandemic?</span>
</div>
<div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">
A: redBus, along with bus operators under the redBus banner, have been doing a lot when it comes to upholding the safety standards that have been set by the Government of India and the MoHFW. Passengers can make their bus booking through the redBus platform and travel safely with redBus.
</div>
</div>
</div>
<div class="D119_qa" itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<div itemprop="name" class="D119_question">
<span>Q: What is Safety+, and what does it have to do with redBus?</span>
</div>
<div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">
A: Safety+ is a new feature that customers can look for when making a bus ticket booking on the redBus platform. Bus operators follow strict safety procedures such as sanitizing buses after every trip, staff with masks, temperate check of both passengers and bus staff before boarding the bus, and much more. Scroll up to learn more about Safety+. Look for the Safety+ icon, which is denoted by a shield with a "plus" sign in the middle when you book your bus tickets online with redBus.
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
<div itemprop="name" class="D119_question"><span>Q: I need to travel with a few family members to my hometown, but COVID-19 is a concern. Can I rent a bus solely for my family?</span>
</div>
<div class="D119_answer" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
<div itemprop="text">
A: Yes, you can. You can rent a bus depending on your seating requirement through Bus Hire, redBus. You can even rent a car of your choice through Bus Hire.
</div>
</div>
</div>
</div>
</div>
</body>
</html>