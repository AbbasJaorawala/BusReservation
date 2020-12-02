package com.skitmbus;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SeatRedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SeatRedirectServlet () {
        // TODO Auto-generated constructor stub
    }
    public void service(HttpServletRequest request,HttpServletResponse response) throws IOException ,ServletException
	{
        PrintWriter out=response.getWriter();
		String fareId=request.getParameter("id");
		int fare=Integer.parseInt(fareId);
		if(fare==1) 
		{
			HttpSession session=request.getSession();	
			session.setAttribute("fareId", fareId);
			response.sendRedirect("SeatSelector.jsp");
		}
		else if(fare==2) {
			HttpSession session=request.getSession();	
			session.setAttribute("fareId", fareId);
			response.sendRedirect("SeatSelection1.jsp");
			
		}
		else if(fare==3) {
			HttpSession session=request.getSession();	
			session.setAttribute("fareId", fareId);
			response.sendRedirect("SeatSelection2.jsp");
		}
		else if(fare==4) {
			HttpSession session=request.getSession();	
			session.setAttribute("fareId", fareId);
			response.sendRedirect("SeatSelection3.jsp");
		}
		else if(fare==5) {
			HttpSession session=request.getSession();	
			session.setAttribute("fareId", fareId);
			response.sendRedirect("SeatSelection4.jsp");
		}
		else if(fare==6) {
			HttpSession session=request.getSession();	
			session.setAttribute("fareId", fareId);
			response.sendRedirect("SeatSelection5.jsp");
			
		}
		else if(fare==7) {
			HttpSession session=request.getSession();	
			session.setAttribute("fareId", fareId);
			response.sendRedirect("SeatSelection6.jsp");
		}
		else if(fare==8) {
			HttpSession session=request.getSession();	
			session.setAttribute("fareId", fareId);
			response.sendRedirect("SeatSelection7.jsp");
		}
		else if(fare==9) {
			HttpSession session=request.getSession();	
			session.setAttribute("fareId", fareId);
			response.sendRedirect("SeatSelection8.jsp");
		}
		else if(fare==10) {
			HttpSession session=request.getSession();	
			session.setAttribute("fareId", fareId);
			response.sendRedirect("SeatSelection9.jsp");
		}
		else if(fare==11) {
			HttpSession session=request.getSession();	
			session.setAttribute("fareId", fareId);
			response.sendRedirect("SeatSelection10.jsp");
		}
		else if(fare==12) {
			HttpSession session=request.getSession();	
			session.setAttribute("fareId", fareId);
			response.sendRedirect("SeatSelection12.jsp");
		}
	}
    
	
}
