package com.skitmbus;
import java.io.IOException;
//import com.skitm.dao.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.skitm.dao.ReservationDao;
@SuppressWarnings("unused")
public class ReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ReservationServlet () {
        // TODO Auto-generated constructor stub
    }

	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException ,ServletException
	{
        PrintWriter out=response.getWriter();
		String Jsource=request.getParameter("source");
		String Jdestination=request.getParameter("destination");
		ReservationDao dao=new ReservationDao();
		if(dao.check(Jsource, Jdestination)) 
		{
			HttpSession session=request.getSession();
			session.setAttribute("src", Jsource);
			session.setAttribute("destion", Jdestination);
			response.sendRedirect("booking.jsp");
		}
		else {
			out.println("No buses available");
			
		}
	}
}
