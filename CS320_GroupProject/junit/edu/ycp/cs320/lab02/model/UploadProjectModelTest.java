package edu.ycp.cs320.lab02.model;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.model.UserAccount;

public class UploadProjectModelTest {
	private UploadProject model;
	private String author;
	private String projectName;
	private String engineeringCategory;
	private String modelDescription;
	private String engineeringPrinciple;
	private String beforeClass;
	private String inClass;
	private String other;
			
	
	@Before
	public void setUp() {
		model = new UploadProject();
		
		author = "John Doe";
		projectName = "Test Project";
		engineeringCategory = "Dynamics";
		modelDescription = "This is a test for the model description.";
		engineeringPrinciple = "This is a test for the engineering principle.";
		beforeClass = "This is a test for before class.";
		inClass = "This is a test for in class.";
		other = "This is a test for other.";
	}
	
	@Test
	public void testSetGetAuthor() {
		model.setAuthor(author);
		assertTrue(model.getAuthor().equals(author));
	}
	
	
	
}
