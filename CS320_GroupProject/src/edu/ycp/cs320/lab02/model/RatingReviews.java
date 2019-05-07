package edu.ycp.cs320.lab02.model;

public class RatingReviews {
	private int rating;
	private String projectName;
	private String authorName;
	private int review_ID;
	private String review;
	private String reviewTitle;
	private String fileName;
	
	
	public RatingReviews() {
	}
	
	public void setRating(int rating) {
		this.rating = rating;
	}
	
	public int getRating() {
		return rating;
	}
	
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	
	public String getProjectName() {
		return projectName;
	}
	
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	
	public String getAuthorName() {
		return authorName;
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
	
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	
	public String getReviewTitle() {
		return reviewTitle;
	}
	
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public String getFileName() {
		return fileName;
	}
}
