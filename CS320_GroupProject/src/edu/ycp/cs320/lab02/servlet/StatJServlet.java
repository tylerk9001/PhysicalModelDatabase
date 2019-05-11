package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ycp.cs320.lab02.controller.UserAccountController;
import edu.ycp.cs320.lab02.model.UserAccount;

public class StatJServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Stat_J Servlet: doGet");	
		HttpSession session = req.getSession();
		
		String test = req.getQueryString().trim();
		test = test.replaceAll("%20", " ");
		
		session.setAttribute("projectName", test);
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/categories/statics/stat-j.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Stat_J Servlet: doPost");
		
		// now call the JSP to render the new page
		req.getRequestDispatcher("/_view/categories/statics/stat-j.jsp").forward(req, resp);
	}
}
