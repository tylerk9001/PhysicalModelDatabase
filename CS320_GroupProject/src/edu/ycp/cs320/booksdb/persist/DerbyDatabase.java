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
import edu.ycp.cs320.lab02.model.RatingReviews;
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
	public UserAccount getAccountInfoForUserLogin (final String email, final String password) {
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
	
	public boolean createAccountWithSignUpForm (String email, String password, String name) {
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
						stmt = conn.prepareStatement("insert into accounts (email, password, name) values (?, ?, ?)");
						stmt.setString(1, email);
						stmt.setString(2, password);
						stmt.setString(3, name);
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
	
	public ArrayList<CurrentProject> searchByKeywordsAuthorsProjectNameOrCategory (final String search) {
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
					stmt = conn.prepareStatement("select DISTINCT projectname, filename "
							+ "from projects, keywords, authors, projectauthors "
							+ "where (lower(projectname) like ? or upper(projectname) like ? "
							+ "or lower(category) like ? or upper(category) like ? "
							+ "or lower(keyword) like ? or upper(keyword) like ? "
							+ "or lower(authors.name) like ? or upper(authors.name) like ?) "
							+ "and (keywords.project_id = projects.project_id "
							+ "and projectauthors.project_id = projects.project_id "
							+ "and authors.account_id = projectauthors.author_id)");	
					stmt.setString(1, "%" + lower + "%");
					stmt.setString(2, "%" + upper + "%");
					stmt.setString(3, "%" + lower + "%");
					stmt.setString(4, "%" + upper + "%");
					stmt.setString(5, "%" + lower + "%");
					stmt.setString(6, "%" + upper + "%");
					stmt.setString(7, "%" + lower + "%");
					stmt.setString(8, "%" + upper + "%");
										
					ArrayList<CurrentProject> list = new ArrayList<CurrentProject>();
					
					// initialize boolean variable
					Boolean found = false;
					
					resultSet = stmt.executeQuery();
					
					while (resultSet.next()) {
						found = true;
						
						CurrentProject project = new CurrentProject();
						loadSearch(project, resultSet, 1);
						
						

						list.add(project);
					}
					
					return list;
					
				} finally {
					DBUtil.closeQuietly(resultSet);
					DBUtil.closeQuietly(stmt);
				}
			}
		});
	}
	
	public ArrayList<CurrentProject> checkForProjectsCreatedByAccount (final String name) {
		return executeTransaction(new Transaction<ArrayList<CurrentProject>>() {
			@SuppressWarnings("resource")
			@Override
			public ArrayList<CurrentProject> execute(Connection conn) throws SQLException {
				PreparedStatement stmt = null;
				ResultSet resultSet = null;
				

								
				try {
					stmt = conn.prepareStatement("select DISTINCT projectname, filename "
							+ "from projects, authors, projectauthors "
							+ "where authors.name = ? "
							+ "and authors.account_id = projectauthors.author_id "
							+ "and projectauthors.project_id = projects.project_id");
					stmt.setString(1, name);

					ArrayList<CurrentProject> list = new ArrayList<CurrentProject>();
					
					// initialize boolean variable
					Boolean found = false;
					
					resultSet = stmt.executeQuery();
					
					while (resultSet.next()) {
						found = true;
						CurrentProject project = new CurrentProject();
						loadSearch(project, resultSet, 1);
						list.add(project);
					}
					
					return list;
					
				} finally {
					DBUtil.closeQuietly(resultSet);
					DBUtil.closeQuietly(stmt);
				}
			}
		});
	}
	
	public ArrayList<CurrentProject> retrieveAllProjectsInDatabase () {
		return executeTransaction(new Transaction<ArrayList<CurrentProject>>() {
			@SuppressWarnings("resource")
			@Override
			public ArrayList<CurrentProject> execute(Connection conn) throws SQLException {
				PreparedStatement stmt = null;
				ResultSet resultSet = null;
				

								
				try {
					stmt = conn.prepareStatement("select projectname, fileName "
							+ "from projects order by category asc");
					
					ArrayList<CurrentProject> list = new ArrayList<CurrentProject>();
					
					// initialize boolean variable
					Boolean found = false;
					
					resultSet = stmt.executeQuery();
					
					while (resultSet.next()) {
						found = true;
						CurrentProject project = new CurrentProject();
						loadSearch(project, resultSet, 1);
						list.add(project);
					}
					
					
					return list;
					
				} finally {
					DBUtil.closeQuietly(resultSet);
					DBUtil.closeQuietly(stmt);
				}
			}
		});
	}
	
	public ArrayList<CurrentProject> retrieveAllProjectsInDatabase1 () {
		return executeTransaction(new Transaction<ArrayList<CurrentProject>>() {
			@SuppressWarnings("resource")
			@Override
			public ArrayList<CurrentProject> execute(Connection conn) throws SQLException {
				PreparedStatement stmt = null;
				ResultSet resultSet = null;
				

								
				try {
					stmt = conn.prepareStatement("select projectname, fileName "
							+ "from projects order by category asc");
					
					ArrayList<CurrentProject> list = new ArrayList<CurrentProject>();
					
					// initialize boolean variable
					Boolean found = false;
					
					resultSet = stmt.executeQuery();
					
					while (resultSet.next()) {
						found = true;
						CurrentProject project = new CurrentProject();
						loadSearch(project, resultSet, 1);
						list.add(project);
					}
					
					
					return list;
					
				} finally {
					DBUtil.closeQuietly(resultSet);
					DBUtil.closeQuietly(stmt);
				}
			}
		});
	}
	
	public boolean addNewProjectToDatabase (String projectName, String engineeringCategory, ArrayList<String> keywords, 
			ArrayList<String> authors, String modelDescription, String engineeringPrinciple, 
			ArrayList<String[]> requiredItems, 
			String beforeClass, String inClass, String other) {
		return executeTransaction(new Transaction<Boolean>() {
			@SuppressWarnings("resource")
			@Override
			public Boolean execute(Connection conn) throws SQLException {
				conn.setAutoCommit(true);
				
				PreparedStatement stmt = null;
				PreparedStatement stmt2 = null;
				ResultSet resultSet2 = null;
				PreparedStatement stmt3 = null;
				ResultSet resultSet3 = null;
				PreparedStatement stmt4 = null;
				PreparedStatement stmt5 = null;
				String filePath = "http://locahost:8081/project/useruploaded";
				int project_id;
				
				stmt = conn.prepareStatement("insert into projects (projectName, category, fileName, modelDescription, engineeringPrinciple, beforeClass, inClass, other) "
						+ "values (?, ?, ?, ?, ?, ?, ?, ?)");
				stmt.setString(1, projectName);
				stmt.setString(2, engineeringCategory);
				stmt.setString(3, filePath);
				stmt.setString(4, modelDescription);
				stmt.setString(5, engineeringPrinciple);
				stmt.setString(6, beforeClass);
				stmt.setString(7, inClass);
				stmt.setString(8, other);
				stmt.executeUpdate();
				
				
				stmt2 = conn.prepareStatement("select project_id from projects "
						+ "where projectName = ?");
				stmt2.setString(1, projectName);
				resultSet2 = stmt2.executeQuery();
				resultSet2.next();
				Object project_IDResult = resultSet2.getObject(1);
				String id = project_IDResult.toString();
				project_id = Integer.parseInt(id);
				
				for (int i = 0; i < authors.size(); i++) {
					String currentAuthor = authors.get(i);
					
					stmt3 = conn.prepareStatement("select account_id from authors "
							+ "where name = ?");
					stmt3.setString(1,  currentAuthor);
					resultSet3 = stmt3.executeQuery();
					resultSet3.next();
					Object author_IDResult = resultSet3.getObject(1);
					String id2 = author_IDResult.toString();
					int author_id = Integer.parseInt(id2);
					
					stmt4 = conn.prepareStatement("insert into projectAuthors (project_id, author_id) values (?, ?)");
					stmt4.setInt(1,  project_id);
					stmt4.setInt(2,  author_id);
					stmt4.executeUpdate();
				}
				
				String keywordString = keywords.get(0);
				for (int i = 1; i < keywords.size(); i++) {
					keywordString = keywordString + ", " + keywords.get(i);
				}
				stmt4 = conn.prepareStatement("insert into keywords (project_id, keyword) values (?, ?)");
				stmt4.setInt(1,  project_id);
				stmt4.setString(2,  keywordString);
				stmt4.executeUpdate();
				
				for (int i = 0; i < requiredItems.size(); i++) {
						String item = requiredItems.get(i)[0];
						String quantity = requiredItems.get(i)[1];
						String cost = requiredItems.get(i)[2];
						String description = requiredItems.get(i)[3];
						
						stmt5 = conn.prepareStatement("insert into requiredItems (project_id, item, quantity, cost, description)"
								+ "values (?, ?, ?, ?, ?)");
						stmt5.setInt(1, project_id);
						stmt5.setString(2, item);
						stmt5.setString(3, quantity);
						stmt5.setString(4, cost);
						stmt5.setString(5, description);
						stmt5.executeUpdate();
				}
				////////////////////
				project_id = 1;
				if (project_id != 0) {
					return true;
				} else {
					return false;
				}
			} 
		});
	}
	
	public ArrayList<RatingReviews> retrieveReviewByProjectName (final String name) {
		return executeTransaction(new Transaction<ArrayList<RatingReviews>>() {
			@SuppressWarnings("resource")
			@Override
			public ArrayList<RatingReviews> execute(Connection conn) throws SQLException {
				PreparedStatement stmt = null;
				ResultSet resultSet = null;
				
//				System.out.print(name);
								
				try {
					String lower = name.toLowerCase();
					String upper = name.toUpperCase();
					stmt = conn.prepareStatement("select DISTINCT title, rating, review, name, reviews.fileName, projectname "
							+ "from projects, reviews, authors, authorReviews, projectReviews "
							+ "where (lower(projectname) like ? or upper(projectname) like ? "
							+ "and reviews.review_id = projectReviews.review_id "
							+ "and reviews.review_id = authorReviews.review_id "
							+ "and projects.project_id = projectReviews.project_id "
							+ "and authors.account_id = authorReviews.author_id)");	
					stmt.setString(1, "%" + lower + "%");
					stmt.setString(2, "%" + upper + "%");
										
					ArrayList<RatingReviews> list = new ArrayList<RatingReviews>();
					
					// initialize boolean variable
					Boolean found = false;
					
					resultSet = stmt.executeQuery();
					
					while (resultSet.next()) {
						found = true;
						
						RatingReviews review = new RatingReviews();
						loadReview(review, resultSet, 1);
						list.add(review);
					}
					
					return list;
					
				} finally {
					DBUtil.closeQuietly(resultSet);
					DBUtil.closeQuietly(stmt);
				}
			}
		});
	}
	
	public ArrayList<RatingReviews> retrieveReviewByAuthorName (final String name) {
		return executeTransaction(new Transaction<ArrayList<RatingReviews>>() {
			@SuppressWarnings("resource")
			@Override
			public ArrayList<RatingReviews> execute(Connection conn) throws SQLException {
				PreparedStatement stmt = null;
				ResultSet resultSet = null;
				
//				System.out.print(name);
								
				try {
					String lower = name.toLowerCase();
					String upper = name.toUpperCase();
					stmt = conn.prepareStatement("select DISTINCT title, rating, review, name, reviews.fileName, projectname "
							+ "from projects, reviews, authors, authorReviews, projectReviews "
							+ "where (lower(authors.name) like ? or upper(authors.name) like ?) "
							+ "and (reviews.review_id = projectReviews.review_id "
							+ "and reviews.review_id = authorReviews.review_id "
							+ "and projects.project_id = projectReviews.project_id "
							+ "and authors.account_id = authorReviews.author_id)");	
					stmt.setString(1, "%" + lower + "%");
					stmt.setString(2, "%" + upper + "%");
										
					ArrayList<RatingReviews> list = new ArrayList<RatingReviews>();
					
					// initialize boolean variable
					Boolean found = false;
					
					resultSet = stmt.executeQuery();
					
					while (resultSet.next()) {
						found = true;
						
						RatingReviews review = new RatingReviews();
						loadReview(review, resultSet, 1);
						list.add(review);
					}
					
					return list;
					
				} finally {
					DBUtil.closeQuietly(resultSet);
					DBUtil.closeQuietly(stmt);
				}
			}
		});
	}
	
	public boolean addReview (int rating, String projectName, String authorName, String review, String title) {
		return executeTransaction(new Transaction<Boolean>() {
			@SuppressWarnings("resource")
			@Override
			public Boolean execute(Connection conn) throws SQLException {
				conn.setAutoCommit(false);
				
				PreparedStatement stmt = null;
				PreparedStatement stmt2 = null;
				ResultSet resultSet2 = null;
				PreparedStatement stmt3 = null;
				ResultSet resultSet3 = null;
				PreparedStatement stmt4 = null;
				ResultSet resultSet4 = null;
				PreparedStatement stmt5 = null;
				PreparedStatement stmt6 = null;
				String filePath = "http://locahost:8081/project/review";
				int project_id;
				int review_id;
				int author_id;
				
				stmt = conn.prepareStatement("insert into reviews (title, rating, review, fileName) "
						+ "values (?, ?, ?, ?)");
				stmt.setString(1, title);
				stmt.setInt(2, rating);
				stmt.setString(3, review);
				stmt.setString(4, filePath);
				stmt.executeUpdate();
				
				
				stmt2 = conn.prepareStatement("select project_id from projects "
						+ "where projectName = ?");
				stmt2.setString(1, projectName);
				resultSet2 = stmt2.executeQuery();
				resultSet2.next();
				Object project_IDResult = resultSet2.getObject(1);
				String id = project_IDResult.toString();
				project_id = Integer.parseInt(id);
	

				stmt3 = conn.prepareStatement("select review_id from reviews "
						+ "where title = ?");
				stmt3.setString(1, title);
				resultSet3 = stmt3.executeQuery();
				resultSet3.next();
				Object review_IDResult = resultSet3.getObject(1);
				String id2 = review_IDResult.toString();
				review_id = Integer.parseInt(id2);
				
				
				stmt4 = conn.prepareStatement("select account_id from authors "
						+ "where name = ?");
				stmt4.setString(1,  authorName);
				resultSet4 = stmt4.executeQuery();
				resultSet4.next();
				Object author_IDResult = resultSet4.getObject(1);
				String id3 = author_IDResult.toString();
				author_id = Integer.parseInt(id3);
				
				stmt5 = conn.prepareStatement("insert into projectReviews (project_id, review_id) values (?, ?)");
				stmt5.setInt(1,  project_id);
				stmt5.setInt(2,  review_id);
				stmt5.executeUpdate();
				
				stmt6 = conn.prepareStatement("insert into authorReviews (author_id, review_id) values (?, ?)");
				stmt6.setInt(1,  author_id);
				stmt6.setInt(2,  review_id);
				stmt6.executeUpdate();
				
				////////////////////
				project_id = 1;
				if (project_id != 0) {
					return true;
				} else {
					return false;
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
		account.setName(resultSet.getString(index++));
	}
	
	private void loadSearch(CurrentProject project, ResultSet resultSet, int index) throws SQLException {
		project.setProjectName(resultSet.getString(index++));
		project.setFileName(resultSet.getString(index++));
	}
	
	private void loadReview(RatingReviews review, ResultSet resultSet, int index) throws SQLException {
		review.setReviewTitle(resultSet.getString(index++));
		review.setRating(Integer.parseInt(resultSet.getString(index++)));
		review.setReview(resultSet.getString(index++));
		review.setAuthorName(resultSet.getString(index++));
		review.setFileName(resultSet.getString(index++));
		review.setProjectName(resultSet.getString(index++));
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
				PreparedStatement stmt7 = null;
				PreparedStatement stmt8 = null;
				PreparedStatement stmt9 = null;
				
				try {
					stmt1 = conn.prepareStatement(
						"create table authors (" +
						"	account_id integer primary key " +
						"		generated always as identity (start with 1, increment by 1), " +									
						"	name varchar(150))"
					);	
					stmt1.executeUpdate();
					
					stmt2 = conn.prepareStatement(
							"create table projects (" +
							"	project_id integer primary key " +
							"       generated always as identity (start with 1, increment by 1), " +
							"	projectName varchar(70)," +
							"   category varchar(70), " +
							"	fileName varchar(70), " + 
							"	modelDescription varchar(2000), " + 
							"	engineeringPrinciple varchar(2000), " + 
							"	beforeClass varchar(2000), " + 
							"	inClass varchar(2000), " + 
							"	other varchar(2000)" + 
							")"
					);
					stmt2.executeUpdate();
					
					stmt3 = conn.prepareStatement(
							"create table accounts (" +
							"	account_id integer primary key " +
							"		generated always as identity (start with 1, increment by 1), " +									
							"   email varchar(70)," +
							"   password varchar(70)," +
							"	name varchar(70))"
						);	
					stmt3.executeUpdate();
						
					stmt4 = conn.prepareStatement(
							"create table projectAuthors (" +
							"	project_id integer, " +
							"   author_id integer" +
							")"
						);	
					stmt4.executeUpdate();
						
					stmt5 = conn.prepareStatement(
							"create table keywords (" +
							"	project_id integer, " +
							"   keyword varchar(500)" +
							")"
						);	
					stmt5.executeUpdate();
					
					stmt6 = conn.prepareStatement(
							"create table reviews (" +
							" review_id integer primary key " +
							" 	generated always as identity (start with 1, increment by 1), " + 
							" title varchar(100), " +
							" rating integer, " +
							" review varchar(500), " +
							" fileName varchar(70) "+
							")"
						);	
					stmt6.executeUpdate();
						
					stmt7 = conn.prepareStatement(
							"create table requiredItems (" +
							"	project_id integer, " +
							"	item varchar(70)," +
							"   quantity varchar(70), " +
							"	cost varchar(70)," + 
							"	description varchar(200)" +
							")"
					);
					stmt7.executeUpdate();
					
					stmt8 = conn.prepareStatement(
							"create table projectReviews (" +
							"	project_id integer, " +
							"   review_id integer" +
							")"
						);	
					stmt8.executeUpdate();
						
					stmt9 = conn.prepareStatement(
							"create table authorReviews (" +
							"	author_id integer, " +
							"   review_id integer" +
							")"
						);	
					stmt9.executeUpdate();
						
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
					insertProject = conn.prepareStatement("insert into projects (projectName, category, fileName, modelDescription, engineeringPrinciple, beforeClass, inClass, other) values (?, ?, ?, ?, ?, ?, ?, ?)");
					for (CurrentProject project : projectList) {
						insertProject.setString(1, project.getProjectName());
						insertProject.setString(2, project.getEngineeringCategory());
						insertProject.setString(3, project.getFileName());
						insertProject.setString(4, project.getModelDescription());
						insertProject.setString(5, project.getEngineeringPrinciple());
						insertProject.setString(6, project.getBeforeClass());
						insertProject.setString(7, project.getInClass());
						insertProject.setString(8, project.getOther());

						insertProject.addBatch();
					}
					insertProject.executeBatch();
					
					// populate books table (do this after authors table,
					// since author_id must exist in authors table before inserting book)
					insertAuthor = conn.prepareStatement("insert into authors (name) values (?)");
					for (UserAccount account : accountList) {
						insertAuthor.setString(1, account.getName());
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
						insertKeywords.setInt(1, keyword.getProjectID());
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
