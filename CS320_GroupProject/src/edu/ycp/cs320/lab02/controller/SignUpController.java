package edu.ycp.cs320.lab02.controller;

import edu.ycp.cs320.booksdb.persist.DatabaseProvider;
import edu.ycp.cs320.booksdb.persist.DerbyDatabase;
import edu.ycp.cs320.booksdb.persist.IDatabase;
import edu.ycp.cs320.lab02.model.UserAccount;

public class SignUpController {
	
	private UserAccount model;
	private IDatabase database;
	boolean accountCreationSuccessful = false;
	
	public SignUpController() {
		DatabaseProvider.setInstance(new DerbyDatabase());
		database = DatabaseProvider.getInstance();
	}
	
	public void setModel(UserAccount model) {
		this.model = model;
	}
	
	public UserAccount getModel() {
		return model;
	}
	
	public boolean createAccount(UserAccount model) {
		accountCreationSuccessful = database.createAccountWithSignUpForm(model.getEmail(), model.getPassword(), model.getName());
		return accountCreationSuccessful;
	}
}	 