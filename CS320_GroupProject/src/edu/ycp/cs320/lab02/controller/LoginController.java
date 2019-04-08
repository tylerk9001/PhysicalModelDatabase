package edu.ycp.cs320.lab02.controller;

import edu.ycp.cs320.booksdb.persist.DatabaseProvider;
import edu.ycp.cs320.booksdb.persist.DerbyDatabase;
import edu.ycp.cs320.booksdb.persist.IDatabase;
import edu.ycp.cs320.lab02.model.Login;
import edu.ycp.cs320.lab02.model.UserAccount;

public class LoginController {
//	
//	private Login model = null;
//	
//	public LoginController(Login model) {
//		this.model = model;
//	}
//	
//	public boolean checkUserName(String name) {
//		return model.validateUserName(name);
//	}
//	
//	public boolean validateCredentials(String name, String pw) {
//		return model.validatePW(name, pw);
//	}
	
	private UserAccount model;
	private IDatabase database;
	
	public LoginController() {
		DatabaseProvider.setInstance(new DerbyDatabase());
		database = DatabaseProvider.getInstance();
	}
	
	public void setModel(UserAccount model) {
		this.model = model;
	}
	
	public UserAccount getModel() {
		return model;
	}
	
	public boolean loginSuccess() {
		boolean loginSuccessful = false;
		
		UserAccount getAccount = database.getAccountInfo(model.getEmail(), model.getPassword());
		
		if (getAccount.getEmail() != null && getAccount.getPassword() != null) {
			if (getAccount.getEmail().equals(model.getEmail()) && getAccount.getPassword().equals(model.getPassword())) {
				loginSuccessful = true;
				model = getAccount;
			}
		}
		
		return loginSuccessful;
	}
}	 