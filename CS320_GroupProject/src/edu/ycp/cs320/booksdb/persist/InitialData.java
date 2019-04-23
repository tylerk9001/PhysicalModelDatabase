package edu.ycp.cs320.booksdb.persist;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import edu.ycp.cs320.lab02.model.CurrentProject;
import edu.ycp.cs320.lab02.model.Keywords;
import edu.ycp.cs320.lab02.model.UserAccount;
import edu.ycp.cs320.lab02.model.ProjectsAuthors;

public class InitialData {
	public static List<CurrentProject> getProjects() throws IOException {
		List<CurrentProject> projectList = new ArrayList<CurrentProject>();
		ReadCSV readProjects = new ReadCSV("projects.csv");
		try {
			// auto-generated primary key for authors table
			while (true) {
				List<String> tuple = readProjects.next();
				if (tuple == null) {
					break;
				}
				Iterator<String> i = tuple.iterator();
				CurrentProject project = new CurrentProject();
				project.setProjectName(i.next());
				project.setEngineeringCategory(i.next());
				project.setFileName(i.next());
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
			while (true) {
				List<String> tuple = readUsers.next();
				if (tuple == null) {
					break;
				}
				Iterator<String> i = tuple.iterator();
				UserAccount user = new UserAccount();
				user.setFirstName(i.next());
				user.setLastName(i.next());
				userList.add(user);
			}
			return userList;
		} finally {
			readUsers.close();
		}
	}
	public static List<ProjectsAuthors> getProjectsAuthors() throws IOException {
		List<ProjectsAuthors> projectsAuthorsList = new ArrayList<ProjectsAuthors>();
		ReadCSV readProjectsAuthors = new ReadCSV("projectAuthors.csv");
		try {
			while (true) {
				List<String> tuple = readProjectsAuthors.next();
				if (tuple == null) {
					break;
				}
				Iterator<String> i = tuple.iterator();
				ProjectsAuthors projectsAuthor = new ProjectsAuthors();
				
				String temp = "1";
				int temp1 = Integer.parseInt(temp);
				
				projectsAuthor.setProjectID(temp1);
				
				projectsAuthor.setAuthorID(temp1);
				projectsAuthorsList.add(projectsAuthor);
			}
			return projectsAuthorsList;
		} finally {
			readProjectsAuthors.close();
		}
	}
	
	public static List<Keywords> getKeywords() throws IOException {
		List<Keywords> keywordList = new ArrayList<Keywords>();
		ReadCSV readKeywords = new ReadCSV("keywords.csv");
		try {
			while (true) {
				List<String> tuple = readKeywords.next();
				if (tuple == null) {
					break;
				}
				Iterator<String> i = tuple.iterator();
				Keywords keywords = new Keywords();
				keywords.setProjectID(i.next());

				while (i.hasNext()) {
					keywords.addToKeywords(i.next());
				}
				keywordList.add(keywords);
			}
			return keywordList;
		} finally {
			readKeywords.close();
		}
	}
}
