package edu.ycp.cs320.lab02.model;

public class RatingReviews {
	private int rating;
	private int project_ID;
	private int account_ID;
	private int review_ID;
	private String review;
	
	
	public RatingReviews() {
	}
	
	public void setRating(int rating) {
		this.rating = rating;
	}
	
	public int getRating() {
		return rating;
	}
	
	public void setProject_ID(int project_ID) {
		this.project_ID = project_ID;
	}
	
	public int getProject_ID() {
		return project_ID;
	}
	
	
	public void setAccount_ID(int account_ID) {
		this.account_ID = account_ID;
	}
	
	public int getAccount_ID() {
		return account_ID;
	}
	
	public void setReview_ID(int review_ID) {
		this.review_ID = review_ID;
	}
	
	public int getReview_ID() {
		return review_ID;
	}
	
	public void setReview(String review) {
		this.review = review;
	}

	public String getReview() {
		return review;
	}
}
