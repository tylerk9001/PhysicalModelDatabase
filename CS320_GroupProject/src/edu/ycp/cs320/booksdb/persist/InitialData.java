package edu.ycp.cs320.booksdb.persist;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import edu.ycp.cs320.lab02.model.CurrentProject;
import edu.ycp.cs320.lab02.model.UserAccount;

public class InitialData {
	public static List<CurrentProject> getProjects() throws IOException {
		List<CurrentProject> projectList = new ArrayList<CurrentProject>();
		ReadCSV readProjects = new ReadCSV("projects.csv");
		try {
			// auto-generated primary key for authors table
			Integer userAccountId = 1;
			while (true) {
				List<String> tuple = readProjects.next();
				if (tuple == null) {
					break;
				}
				Iterator<String> i = tuple.iterator();
				CurrentProject project = new CurrentProject();
				//project.setUserAccountId(userAccountId++);	
				//project.setFileName(i.next());
				project.setProjectName(i.next());
				project.setEngineeringCategory(i.next());
//				for(int j = 0; j < 5; j++) {
//					project.addToKeywords(i.next());
//				}
//				for(int k = 4; k < 5; k++) {
//					project.addToAuthors(i.next());
//				}
				//project.addToAuthors(i.next());
				projectList.add(project);
			}
			return projectList;
		} finally {
			readProjects.close();
		}
	}
	
	public static List<UserAccount> getUser() throws IOException {
		List<UserAccount> userList = new ArrayList<UserAccount>();
		ReadCSV readUsers = new ReadCSV("author.csv");
		try {
			// auto-generated primary key for books table
			Integer userAccountId = 1;
			while (true) {
				List<String> tuple = readUsers.next();
				if (tuple == null) {
					break;
				}
				Iterator<String> i = tuple.iterator();
				UserAccount user = new UserAccount();
				//user.setUserAccountId(userAccountId++);
				user.setFirstName(i.next());
				user.setLastName(i.next());
				userList.add(user);
			}
			return userList;
		} finally {
			readUsers.close();
		}
	}
}
