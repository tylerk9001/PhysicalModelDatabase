package edu.ycp.cs320.lab02.model;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import edu.ycp.cs320.lab02.model.RatingReviews;

public class RatingReviewsModelTest {
	private RatingReviews model;
	private int rating;
	private int project_ID;
	private int account_ID;
	private int review_ID;
	private String review;	
	private String authorName;
	private String projectName;
	private String reviewTitle;
	private String fileName;
	
	@Before
	public void setUp() {
		model = new RatingReviews();
		authorName = "Tom Messervey";
		projectName = "Crane Rigging Angles";
		reviewTitle = "Cranes are cool";
		fileName = "localhost:1700blahblah";
		rating = 4;
		review_ID = 1;
		review = "This is a test review.";
	}
	
	@Test
	public void testSetGetRating () {
		model.setRating(rating);
		assertTrue(model.getRating() == (rating));
	}
	@Test
	public void testSetGetReview_ID () {
		model.setReview_ID(review_ID);
		assertTrue(model.getReview_ID() == (review_ID));
	}
	@Test
	public void testSetGetReview () {
		model.setReview(review);
		assertTrue(model.getReview().equals(review));
	}
	@Test
	public void testSetGetAuthorsName() {
		model.setAuthorName(authorName);
		assertTrue(model.getAuthorName().equals(authorName));
	}
	@Test
	public void testSetGetProjectName() {
		model.setProjectName(projectName);
		assertTrue(model.getProjectName().equals(projectName));
	}
	@Test
	public void testGetSetReviewTitle() {
		model.setReviewTitle(reviewTitle);
		assertTrue(model.getReviewTitle().equals(reviewTitle));
	}
	@Test
	public void testGetSetFileName() {
		model.setFileName(fileName);
		assertTrue(model.getFileName().equals(fileName));
	}
}
