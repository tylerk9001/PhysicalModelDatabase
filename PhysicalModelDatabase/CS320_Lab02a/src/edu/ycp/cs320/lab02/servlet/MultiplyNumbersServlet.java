package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ycp.cs320.lab02.controller.NumbersController;
import edu.ycp.cs320.lab02.model.Numbers;

public class MultiplyNumbersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		System.out.println("MultiplyNumbers Servlet: doGet");	
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/multiplyNumbers.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("MultiplyNumbers Servlet: doPost");
		
		// create Numbers model 
		Numbers model = new Numbers();
		
		// holds the error message text, if there is any
		String errorMessage = null;

		// result of calculation goes here
		Double result = null;
		
		// decode POSTed form parameters and dispatch to controller
		try {
			Double first = getDoubleFromParameter(req.getParameter("first"));
			Double second = getDoubleFromParameter(req.getParameter("second"));

			// check for errors in the form data before using is in a calculation
			if (first == null || second == null) {
				errorMessage = "Please specify two numbers";
			}
			// otherwise, data is good, do the calculation
			// must create the controller each time, since it doesn't persist between POSTs
			// the view does not alter data, only controller methods should be used for that
			// thus, always call a controller method to operate on the data
			else {
				// create Numbers controller
				NumbersController controller = new NumbersController();
				// initialize numbers model/controller
				controller.setModel(model);
				
				// set the first value
				model.setFirst(first);
				// set the second value
				model.setSecond(second);
				// multiply numbers together
				controller.multiply();
			}
		} catch (NumberFormatException e) {
			errorMessage = "Invalid double";
		}
		
		// Add parameters as request attributes
		// this creates attributes named "first" and "second for the response, and grabs the
		// values that were originally assigned to the request attributes, also named "first" and "second"
		// they don't have to be named the same, but in this case, since we are passing them back
		// and forth, it's a good idea
		Double first = model.getFirst();
		Double second = model.getSecond();
		req.setAttribute("first", first);
		req.setAttribute("second", second);
		
		// add result objects as attributes
		// this adds the errorMessage text and the result to the response
		result = model.getResult();
		req.setAttribute("errorMessage", errorMessage);
		req.setAttribute("result", result);
		
		// Forward to view to render the result HTML document
		req.getRequestDispatcher("/_view/multiplyNumbers.jsp").forward(req, resp);
	}

	// gets double from the request with attribute named s
	private Double getDoubleFromParameter(String s) {
		if (s == null || s.equals("")) {
			return null;
		} else {
			return Double.parseDouble(s);
		}
	}
}
