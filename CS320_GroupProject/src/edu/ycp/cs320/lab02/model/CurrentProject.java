package edu.ycp.cs320.lab02.model;

import java.util.ArrayList;

public class CurrentProject {
	private int projectID;
	private String projectName;
	private String engineeringCategory;
	private ArrayList<String> keywords = new ArrayList<String>();
	private UserAccount account;
	private ArrayList<String> authors = new ArrayList<String>();
	private String modelDescription;
	private String engineeringPrinciple;
	private ArrayList<String[]> requiredItems = new ArrayList<String[]>();
	private ArrayList<String> items = new ArrayList<String>();
	private String beforeClass;
	private String inClass;
	private String other;
	private String fileName;

	public CurrentProject() {
	}
	
	public void setProjectID(int projectID) {
		this.projectID = projectID;
	}
	
	public int getProjectID() {
		return projectID;
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
	
	public void setKeywords(ArrayList<String> keywords) {
		this.keywords = keywords;
	}
	
//	public String pullFromKeywords() {
//		String keyword = keywords.get(0);
//		keywords.remove(0);
//		return keyword;
//	}
	public ArrayList<String> getKeywords() {
		return keywords;
	}
	
	public void setAccount (UserAccount account) {
		this.account = account;
	}
	
	public UserAccount getAccount() {
		return account;
	}
	
	public void setAuthors(ArrayList<String> authors) {
		this.authors = authors;
	}
	
//	public String pullFromAuthors () {
//		String author = authors.get(0);
//		authors.remove(0);
//		return author;
//	}
	
	public void setRequiredItems(ArrayList<String[]> requiredItems) {
		this.requiredItems = requiredItems;
	}
	
	public ArrayList<String[]> getRequiredItems() {
		return requiredItems;
	}
	
	public void setModelDescription(String modelDescription) {
		this.modelDescription = modelDescription;
	}
	
	public String getModelDescription() {
		return modelDescription;
	}	
	
	public void setEngineeringPrinciple(String engineeringPrinciple) {
		this.engineeringPrinciple = engineeringPrinciple;
	}
	
	public String getEngineeringPrinciple() {
		return engineeringPrinciple;
	}
	
	public ArrayList<String> getAuthors() {
		return authors;
	}
	
//	public ArrayList<String> pullFromRequiredItems() {
//		items.add(requiredItems.get(0).get(0));
//		items.add(requiredItems.get(0).get(1));
//		items.add(requiredItems.get(0).get(2));
//		items.add(requiredItems.get(0).get(3));
//		requiredItems.remove(0);
//		return items;
//	}
	
	public void setBeforeClass(String beforeClass) {
		this.beforeClass = beforeClass;
	}
	
	public String getBeforeClass() {
		return beforeClass;
	}
	
	public void setInClass(String inClass) {
		this.inClass = inClass;
	}
	
	public String getInClass() {
		return inClass;
	}
	
	public void setOther(String other) {
		this.other = other;
	}
	
	public String getOther() {
		return other;
	}
	
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public String getFileName() {
		return fileName;
	}
}
