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


public class DeleteBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public DeleteBusServlet() {
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
        try{
            Class.forName("com.mysql.jdbc.Driver");
            //String url="jdbc:mysql://localhost:3306/test";
            
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
            Statement st =conn.createStatement();
            String query="DELETE FROM `fare` WHERE `fare`.`fare_id` = '"+fareId+"'";
           if((st.executeUpdate(query)>0)){
                response.sendRedirect("DeleteShow.jsp");
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
