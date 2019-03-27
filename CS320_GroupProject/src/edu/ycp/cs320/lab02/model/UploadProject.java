package edu.ycp.cs320.lab02.model;

import java.awt.List;
import java.util.ArrayList;

public class UploadProject {
	private String projectName;
	private String engineeringCategory;
	private ArrayList<String> keywords = new ArrayList<String>();
	private UserAccount account;
	private String author;
	private String modelDescription;
	private String engineeringPrinciple;
	private ArrayList<ArrayList<String>> requiredItems = new ArrayList<ArrayList<String>>();
	private ArrayList<String> items = new ArrayList<String>();
	private int numRequiredItems = 10;
	private String beforeClass;
	private String inClass;
	private String other;

	public UploadProject() {
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
		return keywords.get(0);
	}
	
	public void setAccount (UserAccount account) {
		this.account = account;
	}
	
	public UserAccount getAccount() {
		return account;
	}
	
	public void setAuthor (String author) {
		this.author = author;
	}
	
	public String getAuthor () {
		return author;
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
	
	public void setNumRequiredItems(int numRequiredItems) {
		this.numRequiredItems = numRequiredItems;
	}
	
	public int getNumRequiredItems() {
		return numRequiredItems;
	}
	
	public void addToRequiredItems(String item, String qty, String cost, String description) {
		items.add(item);
		items.add(qty);
		items.add(cost);
		items.add(description);
		
		requiredItems.add(items);
		}
	
	public ArrayList<String> pullFromRequiredItems() {
		items.add(requiredItems.get(0).get(0));
		items.add(requiredItems.get(0).get(1));
		items.add(requiredItems.get(0).get(2));
		items.add(requiredItems.get(0).get(3));
		return items;
	}
	
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
}
