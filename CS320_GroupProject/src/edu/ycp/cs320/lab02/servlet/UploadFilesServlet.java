package edu.ycp.cs320.lab02.servlet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import edu.ycp.cs320.lab02.controller.UploadProjectController;
import edu.ycp.cs320.lab02.model.CurrentProject;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.eclipse.jetty.http.MetaData.Request;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 1000,  maxRequestSize = 1024 * 1024 * 1000)

public class UploadFilesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	PrintWriter out = null;
	HttpSession session = null;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Upload Files Servlet: doGet");	
		
		
		// call JSP to generate empty form
		req.getRequestDispatcher("/_view/upload/uploadFiles.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("Upload Files Servlet: doPost");
		
		
		try {
			out = resp.getWriter();
			session = req.getSession(false);
			String folderName = "media";
			String uploadPath = req.getServletContext().getRealPath("") + folderName;
			File dir = new File(uploadPath);
			
			if (!dir.exists()) {
				dir.mkdirs();
			}
			Part filePart = req.getPart("file");
			String fileName = filePart.getSubmittedFileName();
			String path = folderName + File.separator + fileName;
			InputStream is = filePart.getInputStream();
			Files.copy(is, Paths.get(uploadPath + File.separator + fileName), StandardCopyOption.REPLACE_EXISTING);
			
		} catch (Exception e) {
			
		}
		
		req.getRequestDispatcher("/_view/upload/uploadFiles.jsp").forward(req, resp);
		
		
	}
}
