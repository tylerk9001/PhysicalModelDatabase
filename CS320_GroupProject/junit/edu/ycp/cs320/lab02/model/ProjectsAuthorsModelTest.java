package edu.ycp.cs320.lab02.model;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.model.ProjectsAuthors;

public class ProjectsAuthorsModelTest {
	private ProjectsAuthors model;
	private String authorID;
	private String projectID;
	
	@Before
	public void setUp() {
		model = new ProjectsAuthors();
		
		authorID = "testProjectID";
		projectID = "testAuthorID";
	}
	
	@Test
	public void testSetGetProjectID () {
		model.setProjectID(projectID);
		assertTrue(model.getProjectID().equals(projectID));
	}
	
	@Test
	public void testSetGetAuthorsID () {
		model.setAuthorID(authorID);
		assertTrue(model.getAuthorID().equals(authorID));
	}
	
}
