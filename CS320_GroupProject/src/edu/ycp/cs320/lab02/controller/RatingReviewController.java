package edu.ycp.cs320.lab02.controller;

import java.util.ArrayList;

import edu.ycp.cs320.booksdb.persist.DatabaseProvider;
import edu.ycp.cs320.booksdb.persist.DerbyDatabase;
import edu.ycp.cs320.booksdb.persist.IDatabase;
import edu.ycp.cs320.lab02.model.RatingReviews;

public class RatingReviewController {
	
	private RatingReviews model;
	private IDatabase database;
//	boolean retrieveReview = false;
	
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
	
	public ArrayList<RatingReviews> retrieveReviewByProjectName (RatingReviews model) {
		ArrayList<RatingReviews> results = database.retrieveReviewByProjectName(model.getProjectName());
		return results;
	}
	
	public ArrayList<RatingReviews> retrieveReviewByAuthorName (RatingReviews model) {
		ArrayList<RatingReviews> results = database.retrieveReviewByAuthorName(model.getAuthorName());
		return results;
	}
	
	public boolean addReview (RatingReviews model) {
		boolean retrieveReview = database.addReview(model.getRating(), model.getProjectName(), model.getAuthorName(), model.getReview(), model.getReviewTitle());
		return retrieveReview;
	}
}	 