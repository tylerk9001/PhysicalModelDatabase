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
            <p class="title">Moments and Couples</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Couple, Mechanical Advantage, Moment</p>
            <p class="author"><strong>Submitted By: </strong>Jason Evers</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> Introduce the concept of Moment and couples to your
				students by providing hands-on examples that they can relate to. Demonstrate
				how levers use the concept of moment to provide a mechanical advantage. This
				demonstration should take 5-10 minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> The Moment caused by a force about any point is defined
				by the equation below.</p>
				
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-j-pic(a).png" class="const-img"><br>
				
			<p class="principle">A couple is defined as two forces, equal in magnitude, with parallel lines of
				action, but opposite in direction. The Moment caused by a couple is defined by
				the same equation, with the exception that the distance is defined differently
				and the Moment caused by a couple is a free vector that can be applied
				anywhere on the body</p>

            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-j-pic(b).png" class="const-img"><br>

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
                    <td>$5</td>
                    <td>Any tape measure will do, but it must be long enough to measure the distance from a student's shoulder to their arm.</td>
                  </tr>
                  <tr>
                    <td>Barbell</td>
                    <td>1</td>
                    <td>$10-$20</td>
                    <td>A barbell (or any object) of known weight.</td>
                  </tr>
                  <tr>
                    <td>Scale</td>
                    <td>1</td>
                    <td>$15</td>
                    <td>A typical bathroom will do, try to remain consistent in systems of units with the barbell, weight, and tape measure.</td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
                  
            <p class="application"><strong><u>In Class:</u></strong> A force's tendency to cause rotation is a scalar or vector quantity
				related to two things. Introduce what two things they are by asking a student to
				come up to the front of the classroom (try to choose a student that is fairly
				athletic). Tell them that the class will calculate the moment caused by a
				textbook (or some object lighter than the barbell) about the students shoulder.
				Give the student the book and ask them which causes greater rotation about
				their shoulder, holding it close to their body, or holding it far away. The students
				will answer correctly. Then add the first part of the equation defining moment
				on the board (d). (You can also show why the perpendicular distance is the
				important dimension here). Then, ask the same student whether they would like
				to hold the book far away or the barbell and give them the barbell and ask them
				to hold it out. The students will answer correctly, then add the second part of
				the moment equation to the board (F). Next, measure the student's arm length
				from the shoulder with the tape measure and calculate the moment on the spot.
				(Make sure to have the student continue to hold the weight while doing so.)</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-j-pic(c).png" class="const-img"><br>
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-j-pic(d).png" class="const-img"><br>
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-j-pic(e).png" class="const-img"><br>            
                        
            <p class="application"><strong><u>Additional Application</u></strong> Demonstrate how Levers use the concept of Moment to
				their advantage. You can put the Archimedes quote 'GIVE ME A PLACE TO
				STAND AND I WILL MOVE THE EARTH' on the board and ask for students to
				guess who said it. Then, proceed into different types of levers that are seen in
				everyday life and how they have defined a way to determine the weights and
				forces that make these levers work.</p><br>
								
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

