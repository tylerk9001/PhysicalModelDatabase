package edu.ycp.cs320.lab02.controller;

import edu.ycp.cs320.lab02.model.UploadProject;


public class UploadProjectController {
	private UploadProject model;
	private String author = "John Doe";
	private String projectName = "Test Project";
	private String engineeringCategory = "Dynamics";
	private String modelDescription = "This is a test for the model description.";
	private String engineeringPrinciple = "This is a test for the engineering principle.";
	private String beforeClass = "This is a test for before class.";
	private String inClass = "This is a test for in class.";
	private String other = "This is a test for other.";
	

	public void setModel(UploadProject model) {
		this.model = model;
	}
	
	public void setHeader() {
		model.setProjectName(projectName);
		model.setEngineeringCategory(engineeringCategory);
		model.addToAuthors(author);
	}
	
	public void setBody() {
		model.setModelDescription(modelDescription);
		model.setEngineeringPrinciple(engineeringPrinciple);
		model.setBeforeClass(beforeClass);
		model.setInClass(inClass);
		model.setOther(other);
	}
}	 