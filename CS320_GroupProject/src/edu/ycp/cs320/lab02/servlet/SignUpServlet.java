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
		String name = firstName + " " + lastName;
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String retypePassword = req.getParameter("retypePassword");
		
//		String data = password;
//		String algorithm = "SHA-256";
//		byte[] salt = createSalt();
		
		boolean noPasswordsMatch = false;
		boolean accountCreationSuccessful = false;
		
		if (firstName != "" && firstName != null && lastName != "" && lastName != null 
				&& email != "" && email != null && password != "" && password != null 
				&& retypePassword != "" && retypePassword != null) {
			if (password.equals(retypePassword)) {
				newAccount.setName(name);
				newAccount.setEmail(email);
//				try {
//					newAccount.setPassword(generateHash(data, algorithm, salt));
//				} catch (NoSuchAlgorithmException e) {
//					e.printStackTrace();
//				}
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
			session.setAttribute("name", newAccount.getName());
			
			resp.sendRedirect("/project/login");
		}
		else {
			
			req.getRequestDispatcher("/_view/login/signup.jsp").forward(req, resp);	
			
		}
	}


//	private static String generateHash(String data, String algorithm, byte[] salt) throws NoSuchAlgorithmException {
//		MessageDigest digest = MessageDigest.getInstance(algorithm);
//		digest.reset();
//		digest.update(salt);
//		byte[] hash = digest.digest(data.getBytes());
//		return bytesToStringHex(hash);
//	}
//	
//	private final static char[] hexArray = "0123456789ABCDEF".toCharArray();
//	
//	public static String bytesToStringHex(byte[] bytes) {
//		char[] hexChars = new char[bytes.length * 2];
//		for (int i = 0; i < bytes.length; i++) {
//			int v = bytes[i] & 0xFF;
//			hexChars[i * 2] = hexArray[v >>> 4];
//			hexChars[i * 2 + 1] = hexArray[v & 0x0F];
//		}
//		
//		return new String(hexChars);
//	}
//	
//	private static byte[] createSalt() {
//		byte[] bytes = new byte[20];
//		SecureRandom random = new SecureRandom();
//		random.nextBytes(bytes);
//		return bytes;
//	}
}
