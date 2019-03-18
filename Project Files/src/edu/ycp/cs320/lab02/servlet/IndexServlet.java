package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ycp.cs320.lab02.controller.GuessingGameController;
import edu.ycp.cs320.lab02.model.GuessingGame;

public class GuessingGameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("GuessingGame Servlet: doGet");	
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/guessingGame.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("GuessingGame Servlet: doPost");
		
		// now call the JSP to render the new page
		req.getRequestDispatcher("/_view/guessingGame.jsp").forward(req, resp);
	}

	// gets an Integer from the Posted form data, for the given attribute name
	private int getInteger(HttpServletRequest req, String name) {
		return Integer.parseInt(req.getParameter(name));
	}
}
