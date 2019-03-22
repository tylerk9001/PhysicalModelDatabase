package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ycp.cs320.lab02.controller.GuessingGameController;
import edu.ycp.cs320.lab02.model.GuessingGame;

public class FluFServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Flu_F Servlet: doGet");	
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/categories/construction/flu-f.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Flu_F Servlet: doPost");
		
		// now call the JSP to render the new page
		req.getRequestDispatcher("/_view/categories/construction/flu-f.jsp").forward(req, resp);
	}
}