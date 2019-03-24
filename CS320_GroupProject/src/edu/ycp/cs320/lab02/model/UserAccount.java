package edu.ycp.cs320.lab02.model;

public class UserAccount {
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private int userAccountId;

	public UserAccount() {
	}
	
	public String getFirstName () {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName () {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
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
