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

	public boolean addNewProjectToDatabase(CurrentProject model) {
		boolean projectAdded = database.addNewProjectToDatabase(model.getProjectName(), model.getEngineeringCategory(), model.getKeywords(), model.getAuthors(), model.getModelDescription(), model.getEngineeringPrinciple(), model.getRequiredItems(), model.getBeforeClass(), model.getInClass(), model.getOther());
		return projectAdded;
	}
}	 