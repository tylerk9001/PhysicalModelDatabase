<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<head>
    <title>Construction | Physical Model </title>
    <!--Website CSS-->
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
        <input class="search-txt" type="text" placeholder="Search..." name="">
        <a class="search-btn" href="#"><i class="fas fa-search"></i></a>
    </div>

<content>
    <div class="content">
        <div class="header-container" align="center">
            <p class="title">Distributed Student Loading</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Building Code, Distributed Load, Factor of Safety, Load Transfer, Loading</p>
            <p class="author"><strong>Submitted By: </strong>Jason Evers</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This model will get your students on their feet during class
				and help them visualize the concept of distributed loading. This demonstration
				should take 5-7 minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> In order to get students to begin to get a feel for load
				transfer and modeling loading, it is helpful to show an example. This exercise
				demonstrates the equation for a distributed load.
				w = P/A (in units of lbf/ft^2)</p>

            <br><p class="title">Required Items</p><br>
            
            <div style="overflow-x: auto;">
                <table>
                  <tr>
                    <th>Item</th>
                    <th>Qty</th>
                    <th>Cost and Build Time</th>
                    <th>Description/Details</th>
                  </tr>
                  <tr>
                    <td>Tape Measure</td>
                    <td>1</td>
                    <td>$15</td>
                    <td>This is used to measure the area the students will occupy.</td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
                                    
            <p class="application"><strong><u>In Class:</u></strong>  The International Building Code (IBC) and other design codes specify
				various numbers for distributed loads for design. For students that are new to
				engineering classes, these numbers may appear a bit arbitrary. Show various
				codes and planning factors from textbooks for distributed loads and ask where
				these numbers might have come from. Answers will vary, but with proper
				questioning, we quickly can arrive at the above equation. Then, ask students
				how they would like to test the accuracy of the numbers in the code. Agree
				upon a fixed weight per student and multiply that by the number of students in
				the class and try to decide upon an area to divide by. This leads into some
				interesting discussions, but again with some guidance, students will get the fact
				that we want to consider the worst case, which is having the class try to get into
				as small an area as possible, which the instructor then measures.(1)</p><br>
				
			<p class="application">CAUTION: You may have some students in class that are shy and don’t enjoy
				being in extremely close proximity with others, so you can provide the guidance
				to occupy one tile square or get as close as possible without touching. Usually,
				the numbers calculated based on this exercise exceed the code
				recommendations by a large amount. At this point, discuss why the code factors
				are lower and talk about things like Factors of Safety on loading conditions. </p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-f-pic(a).png" class="const-img"><br>
            				
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
