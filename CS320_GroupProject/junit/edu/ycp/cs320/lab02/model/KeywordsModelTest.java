package edu.ycp.cs320.lab02.model;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;

import edu.ycp.cs320.lab02.model.Keywords;

public class KeywordsModelTest {
	private Keywords model;
	private String keywordOne, keywordTwo, keywordThree;
	private ArrayList<String> keywords;
	private String projectID;
		
	
	@Before
	public void setUp() {
		model = new Keywords();
		keywords = new ArrayList<String>();
		
		keywordOne = "testKeywordOne";
		keywordTwo = "testKeywordsTwo";
		keywordThree = "testKeywordThree";
		projectID = "testProjectID";
	}
	
	@Test
	public void testSetGetKeywords () {
		// add all three keywords to ArrayList
		model.addToKeywords(keywordOne);
		model.addToKeywords(keywordTwo);
		model.addToKeywords(keywordThree);		
		
		// test first keyword in ArrayList
		assertTrue(model.pullFromKeywords().equals(keywordOne));
		
		// test first keyword in ArrayList
		assertTrue(model.pullFromKeywords().equals(keywordTwo));

		// test first keyword in ArrayList
		assertTrue(model.pullFromKeywords().equals(keywordThree));
	}
	
	@Test
	public void testSetGetProjectID () {
		model.setProjectID(projectID);
		assertTrue(model.getProjectID().equals(projectID));
	}
	
}
