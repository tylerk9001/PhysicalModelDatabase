package edu.ycp.cs320.lab02.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ycp.cs320.lab02.controller.SignUpController;
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


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("SignUp Servlet: doPost");	
		
		SignUpController controller = new SignUpController();
		UserAccount newAccount = new UserAccount();
		
		HttpSession session = req.getSession(true);
		
		String firstName = req.getParameter("firstname");
		String lastName = req.getParameter("lastname");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String retypePassword = req.getParameter("retypePassword");
		
		boolean noPasswordsMatch = false;
		boolean accountCreationSuccessful = false;
		
		if (firstName != "" && firstName != null && lastName != "" && lastName != null 
				&& email != "" && email != null && password != "" && password != null 
				&& retypePassword != "" && retypePassword != null) {
			if (password.equals(retypePassword)) {
				newAccount.setFirstName(firstName);
				newAccount.setLastName(lastName);
				newAccount.setEmail(email);
				newAccount.setPassword(password);
				controller.setModel(newAccount);
				accountCreationSuccessful = controller.createAccount(newAccount);
			}
			
			else {
				noPasswordsMatch = true;
			}
			
		}
		else {
			accountCreationSuccessful = false;
		}
		
		
		if (accountCreationSuccessful == true) {
			session.setAttribute("login", true);
			session.setAttribute("firstname", newAccount.getFirstName());
			
			resp.sendRedirect("/project/login");
		}
		else {
			
			req.getRequestDispatcher("/_view/login/signup.jsp").forward(req, resp);	
			
		} 
	}
}
