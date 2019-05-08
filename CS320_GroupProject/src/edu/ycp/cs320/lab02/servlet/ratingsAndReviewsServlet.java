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
		
		
		ArrayList<CurrentProject> projectsInDatabase = new ArrayList<CurrentProject>();
		projectsInDatabase = controller.retrieveAllProjectsInDatabase();
		req.setAttribute("results3", projectsInDatabase);
		
		ArrayList<CurrentProject> projectsInDatabase1 = new ArrayList<CurrentProject>();
		projectsInDatabase1 = controller.retrieveAllProjectsInDatabase1();
		req.setAttribute("results4", projectsInDatabase1);
		
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
		controller.addReview(model);
		
		
		// now call the JSP to render the new page
		req.getRequestDispatcher("/_view/ratings/ratingsAndReviews.jsp").forward(req, resp);
	}
}
