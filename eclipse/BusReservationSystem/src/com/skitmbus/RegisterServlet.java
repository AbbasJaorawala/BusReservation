package com.skitmbus;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.skitm.dao.RegisterDao;
import com.skitm.db.Register;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        int uid=4;
        uid++;
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String age=request.getParameter("age");
        String mno=request.getParameter("mno");
        String email=request.getParameter("email");
        String username=request.getParameter("uid");
        String password=request.getParameter("pwd");
        String address=request.getParameter("address");   
        String gender=request.getParameter("gender");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            //String url="jdbc:mysql://localhost:3306/test";
            
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
            Statement st =conn.createStatement();
            String query="insert into register(`username`,`firstname`,`lastname`,`gender`,`age`,`address`,`phone_no`,`email`,`password`) values ('"+username+"','"+fname+"','"+lname+"','"+gender+"','"+age+"','"+address+"','"+mno+"','"+email+"','"+password+"')";
            String query1="insert into login (`username`,`password`) values ('"+username+"','"+password+"')";
            String query2="insert into profile (`username`,`firstname`,`lastname`,`gender`,`age`,`phone_no`,`email`,`address`) values ('"+username+"','"+fname+"','"+lname+"','"+gender+"','"+age+"','"+mno+"','"+email+"','"+address+"')";
            if((st.executeUpdate(query)>0)&&(st.executeUpdate(query1)>0)&&(st.executeUpdate(query2)>0)){
                response.sendRedirect("Login.html");
            }
            else out.println("sorry");
            }catch(Exception e){
            	e.printStackTrace();
            	out.println(e);
            	//response.sendRedirect("Index.html");
            }
            out.close();
    		doGet(request, response);
    	}

}
