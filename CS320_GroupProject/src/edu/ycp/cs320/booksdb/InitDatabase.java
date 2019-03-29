package edu.ycp.cs320.booksdb;

import java.util.Scanner;

import edu.ycp.cs320.booksdb.persist.DatabaseProvider;
import edu.ycp.cs320.booksdb.persist.DerbyDatabase;

public class InitDatabase {
	public static void init(Scanner keyboard) {
		DatabaseProvider.setInstance(new DerbyDatabase());
	}
}
