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
import edu.ycp.cs320.lab02.model.Search;

public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Search Servlet: doGet");	
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/search/search.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Search Servlet: doPost");
		
		Search model = new Search();
		SearchController controller = new SearchController();
		
		String search = req.getParameter("search");
		model.setSearch(search);
		controller.setModel(model);
		
		ArrayList<CurrentProject> projectsFound = new ArrayList<CurrentProject>();
		projectsFound = controller.getProjectBySearchResult(search);
		
		HttpSession session = req.getSession();
		session.setAttribute("results", projectsFound);
		
		// now call the JSP to render the new page
		req.getRequestDispatcher("/_view/search/search.jsp").forward(req, resp);
	}
}
