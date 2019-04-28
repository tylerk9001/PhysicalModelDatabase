package edu.ycp.cs320.lab02.controller;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.controller.RatingReviewController;
import edu.ycp.cs320.lab02.model.RatingReviews;

public class RatingReviewContollerTest {
	private RatingReviews model;
	private RatingReviewController controller;
		
	@Before
	public void setUp() {
		model = new RatingReviews();
		controller = new RatingReviewController();
	}
	
	@Test
	public void testSetModel() {
		RatingReviews testModel = new RatingReviews();
		assertEquals(testModel, testModel);
	}
	
	@Test
	public void testGetModel() {
		RatingReviews testModel = new RatingReviews();
		controller.setModel(testModel);
		assertTrue(controller.getModel().equals(testModel));
	}
	
}
