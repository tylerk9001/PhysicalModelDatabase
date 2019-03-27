package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ycp.cs320.lab02.model.UploadProject;

public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Upload Servlet: doGet");	
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/upload/upload.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		UploadProject newProject = new UploadProject();
		
		String projectName = req.getParameter("projectName");
		String category = req.getParameter("categories");
		String keywords = req.getParameter("keyword1");
		String authors = req.getParameter("author1");
		String modelDesc = req.getParameter("modelDesc");
		String engineeringPrinciple = req.getParameter("engineeringPrinciple");
		String item1 = req.getParameter("item1");
		String quantity1 = req.getParameter("quantity1");
		String costAndBuild1 = req.getParameter("costAndBuild1");
		String desc1 = req.getParameter("desc1");
		String beforeClass = req.getParameter("beforeClass");
		String inClass = req.getParameter("inClass");
		String other = req.getParameter("other");
		
		
		
		System.out.println("");
		System.out.println("Project name: " + projectName);
		System.out.println("Engineering Principle: " + category);
		System.out.println("Keywords: " + keywords);
		System.out.println("Submitted By: " + authors);
		System.out.println("Model Description: " + modelDesc);
		System.out.println("Engineering Principle: " + engineeringPrinciple);
		System.out.println("Item: " + item1);
		System.out.println("Quantity: " + quantity1);
		System.out.println("Cost and Build Time: " + costAndBuild1);
		System.out.println("Description/Details: " + desc1);
		System.out.println("Before Class: " + beforeClass);
		System.out.println("In Class: " + inClass);
		System.out.println("Other: " + other);
		System.out.println("");
		
		
		req.setAttribute("projectName", projectName);
		req.setAttribute("category", category);
		req.setAttribute("keywords", keywords);
		req.setAttribute("authors", authors);
		req.setAttribute("modelDesc", modelDesc);
		req.setAttribute("engineeringPrinciple", engineeringPrinciple);
		req.setAttribute("item", item1);
		req.setAttribute("quantity", quantity1);
		req.setAttribute("costAndBuild", costAndBuild1);
		req.setAttribute("desc", desc1);
		req.setAttribute("beforeClass", beforeClass);
		req.setAttribute("inClass", inClass);
		req.setAttribute("other", other);
		req.getRequestDispatcher("/_view/upload/uploadConfirm.jsp").forward(req, resp);
		System.out.println("Upload Servlet: doPost");
		
	}
}
