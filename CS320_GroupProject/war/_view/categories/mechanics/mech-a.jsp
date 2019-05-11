<!DOCTYPE html>
<html
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>>
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
            <p class="title">Axial Strain #1</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Mechanics</p>
            <p class="keywords"><strong>Keywords: </strong>Axial, Deformation, Strain, Stress</p>
            <p class="author"><strong>Submitted By: </strong>John Richards</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong>This is a simple demonstration of the basic principles
			underlying the behavior of materials subjected to an axial load. The
			demonstration can also be used to show the usefulness of stress-strain curves
			versus load-deformation curves. This demonstration should take 10 minutes.</p>
            <img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-a(a).png" class="const-img">                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> The basic definitions for deformation and strain
            <img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-a(b).png" class="const-img">
            where the axial (longitudinal) deformation is equal to the final length minus the
			initial length. The longitudinal strain is equal to the axial deformation divided by
			the initial length. Further, according to Hooke's Law, the strain will follow the
			stress, so observed deformations are indicators of the magnitude of stress.
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
                    <td>Bungee Cords</td>
                    <td>3</td>
                    <td>$10</td>
                    <td>Make sure all three cords are the same length and width. Attach two cords together to make one long one.</td>
                  </tr>
                   <tr>
                    <td>Load Meter</td>
                    <td>2</td>
                    <td>$20 each</td>
                    <td>A method of measuring the load to make sure that the same load is applied to each section of cord is required.</td>
                  </tr>
                   <tr>
                    <td>Tape Measure</td>
                    <td>1</td>
                    <td>$10</td>
                    <td>It needs to be long enough to measure the total length when stretched.</td>
                  </tr>
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Prepare a method for hanging the bungee cords. Hooks above the blackboard are ideal, or hang them from a low ceiling or use another method. </p><br>

            
            <p class="application"><strong><u>In Class:</u></strong>Hang the two different lengths of cords. Get an initial length of the
			cords (Put the load meters on just to put a little load on them to straighten them
			out). Apply an equal load to each of the cords and measure the final length.
			This allows you to calculate the deformation. Apply a greater load (doubling
			the initial load works well) and again measure the final length and calculate the
			deformation. Then plot the load deformation curve. </p>
            
          	<p class = "application"><strong><u>Observations:</u></strong> : As is shown by the load-deformation curves, for every different
			length of material, you will need a separate curve. Then discuss how different
			thicknesses will also affect the results. This leads to the conclusion that loaddeformation curves are very inefficient and cumbersome, hence the power of
			the stress-strain curve, which normalizes the load-deformation data for any size
			of the same material.</p>
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-a(c).png" class="const-img">
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-a(d).png" class="const-img">
			
			<p class = "application"><strong><u>Additional Application:</u></strong> You can also drive home the point that load-deformation
			curves are inefficient by showing differences in deformation between bungee
			cords of the same length, but different thicknesses.</p>
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
