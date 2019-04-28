package edu.ycp.cs320.lab02.controller;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.controller.SignUpController;
import edu.ycp.cs320.lab02.model.UserAccount;

public class SignUpControllerTest {
	private UserAccount account;
	private SignUpController controller;
	
	@Before
	public void setUp() {
		account = new UserAccount();
		controller = new SignUpController();
	}
	
	@Test
	public void testSetModel() {
		UserAccount testAccount = new UserAccount();
		assertEquals(testAccount, testAccount);
	}
	
	@Test
	public void testGetModel() {
		UserAccount testAccount = new UserAccount();
		controller.setModel(testAccount);
		assertTrue(controller.getModel().equals(testAccount));
	}
}
