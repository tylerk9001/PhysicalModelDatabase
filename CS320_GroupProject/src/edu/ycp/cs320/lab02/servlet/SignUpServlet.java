 package edu.ycp.cs320.lab02.servlet;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ycp.cs320.lab02.controller.SignUpController;
import edu.ycp.cs320.lab02.model.EmailValidator;
import edu.ycp.cs320.lab02.model.PasswordEncrypting;
import edu.ycp.cs320.lab02.model.UserAccount;

public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("SignUp Servlet: doGet");	
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/login/signup.jsp").forward(req, resp);
	}
	
	@SuppressWarnings("static-access")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("SignUp Servlet: doPost");	
		
		SignUpController controller = new SignUpController();
		UserAccount newAccount = new UserAccount();
		PasswordEncrypting newPassword = new PasswordEncrypting();
		EmailValidator validateEmail = new EmailValidator();
		
		HttpSession session = req.getSession(true);
		
		String firstName = req.getParameter("firstname");
		String lastName = req.getParameter("lastname");
		String name = firstName + " " + lastName;
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String retypePassword = req.getParameter("retypePassword");
		String secret = "PhysicalModelDatabase";

		
		
		boolean accountCreationSuccessful = false;
		
		if (firstName != "" && firstName != null && lastName != "" && lastName != null 
				&& email != "" && email != null && password != "" && password != null 
				&& retypePassword != "" && retypePassword != null) {
			if (password.equals(retypePassword) && validateEmail.validate(email) == true) {
				newAccount.setName(name);
				newAccount.setEmail(email);
				newAccount.setPassword(newPassword.encrypt(password, secret));
				
				controller.setModel(newAccount);
				accountCreationSuccessful = controller.createAccount(newAccount);
				
			} else if (!password.equals(retypePassword) || !validateEmail.validate(email)) {
				if (!password.equals(retypePassword)) {
					req.setAttribute("passwordErrorMessage", "- Passwords do not match.");
				}
				if (!validateEmail.validate(email)) {
					req.setAttribute("emailErrorMessage", "- Please enter a valid email.");	
				}
			}
		}
		
		if (accountCreationSuccessful == true) {
			session.setAttribute("login", true);
			session.setAttribute("name", newAccount.getName());
			
			resp.sendRedirect("/project/login");
		} else {
			
			req.getRequestDispatcher("/_view/login/signup.jsp").forward(req, resp);	
			
		}
	}

	
}
