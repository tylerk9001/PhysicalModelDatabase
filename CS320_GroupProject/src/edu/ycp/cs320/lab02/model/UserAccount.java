package edu.ycp.cs320.lab02.model;

public class UserAccount {
	private String name;
	private String email;
	private String password;
	private int userAccountId;

	public UserAccount() {
	}
	
	public String getName () {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail () {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword () {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getUserAccountId() {
		return userAccountId;
	}
	
	public void setUserAccountId(int userAccountId) {
		this.userAccountId = userAccountId;
	}
}
