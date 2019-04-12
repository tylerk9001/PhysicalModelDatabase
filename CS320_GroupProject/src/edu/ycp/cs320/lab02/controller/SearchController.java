package edu.ycp.cs320.lab02.controller;

import java.util.ArrayList;
import edu.ycp.cs320.booksdb.persist.DatabaseProvider;
import edu.ycp.cs320.booksdb.persist.DerbyDatabase;
import edu.ycp.cs320.booksdb.persist.IDatabase;
import edu.ycp.cs320.lab02.model.CurrentProject;
import edu.ycp.cs320.lab02.model.Search;

public class SearchController {
	
	private Search model;
	private IDatabase database;
	
	public SearchController() {
		DatabaseProvider.setInstance(new DerbyDatabase());
		database = DatabaseProvider.getInstance();
	}	
	
	public void setModel(Search model) {
		this.model = model;
	}
	
	public Search getModel() {
		return model;
	}
	
	public ArrayList<CurrentProject> search(String search) {
		ArrayList<CurrentProject> list = database.search(model.getSearch());
		return list;
	}
}	 