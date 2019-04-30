package edu.ycp.cs320.lab02.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ycp.cs320.lab02.controller.UploadProjectController;
import edu.ycp.cs320.lab02.model.CurrentProject;


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
		
		System.out.println("Upload Servlet: doPost");
		
		// Grab the data from the form on the upload.jsp
		String projectName = req.getParameter("projectName");
		String category = req.getParameter("categories");
		String[] keywords = req.getParameterValues("keyword");
		String[] authors = req.getParameterValues("author");
		String modelDesc = req.getParameter("modelDesc");
		String engineeringPrinciple = req.getParameter("engineeringPrinciple");
		String item1 = req.getParameter("item1");
		String quantity1 = req.getParameter("quantity1");
		String costAndBuild1 = req.getParameter("costAndBuild1");
		String desc1 = req.getParameter("desc1");
		String beforeClass = req.getParameter("beforeClass");
		String inClass = req.getParameter("inClass");
		String other = req.getParameter("other");
		
		// Used to push the data from the form to the uploadConfirm page.
		req.setAttribute("projectName", projectName);
		req.setAttribute("category", category);
		req.setAttribute("keyword", keywords);
		req.setAttribute("author", authors);
		req.setAttribute("modelDesc", modelDesc);
		req.setAttribute("engineeringPrinciple", engineeringPrinciple);
		req.setAttribute("item", item1);
		req.setAttribute("quantity", quantity1);
		req.setAttribute("costAndBuild", costAndBuild1);
		req.setAttribute("desc", desc1);
		req.setAttribute("beforeClass", beforeClass);
		req.setAttribute("inClass", inClass);
		req.setAttribute("other", other);
		
		CurrentProject model = new CurrentProject();
		UploadProjectController controller = new UploadProjectController();
		
		ArrayList<String> keywordsList = new ArrayList<String>();
		for (int i = 0; i < keywords.length; i++) {
			keywordsList.add(keywords[i]);
		}
		
		ArrayList<String> authorsList = new ArrayList<String>();
		for (int i = 0; i < authors.length; i++) {
			authorsList.add(authors[i]);
		}
		
		ArrayList<String> requiredItems = new ArrayList<String>();
		requiredItems.add(item1);
		requiredItems.add(quantity1);
		requiredItems.add(costAndBuild1);
		requiredItems.add(desc1);

		model.setProjectName(projectName);
		model.setEngineeringCategory(category);
		model.setKeywords(keywordsList);
		model.setAuthors(authorsList);
		model.setModelDescription(modelDesc);
		model.setEngineeringPrinciple(engineeringPrinciple);
		model.setRequiredItems(requiredItems);
		model.setBeforeClass(beforeClass);
		model.setInClass(inClass);
		model.setOther(other);
		
		controller.setModel(model);
		
		boolean isAddedToDatabase = controller.addNewProjectToDatabase(model);
		
		if (isAddedToDatabase) {
			System.out.println("Project successfully added to database!");
		}

		
		
		req.getRequestDispatcher("/_view/index.jsp").forward(req, resp);
		
		
		
	}
}
