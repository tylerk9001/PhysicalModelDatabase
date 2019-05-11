package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ycp.cs320.lab02.controller.UserAccountController;
import edu.ycp.cs320.lab02.model.UserAccount;

public class UploadedProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Uploaded Servlet: doGet");	
		HttpSession session = req.getSession();
		String test = req.getRequestURI() + req.getQueryString();
		System.out.println(test);
		
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/upload/uploaded.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Uploaded Servlet: doPost");
		
		HttpSession session = req.getSession();
		String test = req.getRequestURI() + req.getQueryString();
		System.out.println(test);
		
		// now call the JSP to render the new page
		req.getRequestDispatcher("/_view/upload/uploaded.jsp").forward(req, resp);
	}
}