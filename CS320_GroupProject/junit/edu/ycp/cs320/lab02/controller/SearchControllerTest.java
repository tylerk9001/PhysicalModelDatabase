package edu.ycp.cs320.lab02.controller;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.controller.SearchController;
import edu.ycp.cs320.lab02.model.Search;
import edu.ycp.cs320.booksdb.persist.DatabaseProvider;
import edu.ycp.cs320.booksdb.persist.DerbyDatabase;
import edu.ycp.cs320.booksdb.persist.IDatabase;

public class SearchControllerTest {
	private Search search;
	private SearchController controller;
	private IDatabase database;
	private DerbyDatabase derby;
	
	@Before
	public void setUp() {
		search = new Search();
		controller = new SearchController();
		derby = new DerbyDatabase();
		DatabaseProvider.setInstance(derby);
	}
	
	@Test
	public void testSetModel() {
		Search testSearch = new Search();
		assertEquals(testSearch, testSearch);
	}
	
	@Test
	public void testGetModel() {
		Search testSearch = new Search();
		controller.setModel(testSearch);
		assertTrue(controller.getModel().equals(testSearch));
	}
	
	@Test
	public void testgetProjectBySearchResult() {
		ArrayList projects = new ArrayList();
	}
}
