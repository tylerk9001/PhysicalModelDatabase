package edu.ycp.cs320.lab02.controller;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.model.Numbers;

public class NumbersControllerTest {
	private Numbers model;
	private NumbersController controller;
	
	@Before
	public void setUp() {
		model = new Numbers();
		controller = new NumbersController();

		controller.setModel(model);
		
		model.setFirst(1.0);
		model.setSecond(-2.0);
		model.setThird(3.0);
	}
	
	@Test
	public void testAdd() {
		controller.add();
		assertTrue(model.getResult().equals(2.0));
		assertFalse(model.getResult().equals(-2.0));
	}
	
	@Test
	public void testMultiply() {
		controller.multiply();
		assertTrue(model.getResult().equals(-2.0));
		assertFalse(model.getResult().equals(2.0));
	}
	
}
