package edu.ycp.cs320.lab02.model;

import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

public class Login {

	private ArrayList<String> usernames;
	private ArrayList<String> passwords;
	private Map<String, String> credentials;
	
	// create model - test version
	public Login() {
		usernames = new ArrayList<String>();
		passwords = new ArrayList<String>();
		credentials = new TreeMap<String, String>();
		
		usernames.add("bkautz");
		usernames.add("tswann2");
		usernames.add("jstambaugh");
		
		passwords.add("admin");
		passwords.add("admin");
		passwords.add("admin");
		
		for (int i = 0; i < usernames.size(); i++) {
			credentials.put(usernames.get(i), passwords.get(i));
		}
	}		

	// login name - test version
	public boolean validateUserName(String name) {
		return credentials.containsKey(name);
	}

	// login credentials - test version
	public boolean validatePW(String name, String pw) {
		if (credentials.containsKey(name)) {
			if  (credentials.get(name).equals(pw)) {
				return true;
			}
		}			
		return false;
	}

}
