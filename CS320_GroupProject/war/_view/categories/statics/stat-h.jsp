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
            <p class="title">The Torque Tester</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Mechanical Advantage, Moment, Torque</p>
            <p class="author"><strong>Submitted By: </strong>Tom Messervey</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This training aid provides an example of what the students
				already know intuitively about mechanical advantage and applied moment. By
				using a dial torque wrench, units and physical measurement are readily
				observable and subject to discussion. This demonstration should take 5 minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> M=F*d</p>

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
                    <td>Secure Bolt</td>
                    <td>1</td>
                    <td>$20; 20 minutes</td>
                    <td>WElded to a metal bracket or secured in a block of wood fastened to a desk. (1)</td>
                  </tr>
                  <tr>
                    <td>Dial Torque Wrench</td>
                    <td>1</td>
                    <td>$150</td>
                    <td>If you have an automotive ME program, check to see if they have one to borrow. (2)</td>
                  </tr>
                </table><br>
            </div>
            
            
                        
            <p class="title">Application</p>
         
            <p class="application"><strong><u>In Class:</u></strong>  Start the class with the Strongest Student Competition. The “Torque
				Tester” is the tool to judge the competition and the class elects the toughest
				member of the class. That person comes forward and is given the rule that
				his/her hand must be placed so that it touches the socket part of the torque
				wrench (decreasing their mechanical advantage). (3) After all, we don’t want the
				strong student to flip the desk over through brute strength. A judge is selected
				from the class to read the dial on the torque wrench. A reading is obtained. The
				instructor then selects an obviously less strong member of the class. The second
				student is told that they have the freedom to grab the wrench anywhere they
				choose. (4) The strong student records the reading. Inevitably, the weaker
				cadet triumphs and the class enjoys a laugh. </p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-h-pic(c).png" class="const-img"><br>
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-h-pic(d).png" class="const-img"><br>            
                        
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
