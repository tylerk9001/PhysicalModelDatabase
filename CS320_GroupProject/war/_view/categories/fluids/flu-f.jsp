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
            <p class="title">The Fish Tank</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Fluids</p>
            <p class="keywords"><strong>Keywords: </strong>Continuous Substance, Fluid, Shear Stress, Volume</p>
            <p class="author"><strong>Submitted By: </strong>Justin Highley</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This is a demonstration that uses a fish tank to reinforce the
			definition of a fluid and some of the important physical characteristics associated
			with fluids. This demonstration should take 3-5 minutes.
            </p>
                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> A fluid is defined as a substance that continuously
			deforms when subjected to a shear stress. Additionally, the molecular spacing in
			liquids is essentially constant and therefore a given mass of liquid occupies a
			certain volume of space. That volume will fill the container in which it is placed.
			Finally, when analyzing the behavior of fluids, they are normally treated as a
			continuous substance, or a continuum. This eliminates the requirement to treat
			each fluid molecule independently, and allows one to deal with the average
			properties instead.</p>
            
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
                    <td>$40-75</td>
                    <td>A large open surface is preferred.</td>
                  </tr>
                  <tr>
                  	<td>Fan</td>
                  	<td>1</td>
                  	<td>$10</td>
                  	<td>The fan must be powerful enough to ripple the water surface, but small enough to be handled by the instructor. </td>
               	  </tr>
                </table><br>
            </div>
            
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-f(a).png" class="const-img">
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-f(b).png" class="const-img">
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong>Fill the fish tank and have it on a rolling cart if possible. This will
			enable it to be placed in a prominent position during the actual demonstration.
			It must be close enough to the wall so the fan can be plugged in and reach the
			tank, unless you are using an extension chord as well.
            </p><br>

            
            <p class="application"><strong><u>In Class:</u></strong> After discussing the definition of a fluid, ask the class what types of
			shear forces exist in nature. Most will answer “gravity,” but some may mention
			wind which can lead into the use of the fan. Alternatively, pull out the fan and
			ask them what kind of force you could create with it – lead them into answering
			"shear stress." Ask the students what will happen when you turn on the fan and
			place it (horizontally) above the water. Common sense should tell them that it
			will deform or ripple. Turn the fan on and let them watch the surface
			deformations occur. <br/>
			You can also reinforce the concept of liquid fluids occupying a fixed volume.
			Discuss why the water takes on the shape of the fish tank.
			When discussing the concept of a continuous fluid, point out that while the
			viscosity, density, specific weight, etc. of each water molecule may vary slightly
			based on its location in the tank, the differences are insignificant and the average
			properties are almost always used. </p>
            
          	<p class = "application"><strong><u>Observations:</u></strong>  Students will see the water surface deform as a result of the shear
			stress imparted by the fan.</p>
			
			<img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-f(c).png" class="const-img">
			
			<p class = "application"><strong><u>Additional Application:</u></strong> The deformation of the water surface can lead into a discussion of viscosity as a measure of resistance to deformation(i.e. "What would happen
			if I replaced the water with honey and turned on the fan?") </p>
			
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
