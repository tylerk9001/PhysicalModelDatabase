package edu.ycp.cs320.lab02.controller;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.controller.LoginController;
import edu.ycp.cs320.lab02.model.UserAccount;

public class LoginControllerTest {
	private UserAccount model;
	private LoginController controller;
	
	@Before
	public void setUp() {
		model = new UserAccount();
		controller = new LoginController();
	}
	
	@Test
	public void testSetModel() {
	 UserAccount testModel = new UserAccount();
	 assertEquals(testModel, testModel);
	}
	
	@Test
	public void testGetModel() {
		UserAccount testModel = new UserAccount();
		controller.setModel(testModel);
		assertTrue(controller.getModel().equals(testModel));
	}
}
