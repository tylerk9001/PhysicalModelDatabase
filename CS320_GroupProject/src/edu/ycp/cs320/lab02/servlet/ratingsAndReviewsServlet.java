package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ycp.cs320.lab02.controller.RatingReviewController;
import edu.ycp.cs320.lab02.controller.UserAccountController;
import edu.ycp.cs320.lab02.model.RatingReviews;
import edu.ycp.cs320.lab02.model.UserAccount;

public class ratingsAndReviewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Ratings And Reviews Servlet: doGet");	
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/ratings/ratingsAndReviews.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Ratings And Reviews Servlet: doPost");
		
		RatingReviews model = new RatingReviews();
		RatingReviewController controller = new RatingReviewController();
		
		String getProjectTitle = req.getParameter("projectTitle");
		String getReviewDesc = req.getParameter("reviewDesc");
		String getRatingStar = req.getParameter("star");
		String getReview = req.getParameter("review");
		
		System.out.println(getProjectTitle);
		System.out.println(getReviewDesc);
		System.out.println(getRatingStar);
		System.out.println(getReview);
		
		
		
		controller.setModel(model);
		model.setProjectName(getProjectTitle);
		model.setReviewTitle(getReviewDesc);
		model.setRating(Integer.parseInt(getRatingStar));
		model.setReview(getReview);
		model.setAuthorName("Tom Messervey");
		
		controller.addReview(model);
		
		
		// now call the JSP to render the new page
		req.getRequestDispatcher("/_view/ratings/ratingsAndReviews.jsp").forward(req, resp);
	}
}
