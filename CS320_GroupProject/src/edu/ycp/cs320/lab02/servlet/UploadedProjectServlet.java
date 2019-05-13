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
	
	@SuppressWarnings("null")
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
		
		ArrayList<String> requiredItems = projectInfo.get(0).getReturnItems();
		ArrayList<String> item = new ArrayList<String>();
		ArrayList<String> quantity = new ArrayList<String>();
		ArrayList<String> cost = new ArrayList<String>();
		ArrayList<String> description = new ArrayList<String>();
		
		for (int i = 0; i < requiredItems.size(); i=i+4) {
			item.add(requiredItems.get(i));
		}
		for (int i = 1; i < requiredItems.size(); i=i+4) {
			quantity.add(requiredItems.get(i));
		}
		for (int i = 2; i < requiredItems.size(); i=i+4) {
			cost.add(requiredItems.get(i));
		}
		for (int i = 3; i < requiredItems.size(); i=i+4) {
			description.add(requiredItems.get(i));
		}
		int num = requiredItems.size()/4;
		
		ArrayList<String[]> allItems = new ArrayList<String[]>();

		for (int i = 0; i < num; i++) {
			String[] row = new String[4];
			row[0] = item.get(i);
			row[1] = quantity.get(i);
			row[2] = cost.get(i);
			row[3] = description.get(i);
			allItems.add(row);
		}


		req.setAttribute("allItems", allItems);

		

		
		
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
