package edu.ycp.cs320.lab02.controller;

import edu.ycp.cs320.lab02.model.Login;

public class LoginController {
	
	private Login model = null;
	
	public LoginController(Login model) {
		this.model = model;
	}
	
	public boolean checkUserName(String name) {
		return model.validateUserName(name);
	}
	
	public boolean validateCredentials(String name, String pw) {
		return model.validatePW(name, pw);
	}
}	 