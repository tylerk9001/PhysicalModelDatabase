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
            <p class="title">Fluid Properties</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Fluids</p>
            <p class="keywords"><strong>Keywords: </strong>Density, Mass, Resistance, Viscosity, Volume</p>
            <p class="author"><strong>Submitted By: </strong>Justin Highley</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This is a simple demonstration of the difference between
			density and viscosity in fluid mechanics. Two equal size containers, one
			containing shampoo and the other corn syrup, are used to show the difference
			between the two concepts. This demonstration should take 5-8 minutes. </p>
                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong>: Most students are familiar with density and viscosity
			separately, but erroneously assume the two are always related. Density is simply
			mass over volume, and can be thought of as the “heaviness” of a material.
			Viscosity (μ) is a measure of a fluid’s resistance to flow and is used to relate
			shear stress to the rate of deformation: <br/>
			
			
			
			In general, as viscosity increases, so does density. However, in this
			demonstration the denser liquid (corn syrup) is less viscous than the less dense
			shampoo. This demonstration serves as a good lead into a discussion of viscosity
			as an independent property.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-a(a).png" class="const-img">
            
            
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
                    <td>Graduated Cylinder</td>
                    <td>2</td>
                    <td>$20</td>
                    <td>They must be of equal height.</td>
                  </tr>
                   <tr>
                    <td>Shampoo</td>
                    <td>1</td>
                    <td>$3</td>
                    <td>Not that much and the material can be recycled when complete.</td>
                  </tr>
                   <tr>
                    <td>Corn Syrup</td>
                    <td>1</td>
                    <td>$3</td>
                    <td>Not that much and the material can be recycled when complete.</td>
                  </tr>
                   <tr>
                    <td>Marbles</td>
                    <td>2</td>
                    <td>$4 for a pack</td>
                    <td>The two used must be the same sizee and weight.</td>
                  </tr>
                   <tr>
                    <td>Scale</td>
                    <td>1</td>
                    <td>$15</td>
                    <td>Optional</td>
                  </tr>
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong>  Fill each graduated cylinder with equal amount of shampoo and
			corn syrup. Have the marbles in your pocket or readily available.</p><br>

            
            <p class="application"><strong><u>In Class:</u></strong>  Pour equal amounts of corn syrup and shampoo into the cylinders. You
			can either use the scale to weigh the cylinders and prove that the corn syrup is
			more dense, or simply tell them. Then show them the marbles and tell them
			you are going to simultaneously drop a marble in each beaker. If desired, you
			can measure the marbles to demonstrate they are the same weight. Ask the	
			students to predict which marble will reach the bottom first. Most will state that
			the marble in the shampoo will hit first because it is the less dense fluid. You can
			play up the demonstration by having 1-2 students time the corn syrup beaker
			and others time the shampoo beaker. When you release the marble, the corn
			syrup marble will fall quickly, while the shampoo marble will take considerably
			longer – the difference will be obvious. </p>
            
          <p class = "application"><strong><u>Observations:</u></strong>The students should observe that a denser fluid is not necessarily
			more viscous. After the demonstration, you can show this by pouring the fluids
			out into jars. This demonstration can then transition into the discussion of
			Newtonian fluids. If the demonstration will be repeated in back to back classes,
			have enough materials for 2 demonstrations since emptying the shampoo/corn
			syrup back into their containers can be a messy affair. Also, cleaning the marbles
			sufficiently to put them back into your pocket can be time consuming as well. </p>  
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
