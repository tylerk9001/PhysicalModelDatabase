package edu.ycp.cs320.lab02.model;

import java.lang.reflect.Array;
import java.util.ArrayList;

public class UploadProject {
	private String projectName;
	private String engineeringCategory;
	private ArrayList<String> keywords = new ArrayList<String>();
	private UserAccount account;
	private String author;
	private String modelDescription;
	private String engineeringPrinciple;
	private String[][] requiredItems;
	private int numRequiredItems;
	private String beforeClass;
	private String inClass;
	private String other;

	public UploadProject() {
		for (int i = 0; i < numRequiredItems; i++) {
			requiredItems[i] = new String[4];
		}
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
	
	public String getEngineeringPrinciple() {
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
