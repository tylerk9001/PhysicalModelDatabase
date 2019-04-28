package edu.ycp.cs320.lab02.controller;

import java.util.ArrayList;
import edu.ycp.cs320.booksdb.persist.DatabaseProvider;
import edu.ycp.cs320.booksdb.persist.DerbyDatabase;
import edu.ycp.cs320.booksdb.persist.IDatabase;
import edu.ycp.cs320.lab02.model.CurrentProject;
import edu.ycp.cs320.lab02.model.UserAccount;

public class DashboardController {
	
	private UserAccount model;
	private IDatabase database;
	
	public DashboardController() {
		DatabaseProvider.setInstance(new DerbyDatabase());
		database = DatabaseProvider.getInstance();
	}	
	
	public void setModel(UserAccount model) {
		this.model = model;
	}
	
	public UserAccount getModel() {
		return model;
	}
	
	public ArrayList<CurrentProject> checkForAuthorsProjects (String name) {
		ArrayList<CurrentProject> projects = database.checkForProjectsCreatedByAccount(name);
		return projects;
	}
}	 