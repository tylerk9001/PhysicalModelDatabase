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
//import edu.ycp.cs320.lab02.model.Search;
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
	public UserAccount getAccountInfo(final String email, final String password) {
		return executeTransaction(new Transaction<UserAccount>() {
			public UserAccount execute(Connection conn) throws SQLException {
				PreparedStatement stmt = null;
				ResultSet resultSet = null;
				
				try {
					stmt = conn.prepareStatement("select * from accounts " + "where email = ?");
					stmt.setString(1, email);
					
					UserAccount account = new UserAccount();
					
					resultSet = stmt.executeQuery();
					
					// for testing that a result was returned
					Boolean found = false;
					
					while (resultSet.next()) {
						found = true;
						loadAccount(account, resultSet, 1);
					}
					
					if (!found) {
						System.out.println("No accounts were found in the database with Email: " + email);
					}
					
					return account;

				} finally {
					DBUtil.closeQuietly(resultSet);
					DBUtil.closeQuietly(stmt);
				}
				
			}
		});
	}
	
	public boolean createAccount(String email, String password, String lastName, String firstName) {
		return executeTransaction(new Transaction<Boolean>() {
			@SuppressWarnings("resource")
			@Override
			public Boolean execute(Connection conn) throws SQLException {
				PreparedStatement stmt = null;
				ResultSet resultSet = null;
				
				try {
					stmt = conn.prepareStatement("select * from accounts where email = ?");
					stmt.setString(1, email);
					resultSet = stmt.executeQuery();
					
					// initialize boolean variable
					boolean found = false;
					
					while (resultSet.next()) {
						found = true;
					}
					
					if (!found) {
						stmt = conn.prepareStatement("insert into accounts (email, password, lastname, firstname) values (?, ?, ?, ?)");
						stmt.setString(1, email);
						stmt.setString(2, password);
						stmt.setString(3, lastName);
						stmt.setString(4, firstName);
						stmt.executeUpdate();
						
						return true;
					}
					else {
						return false;
					}
					
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
	
	private void loadAccount(UserAccount account, ResultSet resultSet, int index) throws SQLException {
		account.setUserAccountId(resultSet.getInt(index++));
		account.setEmail(resultSet.getString(index++));
		account.setPassword(resultSet.getString(index++));
		account.setLastName(resultSet.getString(index++));
		account.setFirstName(resultSet.getString(index++));
	}
	
	private void loadSearch(CurrentProject project, ResultSet resultSet, int index) throws SQLException {
		project.setProjectName(resultSet.getString(index++));
		project.setFileName(resultSet.getString(index++));
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
				PreparedStatement stmt6 = null;
				
				try {
					stmt1 = conn.prepareStatement(
						"create table authors (" +
						"	account_id integer primary key " +
						"		generated always as identity (start with 1, increment by 1), " +									
						"	firstname varchar(70)," +
						"	lastname varchar(70)" +
						")"
					);	
					stmt1.executeUpdate();
					
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
					
					stmt3 = conn.prepareStatement(
							"create table accounts (" +
							"	account_id integer primary key " +
							"		generated always as identity (start with 1, increment by 1), " +									
							"   email varchar(70)," +
							"   password varchar(70)," +
							"	lastname varchar(70)," +
							"	firstname varchar(70)" +
							")"
						);	
						stmt3.executeUpdate();
						
					stmt4 = conn.prepareStatement(
							"create table projectAuthors (" +
							"	project_id varchar(70), " +
							"   author_id varchar(70)" +
							")"
						);	
						stmt4.executeUpdate();
						
					stmt5 = conn.prepareStatement(
							"create table keywords (" +
							"	project_id varchar(70), " +
							"   keyword varchar(500)" +
							")"
						);	
						stmt5.executeUpdate();
					
					stmt6 = conn.prepareStatement(
							"create table reviews (" +
							" review_id integer primary key " +
							" 	generated always as identity (start with 1, increment by 1), " +
							" project_id varchar(70), " +
							" account_id varchar(70), "+
							" rating varchar(70), " +
							" review varchar(500)" +
							")"
						);	
						stmt6.executeUpdate();
						
					return true;
				} finally {
					DBUtil.closeQuietly(stmt1);
					DBUtil.closeQuietly(stmt2);
					DBUtil.closeQuietly(stmt3);
					DBUtil.closeQuietly(stmt4);
					DBUtil.closeQuietly(stmt5);
					DBUtil.closeQuietly(stmt6);
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
					
					// populate books table (do this after authors table,
					// since author_id must exist in authors table before inserting book)
					insertAuthor = conn.prepareStatement("insert into authors (firstName, lastName) values (?, ?)");
					for (UserAccount account : accountList) {
						insertAuthor.setString(1, account.getFirstName());
						insertAuthor.setString(2, account.getLastName());
						insertAuthor.addBatch();
					}
					insertAuthor.executeBatch();
					
					insertProjectsAuthors = conn.prepareStatement("insert into projectAuthors (project_id, author_id) values (?, ?)");
					for (ProjectsAuthors projectAuthor : projectsAuthorsList) {
						insertProjectsAuthors.setInt(1, projectAuthor.getProjectID());
						insertProjectsAuthors.setInt(2, projectAuthor.getAuthorID());
						insertProjectsAuthors.addBatch();
					}
					insertProjectsAuthors.executeBatch();
					
					
					insertKeywords = conn.prepareStatement("insert into keywords (project_id, keyword) values (?, ?)");
					for (Keywords keyword : keywordList) {
						insertKeywords.setString(1, keyword.getProjectID());
						String words = keyword.pullFromKeywords();
						for (int i = 0; i < 4; i++) {
							String temp = keyword.pullFromKeywords();
							if (temp != null) {
								 words += ", " + temp;
							}
						}
						insertKeywords.setString(2, words);
						insertKeywords.addBatch();
					}
					insertKeywords.executeBatch();
					
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
	
	public ArrayList<CurrentProject> search(final String search) {
		return executeTransaction(new Transaction<ArrayList<CurrentProject>>() {
			@SuppressWarnings("resource")
			@Override
			public ArrayList<CurrentProject> execute(Connection conn) throws SQLException {
				PreparedStatement stmt = null;
				ResultSet resultSet = null;
				
//				System.out.print(search);
								
				try {
					String lower = search.toLowerCase();
					String upper = search.toUpperCase();
					stmt = conn.prepareStatement("select projectname, filename from projects, keywords where ((lower(category) like ? or upper(category) like ?) or (lower(keyword) like ? or upper(keyword) like ?)) and CAST(keywords.project_id as int) = projects.project_id");
//					stmt = conn.prepareStatement("select projectname, filename "
//							+ "from projects, keywords, authors, projectauthors "
//							+ "where ((lower(category) like ? or upper(category) like ?) "
//							+ "or (lower(keyword) like ? or upper(keyword) like ?) "
//							+ "or (lower(authors.lastname) like ? or upper(authors.lastname) like ?)) "
//							+ "and (CAST(keywords.project_id as int) = projects.project_id "
//							+ "and CAST(projectauthors.project_id as int) = projects.project_id "
//							+ "and authors.account_id = CAST(projectauthors.author_id as int))");					
//					stmt.setString(1, "%" + lower + "%");
//					stmt.setString(2, "%" + upper + "%");
//					stmt.setString(3, "%" + lower + "%");
//					stmt.setString(4, "%" + upper + "%");
//					stmt.setString(5, "%" + lower + "%");
//					stmt.setString(6, "%" + upper + "%");
					
					stmt = conn.prepareStatement("select projectname, filename "
							+ "from projects, keywords, authors, projectauthors "
							+ "where ((lower(category) = ? or upper(category) = ?) or (lower(keyword) = ? or upper(keyword) = ?) or (lower(authors.lastname) = ? or upper(authors.lastname) = ?)) "
							+ "and (CAST(keywords.project_id as int) = projects.project_id and CAST(projectauthors.project_id as int) = projects.project_id and authors.account_id = CAST(projectauthors.author_id as int))");					
					stmt.setString(1, search);
					stmt.setString(2, search);
					stmt.setString(3, search);
					stmt.setString(4, search);
					stmt.setString(5, search);
					stmt.setString(6, search);
					
					ArrayList<CurrentProject> list = new ArrayList<CurrentProject>();
					
					// initialize boolean variable
					Boolean found = false;
					
					resultSet = stmt.executeQuery();
					
					while (resultSet.next()) {
						found = true;
						
						CurrentProject project = new CurrentProject();
						loadSearch(project, resultSet, 1);
						
						// test output
						System.out.println(project.getFileName());

						list.add(project);
					}
					
//					if (!found) {
//						something about no project found
//					}
					
					return list;
					
				} finally {
					DBUtil.closeQuietly(resultSet);
					DBUtil.closeQuietly(stmt);
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
