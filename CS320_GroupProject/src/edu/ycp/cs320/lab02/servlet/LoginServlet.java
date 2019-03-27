package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ycp.cs320.lab02.controller.UserAccountController;
import edu.ycp.cs320.lab02.model.UserAccount;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Login Servlet: doGet");	
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/login/login_index.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		boolean correct = false;
		String username = req.getParameter("email");
		String password = req.getParameter("password");
		
		System.out.println("Username: " + username);
		System.out.println("Password: " + password);
		correct = true;
		
		if (correct) {
			resp.sendRedirect("/project/welcome");
			System.out.println("Login Servlet: doPost");
		}
	
	}
}
