package edu.ycp.cs320.lab02.controller;

import edu.ycp.cs320.booksdb.persist.DatabaseProvider;
import edu.ycp.cs320.booksdb.persist.DerbyDatabase;
import edu.ycp.cs320.booksdb.persist.IDatabase;
import edu.ycp.cs320.lab02.model.RatingReviews;

public class RatingReviewController {
	
	private RatingReviews model;
	private IDatabase database;
	boolean retrieveReview = false;
	
	public RatingReviewController() {
		DatabaseProvider.setInstance(new DerbyDatabase());
		database = DatabaseProvider.getInstance();
	}
	
	public void setModel(RatingReviews model) {
		this.model = model;
	}
	
	public RatingReviews getModel() {
		return model;
	}
	
	public boolean retrieveReview (RatingReviews model) {
		//retrieveReview = database.retrieveReview(model.getReview_ID());
		return retrieveReview;
	}
	
	public boolean addReview (RatingReviews model) {
		//retrieveReview = database.addReview(model.getProject_ID(), model.getAccount_ID(), model.getRating(), model.getReview());
		return retrieveReview;
	}
}	 