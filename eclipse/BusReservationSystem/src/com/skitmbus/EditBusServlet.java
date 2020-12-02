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

public class EditBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public EditBusServlet() {
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
        String fareId=request.getParameter("id");
        String field =request.getParameter("field");
        String textField=request.getParameter("textField");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            //String url="jdbc:mysql://localhost:3306/test";
            
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
            Statement st =conn.createStatement();
            String sql="UPDATE `fare` SET "+field+" = '"+textField+"' WHERE `fare`.`fare_id` ='"+fareId+"'";
            if((st.executeUpdate(sql)>0)){
                response.sendRedirect("showBus.jsp");
            }
            else out.println("sorry");
            
            
            }catch(Exception e){
            	e.printStackTrace();
                out.println(e);
            }
            out.close();
    		doGet(request, response);
    	}

}
