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
            <p class="title">Amazing Weight Loss Program</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Force Vector, Inclination, Shear</p>
            <p class="author"><strong>Submitted By: </strong>Tom Messervey and John Richards</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong>  This is a simple and rapid demonstration of the
				perpendicular and parallel components of a force vector on an inclined plane.
				By weighing a student or instructor first on the floor and then at some
				inclination, a loss of weight is observed. This demonstration should take 5-8
				minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> Spring scales are designed to measure the force acting
				perpendicular to their surface, and are deliberately insensitive to shear forces.
				Thus, the scale will read different weights for the same person if the inclination
				of the scale is changed. One can show the trigonometric relationship between
				the angle of inclination and the triangle formed by the weight vector and its
				components in as much detail as desired. If the angle of inclination is taken from
				the horizontal, the equations given hold true, and the weight loss is observed
				as the difference between the weight measured on a flat floor versus the normal
				component at the inclination.</p>

            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-c-pic(a).png" class="const-img"><br>

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
                    <td>Scale</td>
                    <td>1</td>
                    <td>$20</td>
                    <td>An old style spring bathroom scale works best. Standard laboratory scales can also be utilized with a book instead of people if necessary.</td>
                  </tr>
                  <tr>
                    <td>Ramp</td>
                    <td>1</td>
                    <td>Varies depending on chosen surface.</td>
                    <td>Any stable inclined surface.</td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Pre-position the title “Amazing weight loss program” somewhere in
				the classroom with the scale positioned nearby to get students curious.</p><br>
                                    
            <p class="application"><strong><u>In Class:</u></strong> To begin, have a student read off your weight while standing with the
				scale flat on the floor. (1) Then, place the scale on the ramp and have the
				student read your weight again. (2) Everyone will applaud your ingenious weight
				loss program. (3) Depending on your student population and how long the
				summer/winter break has been, students can struggle with how the angle of
				inclination relates to the triangle formed by the weight vector. Be ready to work
				through the derivation.</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-c-pic(b).png" class="const-img"><br>
                        
            <p class="application"><strong><u>Additional Application</u></strong> Prior to the scale demo, emphasize that statics is a
				subject in which you’ll be touching, measuring, and investigating the world
				around you. As a warm up and trigonometry review, state that a sloppy design
				partner left one dimension off the ramp. Using only a protractor, challenge the
				student to find the missing dimension. Inevitably, students struggle with where
				to put the protractor and some need the refresher on basic trigonometry.</p><br>				
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