package edu.ycp.cs320.lab02.model;

public class ProjectsAuthors {
	private String authorID;
	private String projectID;
	

	public ProjectsAuthors() {
	}
	
	public void setAuthorID(String authorID) {
		this.authorID = authorID;
	}
	
	public String getAuthorID() {
		return authorID;
	}
	
	public void setProjectID(String string) {
		this.projectID = string;
	}
	
	public String getProjectID() {
		return projectID;
	}
}
