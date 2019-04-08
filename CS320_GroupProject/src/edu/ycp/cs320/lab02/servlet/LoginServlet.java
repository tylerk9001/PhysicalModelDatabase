package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ycp.cs320.lab02.controller.LoginController;
import edu.ycp.cs320.lab02.model.Login;
import edu.ycp.cs320.lab02.model.UserAccount;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Login model;
	private LoginController controller;

	
	
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
		
		System.out.println("Login Servlet: doPost");	
		
		UserAccount model = new UserAccount();
		LoginController controller = new LoginController();
		

		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		
		if (email != null && password != null) {
			model.setEmail(email);
			model.setPassword(password);
		}
		controller.setModel(model);
		
		if (controller.loginSuccess() == true) {
			model = controller.getModel();
			HttpSession session = req.getSession(true);
			session.setAttribute("login", true);
			session.setAttribute("email", model.getEmail());
			session.setAttribute("firstname", model.getFirstName());
			session.setAttribute("lastname", model.getLastName());
			
			if (session.getAttribute("login_failed") != null) {
				session.removeAttribute("login_failed");
			}
			resp.sendRedirect("/project/welcome");
		}
		else {
			HttpSession session = req.getSession(true);
			session.setAttribute("login_failed", true);
			resp.sendRedirect("/project/login");
			
		}
	}
}
