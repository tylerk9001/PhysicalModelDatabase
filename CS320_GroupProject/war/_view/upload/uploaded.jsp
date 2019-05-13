<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>
	.login-footer {=
    position: fixed;
    bottom: 0;
}
	
</style>

<head>
	<c:forEach items="${projectInfo}" var="projectInfo">
    	<title>${projectInfo.engineeringCategory} | Physical Model </title>
    </c:forEach>
    <!--Website CSS-->
    <link rel="icon" href="${pageContext.request.contextPath}/_view/img/tab.png">
    <link href="${pageContext.request.contextPath}/_view/css/collapse-1.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/application.css" type="text/css" rel="stylesheet">
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
    	<c:forEach items="${projectInfo}" var="projectInfo">
	        <div class="header-container" align="center">
	            <p class="title">${projectInfo.projectName}</p>
	            <p style="font-weight: bold;" class="eng-principle"><strong><u>Engineering Principle:</u></strong> ${projectInfo.engineeringCategory}</p>
	            <p class="keywords"><strong><u>Keywords:</u></strong> ${projectInfo.keywords}</p>
	            <p class="author"><strong><u>Submitted By:</u></strong> ${projectInfo.authors}</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
	        </div>
	        <div class="project-content">
	            <p class="description"><b><u>Model Description:</u></b> ${projectInfo.modelDescription}</p>
	            
	            <p class="principle"><b><u>Engineering Principle:</u></b> ${projectInfo.engineeringPrinciple}</p>
	            
	            <br><p class="title">Required Items</p><br>
	            
	            <div style="overflow-x: auto;">
	                <table>
	                  <tr>
	                    <th><strong><u>Item</u></strong></th>
	                    <th><strong><u>Qty</u></strong></th>
	                    <th><strong><u>Cost and Build Time</u></strong></th>
	                    <th><strong><u>Description/Details</u></strong></th>
	                  </tr>
	                  
	                 
                  	<c:forEach items="${allItems}" var="item">
                  		<tr>
	                    	<td>${item[0]}</td>
	                    	<td>${item[1]}</td>
	                    	<td>${item[2]}</td>
	                    	<td>${item[3]}</td>
                    	</tr>
                    </c:forEach>
	                  
	                </table><br>
	            </div>
	            
	            <p class="title">Application</p>
	            
	            <p class="application"><strong><u>Before Class:</u></strong> ${projectInfo.beforeClass}</p><br>
	            
	            <p class="application"><strong><u>In Class:</u></strong> ${projectInfo.inClass}</p><br>
	            
	            <p class="application"><strong><u>Other:</u></strong> ${projectInfo.other}</p>
	        </div>
        </c:forEach>
    </div>
</content>

<footer>
	<br>
    <div class="footer login-footer">
        <p>Tyler Kautz, Trevor Swann, Jacob Stambaugh. Copyright &copy; 2019. Some Rights Reserved.</p>
    </div>
</footer>
</body>
</html>
