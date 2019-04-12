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
	
	@Before
	public void setUp() {
		model = new RatingReviews();
		
		rating = 4;
		project_ID = 5;
		account_ID = 323;
		review_ID = 1;
		review = "This is a test review.";
	}
	
	@Test
	public void testSetGetRating () {
		model.setRating(rating);
		assertTrue(model.getRating() == (rating));
	}
	
	@Test
	public void testSetGetProject_ID () {
		model.setProject_ID(project_ID);
		assertTrue(model.getProject_ID() == (project_ID));
	}
	
	@Test
	public void testSetGetAccount_ID () {
		model.setAccount_ID(account_ID);
		assertTrue(model.getAccount_ID() == (account_ID));
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
}
