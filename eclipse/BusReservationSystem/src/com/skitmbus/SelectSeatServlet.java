package com.skitmbus;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/noOfSeat")
public class SelectSeatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
     * Default constructor. 
     */
    public SelectSeatServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
        
               
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NullPointerException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession();
        String[] seatNo = request.getParameterValues("seatNo.");
        String username=(String)session.getAttribute("username");
        String fareId=(String)session.getAttribute("fareId");
       
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            //String url="jdbc:mysql://localhost:3306/test";
           
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
            Statement st =conn.createStatement();
            for (int i = 1; i < seatNo.length; i++) {
            	if(seatNo.length==1) {
            
            	String query="insert into `seats allocation`(Fare_id,username,seat_no) values('"+fareId+"','"+username+"','"+seatNo[0]+"')";
            	String query1="UPDATE `fare` join `seats allocation` SET `vacancy` = `vacancy`-1 WHERE `fare`.`fare_id` = `seats allocation`.`fare_id`";
       
            	if((st.executeUpdate(query)>0)&&(st.executeUpdate(query1)>0)) {	
        			session.setAttribute("fareId", fareId);
        			session.setAttribute("username", username);
        			session.setAttribute("seatNo.length", seatNo.length);
                   		response.sendRedirect("Payment.jsp");
            	 }else {out.println("sorry");}
            	  break;
            	}
            	else if(seatNo.length==2) {
            		String sql="insert into `seats allocation`(Fare_id,username,seat_no,seat_no1) values('"+fareId+"','"+username+"','"+seatNo[0]+"','"+seatNo[1]+"')";
                	String sql1="UPDATE `fare` join `seats allocation` SET `vacancy` = `vacancy`-2 WHERE `fare`.`fare_id` = `seats allocation`.`fare_id`";
             
                	if((st.executeUpdate(sql)>0)&&(st.executeUpdate(sql1)>0)) {
                		session.setAttribute("fareId", fareId);
                		session.setAttribute("username", username);
               			session.setAttribute("seatNo.length", seatNo.length);
               	
                		response.sendRedirect("Payment.jsp");
                	 }else {out.println("sorry");}
                	break;
            	}
            	else if(seatNo.length==3) {
            		String query2="insert into `seats allocation`(Fare_id,username,seat_no,seat_no1,seat_no2) values('"+fareId+"','"+username+"','"+seatNo[0]+"','"+seatNo[1]+"','"+seatNo[2]+"')";
                	String query3="UPDATE `fare`  join `seats allocation` SET `vacancy` = `vacancy`-3 WHERE `fare`.`fare_id` = `seats allocation`.`fare_id`";
                	
                	if((st.executeUpdate(query2)>0)&&(st.executeUpdate(query3)>0)) {
                		session.setAttribute("fareId", fareId);
                		session.setAttribute("username", username);
               			session.setAttribute("seatNo.length", seatNo.length);
               		 
                		response.sendRedirect("Payment.jsp");
                	 }else {out.println("sorry");}
                	break;
            	}
            	else if(seatNo.length==4) {
            		String sql2="insert into `seats allocation`(Fare_id,username,seat_no,seat_no1,seat_no2,seat_no3) values('"+fareId+"','"+username+"','"+seatNo[0]+"','"+seatNo[1]+"','"+seatNo[2]+"','"+seatNo[3]+"')";
                	String sql3="UPDATE `fare`  join `seats allocation` SET `vacancy` = `vacancy`-4 WHERE `fare`.`fare_id` = `seats allocation`.`fare_id`";
              
                	if((st.executeUpdate(sql2)>0)&&(st.executeUpdate(sql3)>0)) {
                		session.setAttribute("fareId", fareId);
                		session.setAttribute("username", username);
               			session.setAttribute("seatNo.length", seatNo.length);
               		 
                		response.sendRedirect("Payment.jsp");
                	 }else {out.println("sorry");}
                	break;
            	}
            	else if(seatNo.length==5) {
            		String query4="insert into `seats allocation`(Fare_id,username,seat_no,seat_no1,seat_no2,seat_no3,seat_no4) values('"+fareId+"','"+username+"','"+seatNo[0]+"','"+seatNo[1]+"','"+seatNo[2]+"','"+seatNo[3]+"','"+seatNo[4]+"')";
                	String query5="UPDATE `fare`  join `seats allocation` SET `vacancy` = `vacancy`-5 WHERE `fare`.`fare_id` = `seats allocation`.`fare_id`";
               
                	if((st.executeUpdate(query4)>0)&&(st.executeUpdate(query5)>0)) {
                		session.setAttribute("fareId", fareId);
                		session.setAttribute("username", username);
               			session.setAttribute("seatNo.length", seatNo.length);
               		 
                		response.sendRedirect("Payment.jsp");
                	 }else {out.println("sorry");}
                	break;
            	}
            	else if(seatNo.length==6) {
            		String sql4="insert into `seats allocation`(Fare_id,username,seat_no,seat_no1,seat_no2,seat_no3,seat_no4,seat_no5) values('"+fareId+"','"+username+"','"+seatNo[0]+"','"+seatNo[1]+"','"+seatNo[2]+"','"+seatNo[3]+"','"+seatNo[4]+"','"+seatNo[5]+"')";
                	String sql5="UPDATE `fare`  join `seats allocation` SET `vacancy` = `vacancy`-6 WHERE `fare`.`fare_id` = `seats allocation`.`fare_id`";
                	
                	if((st.executeUpdate(sql4)>0)&&(st.executeUpdate(sql5)>0)) {
                		session.setAttribute("fareId", fareId);
                		session.setAttribute("username", username);
               			session.setAttribute("seatNo.length", seatNo.length);
               		 
                		response.sendRedirect("Payment.jsp");
                	 }else {out.println("sorry");}
                	break;
            	}
            	else if(seatNo.length==7) {
            		String query6="insert into `seats allocation`(Fare_id,username,seat_no,seat_no1,seat_no2,seat_no3,seat_no4,seat_no5,seat_no6) values('"+fareId+"','"+username+"','"+seatNo[0]+"','"+seatNo[1]+"','"+seatNo[2]+"','"+seatNo[3]+"','"+seatNo[4]+"','"+seatNo[5]+"','"+seatNo[6]+"')";
                	String query7="UPDATE `fare`  join `seats allocation` SET `vacancy` = `vacancy`-7 WHERE `fare`.`fare_id` = `seats allocation`.`fare_id`";
                
                	if((st.executeUpdate(query6)>0)&&(st.executeUpdate(query7)>0)) {
                		session.setAttribute("fareId", fareId);
                		session.setAttribute("username", username);
               			session.setAttribute("seatNo.length", seatNo.length);
               		 
                		response.sendRedirect("Payment.jsp");
                	 }else {out.println("sorry");}
                	break;
            	}
            	else if(seatNo.length==8) {
            		String sql6="insert into `seats allocation`(Fare_id,username,seat_no,seat_no1,seat_no2,seat_no3,seat_no4,seat_no5,seat_no6,seat_no7) values('"+fareId+"','"+username+"','"+seatNo[0]+"','"+seatNo[1]+"','"+seatNo[2]+"','"+seatNo[3]+"','"+seatNo[4]+"','"+seatNo[5]+"','"+seatNo[6]+"','"+seatNo[7]+"')";
                	String sql7="UPDATE `fare`  join `seats allocation` SET `vacancy` = `vacancy`-8 WHERE `fare`.`fare_id` = `seats allocation`.`fare_id`";
          
                	if((st.executeUpdate(sql6)>0)&&(st.executeUpdate(sql7)>0)) {
                		session.setAttribute("fareId", fareId);
                		session.setAttribute("username", username);
               			session.setAttribute("seatNo.length", seatNo.length);
               		 
                		response.sendRedirect("Payment.jsp");
                	 }else {out.println("sorry");}
                	break;
            	}
            }
            
        }catch(Exception e){
            	e.printStackTrace();
                out.println(e);
            
        }
            out.close();
    		doGet(request, response);
    		
    	}

	
	
}
