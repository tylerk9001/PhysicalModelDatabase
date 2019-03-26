package edu.ycp.cs320.lab02.model;

import java.util.ArrayList;

public class UploadProject {
	private String projectName;
	private ArrayList<String> keywords = new ArrayList<String>();
	private UserAccount account;
	private String author;
	private String modelDescription;
	private String engineeringPrinciple;
	private ArrayList<String[]> requiredItems = new ArrayList<String[]>();
	private int numRequiredItems;
	private String beforeClass;
	private String inClass;
	private String other;

	public UploadProject() {
		String[] req1 = new String[4];
		String[] req2 = new String[4];
		String[] req3 = new String[4];
		String[] req4 = new String[4];
		String[] req5 = new String[4];
		requiredItems.add(req1);
		requiredItems.add(req2);
		requiredItems.add(req3);
		requiredItems.add(req4);
		requiredItems.add(req5);
	}
	
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	
	public String getProjectName() {
		return projectName;
	}
	
	public void setAuthor (String author) {
		this.author = author;
	}
	
	public String getAuthor () {
		author = account.getFirstName() + account.getLastName();
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
	
	public String getEngineeringPriciple() {
		return engineeringPrinciple;
	}
	
	public void setNumRequiredItems(int numRequiredItems) {
		this.numRequiredItems = numRequiredItems;
	}
	
	public int getNumRequiredItems() {
		return numRequiredItems;
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
