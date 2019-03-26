package edu.ycp.cs320.lab02.model;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.model.UserAccount;

public class UploadProjectModelTest {
	private UploadProject model;
	private UserAccount account;
	private String author;
	private String projectName;
	private String engineeringCategory;
	private String keyword;
	private String modelDescription;
	private String engineeringPrinciple;
	private String item, qty, cost, description;
	private String beforeClass;
	private String inClass;
	private String other;
			
	
	@Before
	public void setUp() {
		model = new UploadProject();
		
		account = new UserAccount();
		author = "John Doe";
		projectName = "Test Project";
		engineeringCategory = "Dynamics";
		keyword = "testKeyword";
		modelDescription = "This is a test for the model description.";
		engineeringPrinciple = "This is a test for the engineering principle.";
		item = "Test Item";
		qty = "Test Quantity";
		cost = "Test Cost";
		description = "Test Description";
		beforeClass = "This is a test for before class.";
		inClass = "This is a test for in class.";
		other = "This is a test for other.";
	}
	
	@Test
	public void testSetGetAccount() {
		model.setAccount(account);
		assertTrue(model.getAccount().equals(account));
	}
	
	@Test
	public void testSetGetAuthor() {
		model.setAuthor(author);
		assertTrue(model.getAuthor().equals(author));
	}
	
	@Test
	public void testSetGetProjectName() {
		model.setProjectName(projectName);
		assertTrue(model.getProjectName().equals(projectName));
	}
	
	@Test
	public void testSetGetEngineeringCategory() {
		model.setEngineeringCategory(engineeringCategory);
		assertTrue(model.getEngineeringCategory().equals(engineeringCategory));
	}
	
	@Test
	public void testSetGetModelDescription() {
		model.setModelDescription(modelDescription);
		assertTrue(model.getModelDescription().equals(modelDescription));
	}
	
	@Test
	public void testSetGetEngineeringPrinciple() {
		model.setEngineeringPrinciple(engineeringPrinciple);
		assertTrue(model.getEngineeringPrinciple().equals(engineeringPrinciple));
	}
	
	@Test
	public void testSetGetRequiredItems() {
		String[] items = new String[4];
		items[0] = item;
		items[1] = qty;
		items[2] = cost;
		items[3] = description;
		model.addToRequiredItems(item, qty, cost, description);
		assertTrue(model.pullFromRequiredItems().equals(items));
	}
	
	@Test
	public void testSetGetKeywords() {
		model.addToKeywords(keyword);
		assertTrue(model.pullFromKeywords().equals(keyword));
	}
	
	@Test
	public void testSetGetBeforeClass() {
		model.setBeforeClass(beforeClass);
		assertTrue(model.getBeforeClass().equals(beforeClass));
	}
	
	@Test
	public void testSetGetInClass() {
		model.setInClass(inClass);
		assertTrue(model.getInClass().equals(inClass));
	}
	
	@Test
	public void testSetGetOther() {
		model.setOther(other);
		assertTrue(model.getOther().equals(other));
	}
	
}
