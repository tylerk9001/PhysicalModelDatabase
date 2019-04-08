package edu.ycp.cs320.booksdb.persist;

import java.util.List;

import edu.ycp.cs320.lab02.model.CurrentProject;
import edu.ycp.cs320.lab02.model.UploadProject;
import edu.ycp.cs320.lab02.model.UserAccount;


public interface IDatabase {
	// do we need all of this in the database?
	// if we can get the form data saved directly to the jsp then we can just save the file name
	//public List<UploadProject> InsertNewProjectFromForm (String projectName, String engineeringCategory, 
			//String keywords, String authors, String modelDesc, String engineeringPrinciple, String requiredItems, 
			//String beforeClass, String inClass, String other);
	
	public List<CurrentProject> InsertProjectsFromPDF (String projectName, String engineeringCategory, String keywords, String authors);
	
	public boolean InsertAccounts (String lastName, String firstName, String email, String password);
	
}
