package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ycp.cs320.lab02.controller.RatingReviewController;
import edu.ycp.cs320.lab02.model.CurrentProject;

//import edu.ycp.cs320.lab02.controller.SearchController;
//import edu.ycp.cs320.lab02.model.CurrentProject;
//import edu.ycp.cs320.lab02.model.Search;

public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Index Servlet: doGet");
		
		RatingReviewController controller = new RatingReviewController();
		
		ArrayList<CurrentProject> constructionResults = new ArrayList<CurrentProject>();
		constructionResults = controller.retrieveAllProjectsInDatabase("Construction");
		req.setAttribute("constructionResults", constructionResults);
		
		ArrayList<CurrentProject> dynamicsResults = new ArrayList<CurrentProject>();
		dynamicsResults = controller.retrieveAllProjectsInDatabase("Dynamics");
		req.setAttribute("dynamicsResults", dynamicsResults);
		
		ArrayList<CurrentProject> fluidsResults = new ArrayList<CurrentProject>();
		fluidsResults = controller.retrieveAllProjectsInDatabase("Fluids");
		req.setAttribute("fluidsResults", fluidsResults);
		
		ArrayList<CurrentProject> heatTranResults = new ArrayList<CurrentProject>();
		heatTranResults = controller.retrieveAllProjectsInDatabase("Heat Transfer");
		req.setAttribute("heatTranResults", heatTranResults);
		
		ArrayList<CurrentProject> matSciResults = new ArrayList<CurrentProject>();
		matSciResults = controller.retrieveAllProjectsInDatabase("Material Science");
		req.setAttribute("matSciResults", matSciResults);
		
		ArrayList<CurrentProject> mechanicsResults = new ArrayList<CurrentProject>();
		mechanicsResults = controller.retrieveAllProjectsInDatabase("Mechanics");
		req.setAttribute("mechanicsResults", mechanicsResults);
		
		ArrayList<CurrentProject> staticsResults = new ArrayList<CurrentProject>();
		staticsResults = controller.retrieveAllProjectsInDatabase("Statics");
		req.setAttribute("staticsResults", staticsResults);
		
		ArrayList<CurrentProject> thermResults = new ArrayList<CurrentProject>();
		thermResults = controller.retrieveAllProjectsInDatabase("Thermodynamics");
		req.setAttribute("thermResults", thermResults);
		
		req.getRequestDispatcher("/_view/index.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Index Servlet: doPost");
		
		req.getRequestDispatcher("/_view/index.jsp").forward(req, resp);
	}
}
