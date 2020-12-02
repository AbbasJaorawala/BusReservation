package com.skitmbus;

import java.io.IOException;
import com.skitm.dao.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse rep) throws IOException ,ServletException
	{
		
		String uname=req.getParameter("uid");
		String pass=req.getParameter("pwd");
		LoginDao dao=new LoginDao();
		if(dao.check(uname, pass)) {
			HttpSession session=req.getSession();
			session.setAttribute("username", uname);
			rep.sendRedirect("Home.jsp");
		}
		else {
			rep.sendRedirect("Login Error.html");
		}
	}

}
