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
            <p class="title">Wooden Truss 2D</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Stability, Strength, Truss</p>
            <p class="author"><strong>Submitted By: </strong>Ronald Welch</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This is a simple demonstration to introduce the basic
				principles of truss behavior and analysis. It will show how the shape of a truss—
				and not necessarily its weight/material—determines its stability. A simple truss
				design will be used to show that triangles are the important stability shape used
				in trusses rather than squares or rectangles. This demonstration should take 15-
				20 minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> The basic equations required for analysis are the
				equations of equilibrium and trigonometry. However, no real numerical analysis
				is required. The model is used primarily for developing a feel for the basic
				definition for a truss: a structure composed of slender members joined together
				at end points by frictionless pins; loads only applied at joints; all truss members
				are 2-force members; and member weight is negligible.</p>
				

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
                    <td>Pieces of Wood</td>
                    <td>9</td>
                    <td>$45; 1 hour</td>
                    <td>Any wood type can be used to include scrap
						pieces from a previous project! In the picture
						provided, each piece is an inch wide and about a
						quarter of an inch thick. Each piece needs one
						hole drilled in each end so that they all can be
						connected with nuts and bolts. Pieced together,
						they make a truss with 4 triangles, with the two
						middle triangles able to be combined into a
						square by removing the diagonal member. 4
						pieces (members) need holes 12 inches apart. 3
						pieces (members) need holes 15 inches apart. 2
						pieces (members) need holes 9 inches apart.
						Holes are slightly larger than 3/8 inch for this
						example.  </td>
                  </tr>
                  <tr>
                    <td>Bolts</td>
                    <td>6</td>
                    <td>$15</td>
                    <td>4 bolts need to be 1.5 inches long x 3/8 inch and
						the other two can be 1 inch long x 3/8 inch.
						Diameters other that 3/8 inch can be used – just
						ensure the holes and bolt diameters match.   </td>
                  </tr>
                  <tr>
                    <td>Nuts</td>
                    <td>6</td>
                    <td>$10</td>
                    <td>Nut diameter to match the bolts. The 6 bolts
					connect 8 of the 9 members in place, but are
					screwed finger tight so that they all can move
					relatively freely (pinned connection). The middle
					diagonal member is just placed on the ends of
					the longer bolts after the nuts are screwed on
					for easy removal. </td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
            
            <p class-"application"><strong><u>Before Class:</u></strong> Construct the truss out of the eight members and six nuts/bolts. Be
				certain that the joints are finger tight to move freely when the diagonal member
				is not in place. </p><br>
                                 
            <p class="application"><strong><u>In Class:</u></strong> Through questioning of the students define a truss: a figure consisting
				of straight, slender members connected at joints by frictionless pins. Show the
				class the truss without the center diagonal member and give it to two students
				to hold between two desks so that it doesn’t look unstable. Have a third
				student apply force to one of the top two joints, making the figure easily fail.
				Ask the students what they think the problem is with the truss. Try tightening
				the bolts even further with your fingers to see if that is the problem. Once the
				correct answer is given – the truss members must form triangular shapes when
				connected, correct the truss by placing the diagonal member on the bolts (so
				that is what this extra member is for…!). Demonstrate how much stronger this design is by having the same student push
				on each of the top joints while the other two are holding it. Ask the student
				to describe quantitatively how much stronger/stable the truss is with the
				diagonal member in place. </p><br>
                        
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

