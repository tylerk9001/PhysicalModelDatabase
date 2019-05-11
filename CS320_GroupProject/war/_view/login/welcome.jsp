<!DOCTYPE html>
<html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>
	.content-container {
		padding: 10px;
	}
	.container1-color {
		min-height: 770px;
		background-color: lightgray;
		padding: 10px;
		padding-left: 15px;
	}
	
	.access-btn {
    float: right;
    line-height: 60px;
}

	.button a {
	    color: #86C232;
	}
	
	#projectResults {
		width: 100%;
	}
	
	.linkResult {
		margin-bottom: 7.5px;
		background-color: #86C232;
		padding: 12px;
		display: block;
		color: #2F3640;
		text-decoration: none;
	}
	
	.linkResult:hover {
		background-color: #2F3640;
		color: white;
		transition: all 0.25s ease-in 0.25s;
	}
	
	.dash-footer {
	    	position: fixed;
	  		bottom: 0;
		}
	
	@media print {
		.dash-footer {
			display: block;
	    	position: fixed;
	  		bottom: 0;
		}
	}
	
	.blinking{
		animation: blinkingText 2s 8;
		font-weight: bold;
	}
	@keyframes blinkingText{
		0%{		color: red;	}
		49%{	color: red;	}
		50%{	color: transparent;	}
		99%{	color: red;	}
		100%{	color: red;	}
	}
</style>

<head>
    <title><c:out value="${sessionScope.name}"/> | Dashboard </title>
    <!--Website CSS-->
    <link rel="icon" href="${pageContext.request.contextPath}/_view/img/tab.png">
    <link href="${pageContext.request.contextPath}/_view/css/collapse-1.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/application.css" rel="stylesheet">
    <!-- Icon CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" 
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" 
    crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

		<%
			if(session.getAttribute("email") == null)
				response.sendRedirect("/project/login");
		%>
		
	    <nav>
	        <div class="nav">
	            <label for="toggle">&#9776;</label>
	            <input type="checkbox" id="toggle">
	            <div class="menu">
	                <div class="logo"><a><i class="fa fa-cog" ></i></a></div>
	                <a href="${pageContext.request.contextPath}/index" class="border-nav"><i class="fas fa-home"></i> Home</a>
		                <a href="${pageContext.request.contextPath}/dashboard"><i class="fas fa-tachometer-alt"></i>  Dashboard</a>
		                <a href="#projects"><i class="fas fa-file-alt"></i> My Projects</a>
		                <a href="#reviews"><i class="fas fa-pencil-alt"></i> My Reviews</a>
		                <a href="${pageContext.request.contextPath}/upload"><i class="fas fa-file-upload"></i> Upload a Project</a>
		                <a href="${pageContext.request.contextPath}/reviews"><i class="fas fa-edit"></i> Write a Review</a>
		                <a href="${pageContext.request.contextPath}/reviews"><i class="fab fa-accusoft"></i> Browse Reviews</a>
	             
	             	<div class="access-btns">
	             		<a href="${pageContext.request.contextPath}/logout">Log Out <i class="fas fa-sign-out-alt"></i>	</a>
                	</div>
	            </div>            
	        </div>    
	    </nav>
	    
	    <div class="search-box">
	        <a class="search-btn" href="${pageContext.request.contextPath}/search"><i class="fas fa-search"></i></a>
	    </div>
	    
	    
	    <c:if test="${sessionScope.login != null}">
		      <div class="content-container">
	        	 <div class="container1-color">
	            	<div class="user-info">
	                	<div class="user-message">
	                    <h1>Welcome, <c:out value="${sessionScope.name}"/>!</h1>
	                   <form action="${pageContext.servletContext.contextPath}/dashboard" method="post">
		                   <span style="display: none">
		                   	<input name="name" value="${sessionScope.name}">
		                   </span>
	                   </form>
	                </div>
	          
	          		  
                  <div class="user-name">
                      <p><i class="fas fa-users"></i> : <c:out value="${sessionScope.name}"></c:out></p>
                      <p><i class="fas fa-envelope"></i> : <c:out value="${sessionScope.email}"></c:out></p>
                      <p class="blinking" style="color:#d3d3d3; font-size: 18px; padding: 5px;"><c:out value="${sessionScope.reviewCreated}"></c:out></p>
                  </div>
		             
	                    
	                <div id="projects" class="user-projects">
	                    <hr>
	                    <h2>My Projects</h2>
	                  
	                    <div id="projectResults">
		                    <form action="${pageContext.request.contextPath}/welcome" method="get">
								<p><i>${noProjects}</i></p><br>
							</form>
							<c:forEach items="${sessionScope.results}" var="dashboardProjects">
								<a class="linkResult" href="${dashboardProjects.fileName}?${dashboardProjects.projectName}"><c:out value="${dashboardProjects.projectName}"></c:out></a>
							</c:forEach>		
						</div>
	                </div>
	                <div id="reviews">
	                    <hr>
	                    <h2>My Reviews</h2>
	                    <div id="projectResults">
		                    <form action="${pageContext.request.contextPath}/welcome" method="get">
								<p><i>${noReviews}</i></p><br>
							</form>
							<table style="width:100%; border: 1px solid black; text-align: center;">
							  <tr>
							    <th width="20%;">Project Name</th>
							    <th width="20%;">Review Name</th>
							    <th width="2.5%;">Rating</th> 
							    <th width="40%;">Review</th>
							    <th width="6%;">Link</th>
							  </tr>
							<c:forEach items="${sessionScope.results2}" var="dashboardReviews">
								  <tr>
								    <td><c:out value="${dashboardReviews.projectName}"></c:out></td>
								    <td><c:out value="${dashboardReviews.reviewTitle}"></c:out></td>
								    <td><c:out value="${dashboardReviews.rating}"></c:out></td>
								    <td><c:out value="${dashboardReviews.review}"></c:out></td>
								    <td><a class="linkResult" href="${dashboardReviews.fileName}?${dashboardReviews.projectName}">View More</a></td>
								  </tr>
							</c:forEach>
							</table>		
						</div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <br><br><br>
    </c:if>
	   
	
	    <footer>
	        <div class="footer dash-footer">
	            <p>Tyler Kautz, Trevor Swann, Jacob Stambaugh. Copyright &copy; 2019. Some Rights Reserved.</p>
	        </div>
	    </footer>

</body>
</html>
