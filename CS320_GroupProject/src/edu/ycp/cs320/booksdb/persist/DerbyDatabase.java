package edu.ycp.cs320.booksdb.persist;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.ycp.cs320.lab02.model.CurrentProject;
import edu.ycp.cs320.lab02.model.Keywords;
import edu.ycp.cs320.lab02.model.UserAccount;
import edu.ycp.cs320.lab02.model.ProjectsAuthors;
import edu.ycp.cs320.sqldemo.DBUtil;

public class DerbyDatabase implements IDatabase {
	static {
		try {
			Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		} catch (Exception e) {
			throw new IllegalStateException("Could not load Derby driver");
		}
	}
	
	private interface Transaction<ResultType> {
		public ResultType execute(Connection conn) throws SQLException;
	}

	private static final int MAX_ATTEMPTS = 10;

	
	@Override
	public List<CurrentProject> InsertProjectsFromPDF (String projectName, String engineeringCategory, String keywords, String authors) {
		return executeTransaction(new Transaction<List<CurrentProject>>() {
			@Override
			public List<CurrentProject> execute(Connection conn) throws SQLException {
				PreparedStatement stmt = null;
				ResultSet resultSet = null;
				
				try {
					// insert a new project from the pdf file
					stmt = conn.prepareStatement(
							"insert into projects (projectName, category, keywords, authors)" 
							+ "values (?, ?, ?, ?)"
					);
					stmt.setString(1, projectName);
					stmt.setString(2, engineeringCategory);
					stmt.setString(3, keywords);
					stmt.setString(4, authors);
					
					List<CurrentProject> currentProjectResult = new ArrayList<CurrentProject>();
					
					resultSet = stmt.executeQuery();

					
					while (resultSet.next()) {
						// create new CurrentProject object
						// retrieve attributes from resultSet starting with index 1
						CurrentProject project = new CurrentProject();
						loadProject(project, resultSet, 1);
					
						currentProjectResult.add(project);
					}
					
					System.out.println("Project successfully added to the projects table in SQL Database.");
					
					return currentProjectResult;
				} finally {
					DBUtil.closeQuietly(resultSet);
					DBUtil.closeQuietly(stmt);
				}
				
			}
		});
	}
	
	
	@Override
	public List<UserAccount> InsertAccounts (String firstname, String lastname) {
		return executeTransaction(new Transaction<List<UserAccount>>() {
			@Override
			public List<UserAccount> execute(Connection conn) throws SQLException {
				PreparedStatement stmt = null;
				ResultSet resultSet = null;
				
				try {
					// insert a new account based on author name from a pdf project
					stmt = conn.prepareStatement(
							"insert into accounts (firstName, lastName)" 
							+ "values (?, ?)"
					);
					stmt.setString(1, firstname);
					stmt.setString(2, lastname);
					
					List<UserAccount> userAccounts = new ArrayList<UserAccount>();
					
					resultSet = stmt.executeQuery();
					
					// for testing that a result was returned
					Boolean found = false;
					
					while (resultSet.next()) {
						found = true;
						
						// create new CurrentProject object
						// retrieve attributes from resultSet starting with index 1
						UserAccount account = new UserAccount();
						loadAccount(account, resultSet, 1);
					
						userAccounts.add(account);
					}
					
					System.out.println("Project successfully added to the projects table in SQL Database.");
					
					return userAccounts;
				} finally {
					DBUtil.closeQuietly(resultSet);
					DBUtil.closeQuietly(stmt);
				}
				
			}
		});
	}
	
	
	public<ResultType> ResultType executeTransaction(Transaction<ResultType> txn) {
		try {
			return doExecuteTransaction(txn);
		} catch (SQLException e) {
			throw new PersistenceException("Transaction failed", e);
		}
	}
	
	public<ResultType> ResultType doExecuteTransaction(Transaction<ResultType> txn) throws SQLException {
		Connection conn = connect();
		
		try {
			int numAttempts = 0;
			boolean success = false;
			ResultType result = null;
			
			while (!success && numAttempts < MAX_ATTEMPTS) {
				try {
					result = txn.execute(conn);
					conn.commit();
					success = true;
				} catch (SQLException e) {
					if (e.getSQLState() != null && e.getSQLState().equals("41000")) {
						// Deadlock: retry (unless max retry count has been reached)
						numAttempts++;
					} else {
						// Some other kind of SQLException
						throw e;
					}
				}
			}
			
			if (!success) {
				throw new SQLException("Transaction failed (too many retries)");
			}
			
			// Success!
			return result;
		} finally {
			DBUtil.closeQuietly(conn);
		}
	}

	private Connection connect() throws SQLException {
		Connection conn = DriverManager.getConnection("jdbc:derby:test.db;create=true");
		
		// Set autocommit to false to allow execution of
		// multiple queries/statements as part of the same transaction.
		conn.setAutoCommit(false);
		
		return conn;
	}
	
