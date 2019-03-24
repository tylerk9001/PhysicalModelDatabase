package edu.ycp.cs320.lab02.controller;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.controller.UserAccountController;
import edu.ycp.cs320.lab02.model.UserAccount;

public class GuessingGameControllerTest {
	private UserAccount model;
	private UserAccountController controller;
	
	@Before
	public void setUp() {
		model = new UserAccount();
		controller = new UserAccountController();
		
		model.setMin(1);
		model.setMax(100);
		
		controller.setModel(model);
	}
	
	@Test
	public void testSetNumberFound () {
		int currentGuess = model.getGuess();
		controller.setNumberFound();
		assertEquals(model.getMin(), currentGuess);
		assertEquals(model.getMax(), currentGuess);
	}
	
	@Test
	public void testNumberIsGreater() {
		int currentGuess = model.getGuess();
		controller.setNumberIsGreaterThanGuess();
		assertTrue(model.getGuess() > currentGuess);
	}
	
	@Test
	public void testNumberIsLess() {
		int currentGuess = model.getGuess();
		controller.setNumberIsLessThanGuess();
		assertTrue(model.getGuess() < currentGuess);
	}
}
