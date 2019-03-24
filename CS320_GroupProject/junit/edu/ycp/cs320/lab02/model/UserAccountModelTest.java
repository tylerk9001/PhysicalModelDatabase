package edu.ycp.cs320.lab02.model;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.model.UserAccount;

public class UserAccountModelTest {
	private UserAccount model;
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private int userAccountId;
			
	
	@Before
	public void setUp() {
		model = new UserAccount();
		
		email = "testEmail@ycp.edu";
		password = "testPassword";
		firstName = "testFirstName";
		lastName = "testLastName";
		userAccountId = 0001;
	}
	
	@Test
	public void testSetGetEmail () {
		model.setEmail(email);
		assertTrue(model.getEmail().equals(email));
	}
	
	@Test
	public void testSetGetPassword () {
		model.setPassword(password);
		assertTrue(model.getPassword().equals(password));
	}
	
	@Test
	public void testSetGetFirstName () {
		model.setFirstName(firstName);
		assertTrue(model.getFirstName().equals(firstName));
	}
	
	@Test
	public void testSetGetLastName () {
		model.setLastName(lastName);
		assertTrue(model.getLastName().equals(lastName));
	}
	
	@Test
	public void testSetGetUserAccountId () {
		model.setUserAccountId(userAccountId);
		assertTrue(model.getUserAccountId() == userAccountId);
	}
	
}
