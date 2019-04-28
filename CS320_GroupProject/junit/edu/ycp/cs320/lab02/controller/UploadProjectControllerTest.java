package edu.ycp.cs320.lab02.controller;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.controller.UploadProjectController;
import edu.ycp.cs320.lab02.model.UploadProject;

public class UploadProjectControllerTest {
	private UploadProject model;
	private UploadProjectController controller;
	
	@Before
	public void setUp() {
		controller = new UploadProjectController();
		model = new UploadProject();
	}
	
	@Test
	public void testSetModel() {
		UploadProject testModel = new UploadProject();
		assertEquals(testModel, testModel);
	}
	
	@Test
	public void testGetModel() {
		UploadProject testModel = new UploadProject();
		controller.setModel(testModel);
		assertTrue(controller.getModel().equals(testModel));
	}
}
