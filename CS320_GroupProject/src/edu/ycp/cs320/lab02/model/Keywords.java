package edu.ycp.cs320.lab02.model;

import java.util.ArrayList;

public class Keywords {
	private ArrayList<String> keywords = new ArrayList<String>();
	private int projectID;

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
	
	public void setProjectID(int i) {
		this.projectID = i;
	}
	
	public int getProjectID() {
		return projectID;
	}
}
