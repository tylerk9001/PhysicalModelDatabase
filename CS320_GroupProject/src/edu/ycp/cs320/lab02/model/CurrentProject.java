package edu.ycp.cs320.lab02.model;

import java.util.ArrayList;

public class CurrentProject {
	private int userAccountId;
	private String fileName;
	private String projectName;
	private String engineeringCategory;
	private ArrayList<String> keywords = new ArrayList<String>();
	private ArrayList<String> authors = new ArrayList<String>();
	

	public CurrentProject() {
	}
	
	public void setUserAccountId(int creatorId) {
		this.userAccountId = creatorId;
	}
	
	public int getUserAccountId() {
		return userAccountId;
	}
	
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public String getFileName() {
		return fileName;
	}
	
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	
	public String getProjectName() {
		return projectName;
	}
	
	public void setEngineeringCategory(String engineeringCategory) {
		this.engineeringCategory = engineeringCategory;
	}
	
	public String getEngineeringCategory() {
		return engineeringCategory;
	}
	
	public void addToKeywords(String keyword) {
		keywords.add(keyword);
	}
	
	public String pullFromKeywords() {
		String keyword = keywords.get(0);
		keywords.remove(0);
		return keyword;
	}
	
	public void addToAuthors (String author) {
		authors.add(author);
	}
	
	public String pullFromAuthors () {
		String author = authors.get(0);
		authors.remove(0);
		return author;
	}
}