	private void loadProject(CurrentProject project, ResultSet resultSet, int index) throws SQLException {
		project.setProjectName(resultSet.getString(index++));
		project.setEngineeringCategory(resultSet.getString(index++));
//		project.addToKeywords(resultSet.getString(index++));
//		project.addToAuthors(resultSet.getString(index++));
	}
	
	
	private void loadAccount(UserAccount account, ResultSet resultSet, int index) throws SQLException {
		account.setFirstName(resultSet.getString(index++));
		account.setLastName(resultSet.getString(index++));
	}	
	
	
	public void createTables() {
		executeTransaction(new Transaction<Boolean>() {
			@Override
			public Boolean execute(Connection conn) throws SQLException {
				PreparedStatement stmt1 = null;
				PreparedStatement stmt2 = null;
				PreparedStatement stmt3 = null;
				PreparedStatement stmt4 = null;
				PreparedStatement stmt5 = null;
				
				try {
//					stmt1 = conn.prepareStatement(
//						"create table authors (" +
//						"	account_id integer primary key " +
//						"		generated always as identity (start with 1, increment by 1), " +									
//						"	firstname varchar(70)," +
//						"	lastname varchar(70)" +
//						")"
//					);	
//					stmt1.executeUpdate();
					
					stmt2 = conn.prepareStatement(
							"create table projects (" +
							"	project_id integer primary key " +
							"       generated always as identity (start with 1, increment by 1), " +
							"	projectName varchar(70)," +
							"   category varchar(70), " +
							"	fileName varchar(70)" +
							")"
					);
					stmt2.executeUpdate();
//					
//					stmt3 = conn.prepareStatement(
//							"create table accounts (" +
//							"	account_id integer primary key " +
//							"		generated always as identity (start with 1, increment by 1), " +									
//							"	lastname varchar(70)," +
//							"	firstname varchar(70)," +
//							"   email varchar(70)," +
//							"   password varchar(70)" +
//							")"
//						);	
//						stmt3.executeUpdate();
//						
//					stmt4 = conn.prepareStatement(
//							"create table projectAuthors (" +
//							"	project_id varchar(70), " +
//							"   author_id varchar(70)" +
//							")"
//						);	
//						stmt4.executeUpdate();
//						
//					stmt5 = conn.prepareStatement(
//							"create table keywords (" +
//							"	project_id varchar(70), " +
//							"   keyword varchar(500)" +
//							")"
//						);	
//						stmt5.executeUpdate();
//					
					return true;
				} finally {
					DBUtil.closeQuietly(stmt1);
					DBUtil.closeQuietly(stmt2);
					DBUtil.closeQuietly(stmt3);
					DBUtil.closeQuietly(stmt4);
					DBUtil.closeQuietly(stmt5);
				}
			}
		});
	}
	
	public void loadInitialData() {
		executeTransaction(new Transaction<Boolean>() {
			@Override
			public Boolean execute(Connection conn) throws SQLException {
				List<CurrentProject> projectList;
				List<UserAccount> accountList;
				List<ProjectsAuthors> projectsAuthorsList;
				List<Keywords> keywordList;
				
				try {
					projectList = InitialData.getProjects();
					accountList = InitialData.getUser();
					projectsAuthorsList = InitialData.getProjectsAuthors();
					keywordList = InitialData.getKeywords();
				} catch (IOException e) {
					throw new SQLException("Couldn't read initial data", e);
				}

				PreparedStatement insertProject = null;
				PreparedStatement insertAuthor = null;
				PreparedStatement insertProjectsAuthors = null;
				PreparedStatement insertKeywords = null;

				try {
					// populate authors table (do authors first, since author_id is foreign key in books table)
					insertProject = conn.prepareStatement("insert into projects (projectName, category, fileName) values (?, ?, ?)");
					for (CurrentProject project : projectList) {
						insertProject.setString(1, project.getProjectName());
						insertProject.setString(2, project.getEngineeringCategory());
						insertProject.setString(3, project.getFileName());
						insertProject.addBatch();
					}
					insertProject.executeBatch();
					
//					// populate books table (do this after authors table,
//					// since author_id must exist in authors table before inserting book)
//					insertAuthor = conn.prepareStatement("insert into authors (firstName, lastName) values (?, ?)");
//					for (UserAccount account : accountList) {
//						insertAuthor.setString(1, account.getFirstName());
//						insertAuthor.setString(2, account.getLastName());
//						insertAuthor.addBatch();
//					}
//					insertAuthor.executeBatch();
//					
//					insertProjectsAuthors = conn.prepareStatement("insert into projectAuthors (project_id, author_id) values (?, ?)");
//					for (ProjectsAuthors projectAuthor : projectsAuthorsList) {
//						insertProjectsAuthors.setString(1, projectAuthor.getProjectID());
//						insertProjectsAuthors.setString(2, projectAuthor.getAuthorID());
//						insertProjectsAuthors.addBatch();
//					}
//					insertProjectsAuthors.executeBatch();
//					
//					
//					insertKeywords = conn.prepareStatement("insert into keywords (project_id, keyword) values (?, ?)");
//					for (Keywords keyword : keywordList) {
//						insertKeywords.setString(1, keyword.getProjectID());
//						String words = keyword.pullFromKeywords();
//						for (int i = 0; i < 4; i++) {
//							String temp = keyword.pullFromKeywords();
//							if (temp != null) {
//								 words += ", " + temp;
//							}
//						}
//						insertKeywords.setString(2, words);
//						insertKeywords.addBatch();
//					}
//					insertKeywords.executeBatch();
//					
					return true;
				} finally {
					DBUtil.closeQuietly(insertProject);
					DBUtil.closeQuietly(insertAuthor);
					DBUtil.closeQuietly(insertProjectsAuthors);
					DBUtil.closeQuietly(insertKeywords);					
				}
			}
		});
	}
	
	// The main method creates the database tables and loads the initial data.
	public static void main(String[] args) throws IOException {
		System.out.println("Creating tables...");
		DerbyDatabase db = new DerbyDatabase();
		db.createTables();
		
		System.out.println("Loading initial data...");
		db.loadInitialData();
		
		System.out.println("Success!");
	}
}
