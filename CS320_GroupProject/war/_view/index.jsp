<!DOCTYPE html>
<html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<head>
    <title>Home | Physical Model </title>
    <!--Website CSS-->
    <link rel="icon" href="${pageContext.request.contextPath}/_view/img/tab.png">
    <link href="${pageContext.request.contextPath}/_view/css/collapse-1.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/application.css" type="text/css" rel="stylesheet">
    <!-- Icon CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" 
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" 
    crossorigin="anonymous">
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
	                <a href="#construction">Construction</a>
	                <a href="#dynamics">Dynamics</a>
	                <a href="#fluids">Fluids</a>
	                <a href="#heattran">Heat Transfer</a>
	                <a href="#matsci">Material Science</a>
	                <a href="#mechanics">Mechanics</a>
	                <a href="#statics">Statics</a>
	                <a href="#thermodynamics">Thermodynamics</a>
                    
	                
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
	    
	    <content>
	        <div class="showcase">
	            <div class="header">
	                <p>Civil Engineering Projects</p>
	                <a href="#construction">Learn More</a>
	            </div>
	        </div>
	
	        <div class="content">
	            <div class="categories-box-1">
	                <div id="box-1" class="boxes">
	                    <section id="construction">
	                        <h3>Construction</h3>
	                        <ul>
	                        	<c:forEach items="${constructionResults}" var="Projects">		
	                            	<li><a href="${Projects.fileName}?${Projects.projectName}"><span>${Projects.projectName}</span></a></li>
	                            </c:forEach>
	                        </ul>
	                    </section>
	                </div>
	                
	                <div id="box-2" class="boxes">
	                    <section id="dynamics">
	                        <h3>Dynamics</h3>
	                        <ul>
	                            <c:forEach items="${dynamicsResults}" var="Projects">						
	                            	<li><a href="${Projects.fileName}">${Projects.projectName}</a></li>
	                            </c:forEach>
	                        </ul>
	                    </section>
	                </div>
	                <div id="box-3" class="boxes">
	                    <section id="fluids">
	                    <h3>Fluids</h3>
	                        <ul>
	                           <c:forEach items="${fluidsResults}" var="Projects">						
	                            	<li><a href="${Projects.fileName}">${Projects.projectName}</a></li>
	                            </c:forEach>
	                        </ul>
	                    </section>
	                </div>
	                <div id="box-4" class="boxes">
	                    <section id="heattran">
	                        <h3>Heat Transfer</h3>
	                        <ul>
	                            <c:forEach items="${heatTranResults}" var="Projects">						
	                            	<li><a href="${Projects.fileName}">${Projects.projectName}</a></li>
	                            </c:forEach>
	                        </ul>
	                    </section>
	                </div>
	            </div>
	
	        <div class="categories-box-2">
	            <div id="box-5" class="boxes">
	                <section id="matsci">
	                    <h3>Material Science</h3>
	                    <ul>
	                        <c:forEach items="${matSciResults}" var="Projects">						
	                        	<li><a href="${Projects.fileName}">${Projects.projectName}</a></li>
	                        </c:forEach>
	                    </ul>
	                </section>
	            </div>
	            <div id="box-6" class="boxes">
	                <section id="mechanics">
	                    <h3>Mechanics</h3>
	                    <ul>
	                       <c:forEach items="${mechanicsResults}" var="Projects">						
	                       		<li><a href="${Projects.fileName}">${Projects.projectName}</a></li>
	                       </c:forEach>
	                    </ul>
	                </section>
	            </div>
	            <div id="box-7" class="boxes">
	                <section id="statics">
	                    <h3>Statics</h3>
	                    <ul>
	                       <c:forEach items="${staticsResults}" var="Projects">						
                           		<li><a href="${Projects.fileName}">${Projects.projectName}</a></li>
                           </c:forEach>
	                    </ul>
	                </section>
	            </div>
	            <section id="thermodynamics">
	                <div id="box-8" class="boxes">
	                    <h3>Thermodynamics</h3>
	                    <ul>
	                        <c:forEach items="${thermResults}" var="Projects">						
                            	<li><a href="${Projects.fileName}">${Projects.projectName}</a></li>
                            </c:forEach>
	                    </ul>
	                </div>
	            </section>
	        </div>
	    </div>
	</content>
	
	    <footer>
	        <div class="footer">
	            <p>Tyler Kautz, Trevor Swann, Jacob Stambaugh. Copyright &copy; 2019. Some Rights Reserved.</p>
	        </div>
	    </footer>

</body>
</html>
