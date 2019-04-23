package edu.ycp.cs320.booksdb.persist;

import java.util.ArrayList;
import edu.ycp.cs320.lab02.model.CurrentProject;
import edu.ycp.cs320.lab02.model.UserAccount;


public interface IDatabase {
	// do we need all of this in the database?
	// if we can get the form data saved directly to the jsp then we can just save the file name
		
	// Logging in query
	public UserAccount getAccountInfo (String email, String password);
	
	// Creating account query
	public boolean createAccount(String email, String password, String Name);
	
	// Search query
	public ArrayList<CurrentProject> search(String search);
	
	// Retrieve Review
	//public boolean retrieveReview (String review_id);
	
	// Add review
	//public boolean addReview (String project_id, String account_id, String rating, String review);
}
