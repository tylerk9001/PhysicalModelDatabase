package edu.ycp.cs320.booksdb.persist;

import java.util.ArrayList;
import edu.ycp.cs320.lab02.model.CurrentProject;
import edu.ycp.cs320.lab02.model.RatingReviews;
import edu.ycp.cs320.lab02.model.UserAccount;


public interface IDatabase {
	// do we need all of this in the database?
	// if we can get the form data saved directly to the jsp then we can just save the file name
		
	// Logging in query
	public UserAccount getAccountInfoForUserLogin (String email, String password);
	
	// Creating account query
	public boolean createAccountWithSignUpForm (String email, String password, String Name);
	
	// Search query
	public ArrayList<CurrentProject> searchByKeywordsAuthorsProjectNameOrCategory(String search);
	
	// Search query by name to display on account dashboard
	public ArrayList<CurrentProject> checkForProjectsCreatedByAccount(String name);
	
	// Return entire list of project names
	public ArrayList<CurrentProject> retrieveAllProjectsInDatabase();
	
	public ArrayList<CurrentProject> retrieveAllProjectsInDatabase1();
	
	// Query to add new project to database
	public boolean addNewProjectToDatabase(String projectName, String engineeringCategory, ArrayList<String> keywords, 
			ArrayList<String> authors, String modelDescription, String engineeringPrinciple, 
			ArrayList<String[]> requiredItems, 
			String beforeClass, String inClass, String other);
	
	// Retrieve review by project name
	public ArrayList<RatingReviews> retrieveReviewByProjectName (String name);
	
	// Retrieve review by author name
	public ArrayList<RatingReviews> retrieveReviewByAuthorName (String name);
	
	// Add review
	public boolean addReview (int rating, String projectName, String authorName, String review, String title);
}
