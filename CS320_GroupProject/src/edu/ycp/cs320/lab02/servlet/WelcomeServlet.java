package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ycp.cs320.lab02.servlet.LoginServlet;

public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Welcome Servlet: doGet");	
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/login/welcome.jsp").forward(req, resp);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Welcome Servlet: doPost");	
		
		if (req.getParameter("logout") != null) {
			HttpSession session = req.getSession(true);
			session.invalidate();
			resp.sendRedirect("/project/index");
		}
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/login/welcome.jsp").forward(req, resp);
	}
}
