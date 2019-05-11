package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ycp.cs320.lab02.controller.SearchController;
import edu.ycp.cs320.lab02.model.CurrentProject;

public class UploadedProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	CurrentProject project = new CurrentProject();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Uploaded Servlet: doGet");	
		
		SearchController controller = new SearchController();
		
HttpSession session = req.getSession();
		
		String test = req.getQueryString().trim();
		test = test.replaceAll("%20", " ");
		
		session.setAttribute("projectName", test);
		
		ArrayList<CurrentProject> projectInfo = controller.getAllInfoForProjectGivenProjectName(test);
		req.setAttribute("projectInfo", projectInfo);
		
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/upload/uploaded.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Uploaded Servlet: doPost");
		
		
		// now call the JSP to render the new page
		req.getRequestDispatcher("/_view/upload/uploaded.jsp").forward(req, resp);
	}
}
