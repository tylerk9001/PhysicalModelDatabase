package edu.ycp.cs320.lab02.controller;

import edu.ycp.cs320.lab02.model.UserAccount;


public class UserAccountController {
	private UserAccount model;
//	private IDatabase database;
//	
//	public UserAccountController() {
//		DatabaseProvider.setInstance(new DerbyDatabase());
//		database = DatabaseProvider.getInstance();
//	}

	public UserAccount getModel() {
		return model;
	}

	public void setModel(UserAccount model) {
		this.model = model;
	}
	
	public boolean createUserAccount(UserAccount model) {
		boolean success = false;
//		success = database.createNewUserAccount(model.getEmail(),model.getPassword(), model.getFirstName().toLowerCase(), model.getLastName().toLowerCase());
		
		return success;
	}
}	