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
            <p class="title">Fun with Friction</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Coulomb Friction, Slipping, Tipping</p>
            <p class="author"><strong>Submitted By: </strong>John Richards and Tom Messervey</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> Investigate slipping and tipping for Coulomb Friction. This
				demonstration should take 5-10 minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> These training aids provide a vehicle to discover the need
				to consideration three possibilities when investigating friction problems: 1)
				Nothing happens 2) Slipping occurs, 3) Tipping occurs.</p>

            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-b-pic(a).png" class="const-img"><br>
			
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
                    <td>Ramp</td>
                    <td>1</td>
                    <td>$10</td>
                    <td>A board or tilted desk could also work.</td>
                  </tr>
                  <tr>
                    <td>Weight</td>
                    <td>1</td>
                    <td>$10; 15 minutes</td>
                    <td>Two sides with sandpaper, two sides without.</td>
                  </tr>
                  <tr>
                    <td>Chair/Cord/Student</td>
                    <td>1</td>
                    <td>$10</td>
                    <td>Used for the Executioner's Chair</td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Prepare the box with sandpaper.</p><br>
                                    
            <p class="application"><strong><u>In Class:</u></strong>  Block with sandpaper: With the appropriate degree of inclination, the
				smooth side of the block will slip (lengthwise) and the rough side will not (with
				no applied force). Putting the block on edge, the smooth side of the block will
				slip and the rough side will tip with an applied force.</p><br>
            
            <p class="application">Executioners Chair: Students always enjoy impending doom. With a chair and a
				cord, one can quickly bring out the teaching points of why it matters where the
				cord is attached to the chair, how the force of friction increases as the applied
				force increases, why it matters if tape is put on the floor, and the fact that
				tipping or slipping could occur. Intuitively, the students know the answer to all
				these questions, now one can discover the statics to support it.</p><br>
            
            
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-b-pic(b).png" class="const-img"><br>
			<img src="${pageContext.request.contextPath}/_view/categories/statics/stat-b-pic(c).png" class="const-img"><br>
			<img src="${pageContext.request.contextPath}/_view/categories/statics/stat-b-pic(d).png" class="const-img"><br>
			<img src="${pageContext.request.contextPath}/_view/categories/statics/stat-b-pic(e).png" class="const-img"><br>
				
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