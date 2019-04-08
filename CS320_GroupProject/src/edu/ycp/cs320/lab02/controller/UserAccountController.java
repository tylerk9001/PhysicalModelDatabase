package edu.ycp.cs320.lab02.controller;

import edu.ycp.cs320.booksdb.persist.DatabaseProvider;
import edu.ycp.cs320.booksdb.persist.DerbyDatabase;
import edu.ycp.cs320.booksdb.persist.IDatabase;
import edu.ycp.cs320.lab02.model.UserAccount;


public class UserAccountController {
	private IDatabase database = null;
	
	public UserAccountController() {
		DatabaseProvider.setInstance(new DerbyDatabase());
		database = DatabaseProvider.getInstance();
	}

	public boolean insertAccountsToDatabase(String lastName, String firstName, String email, String password) {
		return database.InsertAccounts(lastName, firstName, email, password);
	}
}	