package edu.ycp.cs320.lab02.controller;

import static org.junit.Assert.assertTrue;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.controller.UserAccountController;
import edu.ycp.cs320.lab02.model.UserAccount;

public class UserAccountControllerTest {
	private UserAccount model;
	private UserAccountController controller;
	
	@Before
	public void setUp() {
		model = new UserAccount();
		controller = new UserAccountController();
		
		model.setEmail("testEmail@ycp.edu");
		model.setPassword("testPassword");
		model.setFirstName("testFirstName");
		model.setLastName("testLastName");
		model.setUserAccountId(0001);
		
		controller.setModel(model);
	}
	
	@Test
	public void testModel() {
		assertTrue(model == controller.getModel());
	}
}
