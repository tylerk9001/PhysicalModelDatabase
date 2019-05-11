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

public class ratingsAndReviewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Ratings And Reviews Servlet: doGet");	
		
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
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/ratings/ratingsAndReviews.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Ratings And Reviews Servlet: doPost");
		
		RatingReviews model = new RatingReviews();
		RatingReviewController controller = new RatingReviewController();
		HttpSession session = req.getSession();
		
		String getProjectTitle = req.getParameter("projectTitle");
		String getReviewDesc = req.getParameter("reviewDesc");
		String getRatingStar = req.getParameter("star");
		String getReview = req.getParameter("review");
		
		model.setProjectName(getProjectTitle);
		model.setReviewTitle(getReviewDesc);
		model.setRating(Integer.parseInt(getRatingStar));
		model.setReview(getReview);
		model.setAuthorName(session.getAttribute("name").toString());
		
		controller.setModel(model);
		boolean reviewAdd = controller.addReview(model);
		
		if (reviewAdd) {
			session.setAttribute("reviewCreated", "Review: " + getReviewDesc + " was successfully added.");
			resp.sendRedirect("/project/dashboard");
		}
		else {
			session.removeAttribute("reviewCreated");
		}
		// now call the JSP to render the new page
	}
}
