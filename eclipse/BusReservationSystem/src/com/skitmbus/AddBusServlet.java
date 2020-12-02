package com.skitmbus;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddBus")
public class AddBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AddBusServlet() {
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
        String busId=request.getParameter("busid");
        String source=request.getParameter("source");
        String destination=request.getParameter("destination");
        String date=request.getParameter("date");
        String amount=request.getParameter("price");
        String vacancy=request.getParameter("vacancy");
        String time=request.getParameter("time");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            //String url="jdbc:mysql://localhost:3306/test";
            
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
            Statement st =conn.createStatement();
            String query="insert into fare values ('"+2+"','"+amount+"','"+busId+"','"+source+"','"+destination+"','"+vacancy+"','"+date+"','"+time+"')";
            if(st.executeUpdate(query)>0){
                response.sendRedirect("AdminHome.jsp");
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

