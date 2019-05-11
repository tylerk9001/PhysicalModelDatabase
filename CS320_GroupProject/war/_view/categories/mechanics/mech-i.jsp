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
            <p class="title">Elastic Vs Plastic Deformation</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Mechanics</p>
            <p class="keywords"><strong>Keywords: </strong>Axial, Deformation, Elastic, Plastic, Strain, Stress</p>
            <p class="author"><strong>Submitted By: </strong>John Richards</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong>This is a simple demonstration of the basic principles
			underlying the elastic and plastic behavior of materials subjected to an axial
			load. The demonstration can also be used to show the highlight the elastic and
			plastic portions of stress-strain curves. This demonstration should take 8-10
			minutes.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-d(a).png" class="const-img">                        
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> The basic definitions for stress, deformation, and strain where the stress is force over area, axial (longitudinal) deformation is equal to
			the final length minus the initial length. The longitudinal strain is equal to the
			axial deformation divide by the initial length. Further, according to Hooke's Law,
			a stress-strain curve for each material can be developed showing elastic and
			plastic behavior. Hooke's Law <img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-d(b).png" class="const-img">                        
			where the Modulus of Elasticity (Young’s Modulus) is equal to the normal stress
			divided by the longitudinal strain. Further, in the Elastic Region of the stressstrain curve, a material will return to its original shape while in the Plastic Region
			permanent deformation is induced. The material finally ruptures and breaks.
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
                    <td>Twizzlers</td>
                    <td>Varies</td>
                    <td>$5</td>
                    <td>Each student will need two Twizzlers, one control and one experimental.</td>
                    </tr>
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> : Purchase enough Twizzlers so that each student and the instructor
			will have two. It also helps to open the package before hand to speed up the
			process. </p><br>

            
            <p class="application"><strong><u>In Class:</u></strong>During the lesson, the stress-strain curve is drawn and the various
			regions on the curve are identified (Elastic, Yielding, Inelastic/Plastic, and
			Fracture). Then bring out the Twizzlers to allow the students to make realworld observations about these various material behaviors.<br/> 
			
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-d(c).png" class="const-img">
		
			Each student will have one Twizzler as a control and the other will be used for
			the experiment. First, have the students pull on the experimental Twizzler with a
			small amount of force and notice how it will go back to its original length as
			compared to the control Twizzler (the Elastic Region). Next, have the students
			pull on the Twizzler more, just enough to induce permanent deformation so that
			it remains longer than the reference Twizzler, but not enough to break it. .
			Plastic behavior! Finally, have them pull on the Twizzler with enough force to
			cause it to rupture!
			
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-d(d).png" class="const-img">
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-d(e).png" class="const-img">
			
			T
			<p class = "application"><strong><u>Observations:</u></strong>: : Point out the difference between deformation/strain in the elastic
			region (the Twizzler returns to its original length every time) and plastic region
			(permanent deformation).
			<br/>
			After using the Twizzlers for the demo, destroy the evidence by eating the
			training aids!
			
			</p>
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
