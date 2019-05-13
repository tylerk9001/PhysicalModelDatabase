<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<head>
    <title>Dynamics | Physical Model </title>
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
            <p class="title">Hydrostatics</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Fluids</p>
            <p class="keywords"><strong>Keywords: </strong>Fluid Pressure, Submerged Plane</p>
            <p class="author"><strong>Submitted By: </strong>Justin Highley</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong>  This is a demonstration that helps students visualize the
			effects of fluid pressure on various surfaces. Various cutout shapes are used,
			including plane and curved surfaces, which are submerged into a fish tank during
			the derivation of the hydrostatic pressure equation. This demonstration should
			take 8-10 minutes. </p>
                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> Hydrostatic forces acting on a submerged plane surface
			are linearly distributed over the surface, and act at the center of pressure rather
			than the centroid of the object. Most textbooks include a picture similar to the
			figure below, which is a view looking down upon an object placed into the fluid
			at an angle. The geometry and orientation is often hard for students to grasp, so
			this demonstration makes it easier for them to conceptualize. Below is a
			hydrostatic pressure distribution.
            
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-c(a).png" class="const-img">
            
            Calculating the magnitude of the resultant force is straightforward using the hydrostatic pressure equation.
            
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-c(b).png" class="const-img">

			where:
			
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-c(c).png" class="const-img">
			
			Find the location of the resultant force is more difficult, but is done using the equation

            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-c(d).png" class="const-img">
            
            where:
            
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-c(e).png" class="const-img">
            
            The difficulty with the divertion comes in differentiating between various geometry measurements: h, y, and ycp.
            </p>
            
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
                    <td>Fish tank</td>
                    <td>1</td>
                    <td>$45</td>
                    <td>It must be large enough to fit the cutouts.</td>
                  </tr>
                   <tr>
                    <td>Plastic cutouts representing plane and curved surfaces</td>
                    <td>Various</td>
                    <td>$10; 20 minutes</td>
                    <td>Use different shapes and sizes. Ideally, one cutout is shaped like the object in the drawing/figure used during the derivation (like above).</td>
                  </tr>
                </table><br>
            </div>
            
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-c(f).png" class="const-img">
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong>Fill the fish tank and have it on a rolling cart if possible. This will
			enable it to be placed in a prominent position during the actual demonstration. </p><br>

            
            <p class="application"><strong><u>In Class:</u></strong>When doing the derivation and discussing the differences between
			h, y, ycp take one of the cutouts and insert it into the fish tank. If a picture
			similar to was used in class, stand on the side of the tank and insert the cut
			out so that the students see only the profile view. Explain that what you are
			seeing is the front view from the picture on the board. Also point out the angle
			α (angle between the surface and the surface) from this vantage point.  
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-c(a).png" class="const-img">
			Next, discuss the difference between the various measurements. The "y""
			distances are slant lengths, and run along the surface of the object, whereas the
			"h" measurements are vertical distances from the water surface. 
			</p>
            
          	<p class = "application"><strong><u>Observations:</u></strong> Students can visualize the pressure distribution along a
			submerged surface and see the difference between the various geometric
			measurements associated with hydrostatics. </p>
			<p class = "application"><strong><u>Instructor Tips:</u></strong> The curved surface cut outs can also be used to demonstrate the
			projected area of a section of fluid when dealing with submerged curved
			surfaces. Additionally, they help in visualizing the "cut out" section when
			calculating its volume. </p>
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
