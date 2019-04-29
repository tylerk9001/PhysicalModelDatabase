package edu.ycp.cs320.lab02.controller;

import java.util.ArrayList;

import edu.ycp.cs320.booksdb.persist.DatabaseProvider;
import edu.ycp.cs320.booksdb.persist.DerbyDatabase;
import edu.ycp.cs320.booksdb.persist.IDatabase;
import edu.ycp.cs320.lab02.model.CurrentProject;

public class UploadProjectController {
	private CurrentProject model;
	private IDatabase database;
	
	public UploadProjectController() {
		DatabaseProvider.setInstance(new DerbyDatabase());
		database = DatabaseProvider.getInstance();
	}
	
	public void setModel(CurrentProject model) {
		this.model = model;
	}
	
	public CurrentProject getModel() {
		return model;
	}

	public boolean addNewProjectToDatabase(String projectName, String engineeringCategory, ArrayList<String> keywords, 
			ArrayList<String> authors, String modelDescription, String engineeringPrinciple, 
			ArrayList<String> requiredItems,
			String beforeClass, String inClass, String other) {
		boolean projectAdded = database.addNewProjectToDatabase(projectName, engineeringCategory, keywords, authors, modelDescription, engineeringPrinciple, requiredItems, beforeClass, inClass, other);
		return projectAdded;
	}
}	 