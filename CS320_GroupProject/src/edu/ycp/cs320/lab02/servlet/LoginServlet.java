package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ycp.cs320.lab02.controller.LoginController;
import edu.ycp.cs320.lab02.model.Login;

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
		
		String errorMessage = null;
		String name = null;
		String password = null;
		boolean validLogin = false;

		// Decode form parameters and dispatch to controller
		name = req.getParameter("username");
		password = req.getParameter("password");

		System.out.println("   Name: <" + name + ">");
		System.out.println("   Password: <" + password + ">");

		if (name == null || password == null || name.equals("") || password.equals("")) {
			errorMessage = "Please specify both user name and password";
		} else {
			model = new Login();
			controller = new LoginController(model);
			validLogin = controller.validateCredentials(name, password);

			if (!validLogin) {
				errorMessage = "Username and/or password invalid";
			}
		}

		// Add parameters as request attributes
		req.setAttribute("username", req.getParameter("username"));
		req.setAttribute("password", req.getParameter("password"));

		// Add result objects as request attributes
		req.setAttribute("errorMessage", errorMessage);
		req.setAttribute("login", validLogin);

		// if login is valid, start a session
		if (validLogin) {
			System.out.println("   Valid login - starting session, redirecting to welcome.jsp");

			// store user object in session
			req.getSession().setAttribute("user", name);

			// redirect to /index page
			resp.sendRedirect(req.getContextPath() + "/welcome");

			return;
		}

		System.out.println("   Invalid login - returning to login_index.jsp");

		// Forward to view to render the result HTML document
		req.getRequestDispatcher("/_view/login/login_index.jsp").forward(req, resp);
	
	}
}
