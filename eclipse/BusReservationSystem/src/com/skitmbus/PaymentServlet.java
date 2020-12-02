package com.skitmbus;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PaymentServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public PaymentServlet() {}
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession();
        String transactionId=request.getParameter("transactionId");
        String username=(String)session.getAttribute("username");
        String fareId=(String)session.getAttribute("fareId");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            //String url="jdbc:mysql://localhost:3306/test";
           
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
            Statement st =conn.createStatement();
            String queries="insert into `transactions`(`username`,`fare_id`,`transaction_id`) values('"+username+"','"+fareId+"','"+transactionId+"')";
            if((st.executeUpdate(queries)>0)) { 
        		response.sendRedirect("Confirm.jsp");
        		session.setAttribute("transaction_id",transactionId );
        	 }else {out.println("sorry");}
        }catch(Exception e){
        	e.printStackTrace();
            out.println(e);
        
        }       
	}
}