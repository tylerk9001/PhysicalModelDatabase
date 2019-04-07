package edu.ycp.cs320.lab02.model;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.model.CurrentProject;

public class CurrentProjectModelTest {
	private CurrentProject model;
	private String fileName;
	private String projectName;
	private String engineeringCategory;			
	
	@Before
	public void setUp() {
		model = new CurrentProject();
		
		fileName = "testFileName";
		projectName = "testProjectName";
		engineeringCategory = "testEngineeringCategory";
	}
	
	@Test
	public void testSetGetFileName () {
		model.setFileName(fileName);
		assertTrue(model.getFileName().equals(fileName));
	}
	
	@Test
	public void testSetGetProjectName () {
		model.setProjectName(projectName);
		assertTrue(model.getProjectName().equals(projectName));
	}
	
	@Test
	public void testSetGetEngineeringCategory () {
		model.setEngineeringCategory(engineeringCategory);
		assertTrue(model.getEngineeringCategory().equals(engineeringCategory));
	}
	
}
