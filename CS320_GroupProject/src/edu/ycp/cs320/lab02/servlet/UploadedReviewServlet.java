package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ycp.cs320.lab02.controller.RatingReviewController;
import edu.ycp.cs320.lab02.controller.UserAccountController;
import edu.ycp.cs320.lab02.model.CurrentProject;
import edu.ycp.cs320.lab02.model.RatingReviews;
import edu.ycp.cs320.lab02.model.UserAccount;

public class UploadedReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Uploaded Review Servlet: doGet");	
		
		RatingReviewController controller = new RatingReviewController();
		RatingReviews model = new RatingReviews();
		HttpSession session = req.getSession();
		
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
		
		if (req.getQueryString() != null) {
			String test = (String) session.getAttribute("projectName");
			model.setProjectName(test);
			controller.setModel(model);
			
			ArrayList<RatingReviews> reviewsForProject = controller.retrieveReviewsByProjectName(model);
			req.setAttribute("reviewsForProject", reviewsForProject);
			
			if (reviewsForProject.isEmpty()) {
				session.removeAttribute("projectName");
				req.setAttribute("noReviews", "Oops, we weren't able to find any reviews for this project yet!");
			}
			
			req.setAttribute("projectName", test + " Reviews:");
		}
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/ratings/uploadedReview.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Uploaded Review Servlet: doPost");
		
		RatingReviews model = new RatingReviews();
		RatingReviewController controller = new RatingReviewController();
		HttpSession session = req.getSession();
		
		String name = req.getParameter("projectTitleForReviews");
		
		model.setProjectName(name);
		controller.setModel(model);
		
		ArrayList<RatingReviews> listOfReviews = controller.retrieveReviewsByProjectName(model);
		
		
		if (listOfReviews.isEmpty()) {
			req.setAttribute("noReviews", "Oops, we weren't able to find any reviews for this project yet!");
		}
		else {
			req.setAttribute("listOfReviews", listOfReviews);
		}
		
		req.setAttribute("projectName", name + " Reviews:");
		
		
		// now call the JSP to render the new page
		req.getRequestDispatcher("/_view/ratings/uploadedReview.jsp").forward(req, resp);
	}
}
