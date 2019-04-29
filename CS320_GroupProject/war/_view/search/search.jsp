<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

<style>
	#searchBox {
		margin-top: 40px;
		margin-bottom: 40px;
		text-align: center;
	}

	input[type=text] {
		width: 750px;
		padding: 10px;
		padding-top: 15px;
		padding-bottom: 15px;
		font-size: 16px;
		color: #ffffff;
		border: 2px solid #86C232;
		outline-color: #86C232;
		background-color: #2F3640;
	}
	
	input[type=text]:focus {
		background-color: #2F3640;
	}
	#searchBox button {
		height: 50px;
		width: 50px;
	  	border-radius: 50%;
	  	background-color: #2F3640;
	  	color: #86C232;
	  	font-size: 18px;
	  	cursor: pointer;
	}
	
	#searchBox button:hover {
		background: white;
		border: 1px solid #2F3640;
		transition: all 0.25s ease-in 0.25s;
	}

	 
	 
	#searchResults {
		padding: 0 595px 0 545px;
	}
	
	.linkResult {
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
	
	
	.search-footer {
	    	position: fixed;
	  		bottom: 0;
		}
	
	@media print {
		.search-footer {
			display: block;
	    	position: fixed;
	  		bottom: 0;
		}
	}
	
	@media (max-width: 480px) {
		/* style="padding: 0 25% 0 22%" */
		#searchResults {
			padding: 0 25% 0 22%;
		}
	}
	
</style>

<head>
    <title>Search | Physical Model </title>
    <!--Website CSS-->
    <link href="${pageContext.request.contextPath}/_view/css/collapse-1.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/application.css" type="text/css" rel="stylesheet">
    <!-- Icon CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" href="${pageContext.request.contextPath}/_view/img/tab.png">
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
                  <form action="${pageContext.request.contextPath}/dashboard">
                      <c:choose>
                          <c:when test="${sessionScope.login == true}">
                              <a href="${pageContext.request.contextPath}/dashboard" name="dashboard"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
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
      
	<div id="searchBox">
		<form action="${pageContext.servletContext.contextPath}/search" method="post">
			<input autocomplete="off" placeholder="Search by author, keyword, category, or project name..." type="text" name="search">
			
			<button class="search-btn" type="submit"><i class="fa fa-search"></i></button> 
			</form>
	</div>
	
	<div style="text-align: center; font-size: 18px">
		<form action="${pageContext.servletContext.contextPath}/search" method="post">	
			<i><p>${search}</p></i>
			<%Boolean invalidSearch = (Boolean)request.getSession().getAttribute("search_failed");
				if (invalidSearch != null) {%> <p>No search results found.</p><%}%>	
		</form>
	</div>
	
	<div id="searchResults" style="padding: 0 25% 0 22%">
		<c:forEach items="${sessionScope.results}" var="projects">
			<a class="linkResult" href="${projects.fileName}"><c:out value="${projects.projectName}"></c:out></a><br>
		</c:forEach>		
	</div>
	        
    <footer>
    	<br><br><br>
        <div class="footer search-footer">
            <p>Tyler Kautz, Trevor Swann, Jacob Stambaugh. Copyright &copy; 2019. Some Rights Reserved.</p>
        </div>
    </footer>
    
</body>    
</html>