package edu.ycp.cs320.lab02.controller;

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
	
	public void testLoginSuccessful(){
	 System.out.print("Unimplemented Method");
	}
}
