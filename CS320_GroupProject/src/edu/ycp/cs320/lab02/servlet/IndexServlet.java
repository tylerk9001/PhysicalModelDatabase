package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import edu.ycp.cs320.lab02.controller.SearchController;
//import edu.ycp.cs320.lab02.model.CurrentProject;
//import edu.ycp.cs320.lab02.model.Search;

public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Index Servlet: doGet");
		
		req.getRequestDispatcher("/_view/index.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Index Servlet: doPost");
		
		//Search model = new Search();
		//SearchController controller = new SearchController();
		
		String search = req.getParameter("search");
		
		//model.setSearch(search);
		
//		if (model.getSearch() != "" && model.getSearch() != null) {
//			controller.setModel(model);
//			
//			ArrayList<CurrentProject> projects = new ArrayList<CurrentProject>();
//			
//			projects = controller.search(search);
//			for (CurrentProject project : projects) {
//				ArrayList<CurrentProject> result = controller.search(search);
//				//projects.add(result);
//			}
//			
//		}
//		
		req.getRequestDispatcher("/_view/index.jsp").forward(req, resp);
	}
}
