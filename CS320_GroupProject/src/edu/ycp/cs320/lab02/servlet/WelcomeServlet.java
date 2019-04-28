package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ycp.cs320.lab02.controller.DashboardController;
import edu.ycp.cs320.lab02.model.CurrentProject;
import edu.ycp.cs320.lab02.model.UserAccount;
import edu.ycp.cs320.lab02.servlet.LoginServlet;

public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Welcome Servlet: doGet");	
		
		UserAccount model = new UserAccount();
		DashboardController controller = new DashboardController();
		HttpSession session = req.getSession();
		
		
		String name = (String)session.getAttribute("name");
		model.setName(name);
		controller.setModel(model);
		
		ArrayList<CurrentProject> projectsFound = new ArrayList<CurrentProject>();
		
		projectsFound = controller.checkForAuthorsProjects(name);
		session.setAttribute("results", projectsFound);
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/login/welcome.jsp").forward(req, resp);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Welcome Servlet: doPost");	
	
		// call JSP to generate empty form
		//req.getRequestDispatcher("/_view/login/welcome.jsp").forward(req, resp);
	}
}
