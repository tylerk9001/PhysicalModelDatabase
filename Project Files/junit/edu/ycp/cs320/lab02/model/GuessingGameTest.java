package edu.ycp.cs320.lab02.model;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.model.GuessingGame;

public class GuessingGameTest {
	private GuessingGame model;
	
	@Before
	public void setUp() {
		model = new GuessingGame();
	}
	
	@Test
	public void testSetMin() {
		model.setMin(1);
		assertEquals(1, model.getMin());
	}
	
	
	public void testSetMax() {
		model.setMax(100);
		assertEquals(100, model.getMax());
	}
	
	@Test
	public void testIsDone() {
		assertEquals(model.isDone(), model.getMax() == model.getMin());
	}
	
	@Test
	public void testSetIsLessThan() {
		int guess = model.getGuess();
		model.setIsLessThan(guess);
		assertEquals(guess - 1, model.getMax());
	}
	
	@Test
	public void testSetIsGreaterThan() {
		int guess = model.getGuess();
		model.setIsGreaterThan(guess);
		assertEquals(guess + 1, model.getMin());
	}
	
}
