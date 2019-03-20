package edu.ycp.cs320.lab02.model;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class NumbersTest {
	private Numbers model;
	
	@Before
	public void setUp() {
		model = new Numbers();
	}
	
	@Test
	public void testFirst() {
		model.setFirst(100.0);
		assertTrue(model.getFirst().equals(100.0));
		assertFalse(model.getFirst().equals(500.0));
	}
	
	@Test
	public void testSecond() {
		model.setSecond(200.0);
		assertTrue(model.getSecond().equals(200.0));
		assertFalse(model.getSecond().equals(400.0));
	}
	
	@Test
	public void testThird() {
		model.setThird(300.0);
		assertTrue(model.getThird().equals(300.0));
		assertFalse(model.getThird().equals(200.0));
	}
	
	@Test
	public void testResult() {
		model.setResult(600.0);
		assertTrue(model.getResult().equals(600.0));
		assertFalse(model.getResult().equals(200.0));
	}
	
}
