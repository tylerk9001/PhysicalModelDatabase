package edu.ycp.cs320.lab02.model;

import java.util.ArrayList;

public class Keywords {
	private ArrayList<String> keywords = new ArrayList<String>();
	private String projectID;

	public Keywords() {
	}
	
	public void addToKeywords(String keyword) {
		keywords.add(keyword);
	}
	
	public String pullFromKeywords() {
		if (keywords.size() == 0) {
			return null;
		} else {
			String keyword = keywords.remove(0);
			return keyword;
		}
	}
	
	public void setProjectID(String projectID) {
		this.projectID = projectID;
	}
	
	public String getProjectID() {
		return projectID;
	}
}
