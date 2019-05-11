<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>
	.login-footer {
    	position: absolute;
    	top: 95%;
	}
	
	
	
</style>

<head>
    <title>Principle | Physical Model </title>
    <!--Website CSS-->
    <link rel="icon" href="${pageContext.request.contextPath}/_view/img/tab.png">
    <link href="${pageContext.request.contextPath}/_view/css/collapse-1.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/application.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/ratings.css" type="text/css" rel="stylesheet">
    
    <!-- Icon CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <nav>
        <div class="nav">
            <label for="toggle">&#9776;</label>
            <input type="checkbox" id="toggle">
            <div class="menu">
                <div class="logo"><a><i class="fa fa-cog" ></i></a></div>
                <a href="${pageContext.request.contextPath}/index" class="border-nav">Home</a>
                <a href="${pageContext.request.contextPath}/index#construction">Construction</a>
                <a href="${pageContext.request.contextPath}/index#dynamics">Dynamics</a>
                <a href="${pageContext.request.contextPath}/index#fluids">Fluids</a>
                <a href="${pageContext.request.contextPath}/index#heattran">Heat Transfer</a>
                <a href="${pageContext.request.contextPath}/index#matsci">Material Science</a>
                <a href="${pageContext.request.contextPath}/index#mechanics">Mechanics</a>
                <a href="${pageContext.request.contextPath}/index#statics">Statics</a>
                <a href="${pageContext.request.contextPath}/index#thermodynamics">Thermodynamics</a>
                
                <div class="access-btns">
                  <form action="${pageContext.request.contextPath}/welcome">
                      <c:choose>
                          <c:when test="${sessionScope.login == true}">
                              <a href="${pageContext.request.contextPath}/welcome" name="dashboard"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
                          </c:when>
                          <c:when test="${sessionScope.login == null}">
                             <a href="${pageContext.request.contextPath}/login" class="button">Login</a>
                          <a href="${pageContext.request.contextPath}/signup" class="button">Sign Up</a>
                          </c:when>
                      </c:choose>
                  </form>
               </div>
            </div>
        </div>
    </nav>
    
    <div class="search-box">
        <a class="search-btn" href="${pageContext.request.contextPath}/search"><i class="fas fa-search"></i></a>
    </div>

<content>
    <div class="content">
        <h2><i class="fas fa-edit"></i></h2>
	 	<h2>Project Reviews</h2>
	 	
	 	<form action="${pageContext.request.contextPath}/allreviews" id="reviewTitle" method="post">
		 	<p id="project-title">Project Title :</p>
		    	<select id="select-menu" name="projectTitleForReviews" required>
	    			<option value="" selected disabled>Select Project Title...</option>
	    			<optgroup label="Construction">
					<c:forEach items="${constructionResults}" var="Projects">
							<option value="${Projects.projectName}">${Projects.projectName}</option>
					</c:forEach>
					</optgroup>
					<optgroup label="Dynamics">
					<c:forEach items="${dynamicsResults}" var="Projects">
							<option value="${Projects.projectName}">${Projects.projectName}</option>
					</c:forEach>
					</optgroup>
					<optgroup label="Fluids">
					<c:forEach items="${fluidsResults}" var="Projects">
							<option value="${Projects.projectName}">${Projects.projectName}</option>
					</c:forEach>
					</optgroup>
					<optgroup label="Heat Transfer">
					<c:forEach items="${heatTranResults}" var="Projects">
							<option value="${Projects.projectName}">${Projects.projectName}</option>
					</c:forEach>
					</optgroup>
					<optgroup label="Material Science">
					<c:forEach items="${matSciResults}" var="Projects">
							<option value="${Projects.projectName}">${Projects.projectName}</option>
					</c:forEach>
					</optgroup>
					<optgroup label="Mechanics">
					<c:forEach items="${mechanicsResults}" var="Projects">
							<option value="${Projects.projectName}">${Projects.projectName}</option>
					</c:forEach>
					</optgroup>
					<optgroup label="Statics">
					<c:forEach items="${staticsResults}" var="Projects">
							<option value="${Projects.projectName}">${Projects.projectName}</option>
					</c:forEach>
					</optgroup>
					<optgroup label="Thermodynamics">
					<c:forEach items="${thermResults}" var="Projects">
							<option value="${Projects.projectName}">${Projects.projectName}</option>
					</c:forEach>
					</optgroup>
				</select><br><br>
					
			<input id="submit" type="submit" value="Load Reviews"><br><br><br>
		</form>
		
		
		<h1 style="color:#86c232; text-align: center;">${projectName}</h1>
		
		<p style="text-align: center">${noReviews}</p>
		
		
		
		<c:forEach items="${listOfReviews}" var="Reviews">
			<p><span><strong>Review Title: </strong></span>${Reviews.reviewTitle}</p>
			<p><span><strong>Rating: </strong></span>
				<c:forEach var = "i" begin = "1" end = "${Reviews.rating}">
			         <i class="fas fa-star" style="color:#86c232"> </i>
			      </c:forEach>
			</p>
			<p><span><strong>Review: </strong></span>${Reviews.review}</p>
			<hr>
		</c:forEach>
    </div>
</content>


<footer> 
    <div class="footer login-footer">
        <p>Tyler Kautz, Trevor Swann, Jacob Stambaugh. Copyright &copy; 2019. Some Rights Reserved.</p>
    </div>
</footer>
</body>
</html>
