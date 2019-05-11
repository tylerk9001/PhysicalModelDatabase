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
            <p class="title">Design of Axial Members</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Mechanics</p>
            <p class="keywords"><strong>Keywords: </strong>Axial Load, Factor of Safety, Stress</p>
            <p class="author"><strong>Submitted By: </strong>Matt Morris, Tom Messervey, and Led Klosky</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong>This is a simple demonstration to introduce the basic
			principles of experimentation, analysis, and design in reference to axially loaded
			members. Copper wire is used to lift an object of known weight. In order to
			determine the minimum number of copper wire strands required to lift the load,
			students perform experiments, analysis, and design calculations. The discussions
			in class inherently lead to an understanding of the practicality of
			experimentation, the need for a factor of safety in actual design, and actualversus-allowable stress. This demonstration should take 15-20 minutes</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-c(a).png" class="const-img">                        
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> The basic equations for axially loaded members:
            <img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-c(b).png" class="const-img">                        
            where the actual normal stress imposed on the member must be lower than the
			allowable normal stress. The actual normal stress in a member is the axial load
			over the cross sectional area. The allowable normal stress in this case is the
			ultimate strength of the material divided by a factor of safety. Therefore, if the
			material properties, expected load, and factor of safety are all known, the
			required cross sectional area can be determined and the member can be sized to
			carry the load.</p>
            
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
                    <td>Copper Wire</td>
                    <td>Lots</td>
                    <td>$20; 20 minutes</td>
                    <td>Any wire will work, but the ultimate strength
					and diameter must be known before class.
					Copper wire is preferred as it ruptures without
					having to use much weight. The wire used in
					this example is annealed copper wire with a
					diameter of 0.006 in., a yield strength of 8,000
					psi, and an ultimate strength of 33,000 psi.</td>
                    </tr>
                   <tr>
                    <td>Load</td>
                    <td>1</td>
                    <td>$10; 15 minutes</td>
                    <td>Use anything as a load. This demo uses a load with a total of 5 lbs.</td>
                  </tr>
                  <tr>
                    <td>Scale</td>
                    <td>1</td>
                    <td>$10</td>
                    <td>Any scale to determine the weight of the object.</td>
                  </tr>
                  <tr>
                    <td>Crane</td>
                    <td>1</td>
                    <td>$15; 20 minutes</td>
                    <td>The easiest objects to use as your crane are yard
					sticks or broom handles. Depending on the level
					of drama you want in the classroom, you can
					enhance your crane by using more complicated
					setups as seen in the photos below.</td>
                  </tr>
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Prepare several loops of copper wire with various numbers of
			strands. Prepare the load you are going to lift by ensuring that it has
			something (like a hook) to attach the loops of copper wire. It is important
			that you make a couple of trial runs before class to ensure that secondary effects
			(like kinking of the wire) are minimized and don't drive the behavior.
            </p><br>
			
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-c(c).png" class="const-img">
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-c(d).png" class="const-img">

            
            <p class="application"><strong><u>In Class:</u></strong>SChallenge the class by asking them to determine how many strands of
			copper wire are required to lift the given load. Weigh the load in front of the
			class and record it on the board. (In this example, the load is 5 lbs.)
			Conduct the experiment portion of the lesson. Ask the students if one loop (two
			strands) of copper wire will carry the load. Try to lift the load with two strands
			of copper wire. Given the example 5 lb load and copper material properties
			described above, the copper fails with two strands. Ask the class what they
			suggest. Inherently the students will suggest adding more wire. Try to lift the
			load with your pre-made loop of four strands. In our example the wire deforms
			more slowly than before, but still ruptures. Discuss with the students that
			experimentation is great in the classroom and a lab, but is not feasible on a real
			job site. This will lead into the need for design.
			Conduct the design portion of the lesson. Using the equations described above,
			rearrange and solve for the minimum cross sectional area required to lift the
			load. <br/> 
			
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-c(e).png" class="const-img">
			
			
			In our example: <br/>
			P = 5 lbs.<br/>
			F.S. = 1 since we merely want to lift the load<br/>
			ultimate = 33,000 psi. Obtained from a material properties table for annealed<br/>
			copper <br/> <br/>
			Solving the equation:<br/>
			A >_ 0.000152 in2<br/>
			Dividing this value by the cross sectional area of one wire with diameter of 0.006
			inches will yield the minimum number of wires required to carry the load:
			
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-c(f).png" class="const-img">
			
			Therefore, based on design, we will use 6 strands to ensure that the wire does
			not break. Conduct another experiment using 6 strands. You will be able to lift
			the load. Now ask the class how confident they are with 6 strands. Tell them in
			real life there might be some circumstances that require more strands; it might
			be a windy day, the crane operator might not be smooth on the controls, the
			load may be slightly higher than we estimated, etc. At this point shake the crane
			rig slightly and it should fail.<br/>
			Now is the best time to introduce the importance of factor of safety and how
			risk comes into play. Perform an analysis using 8 strands and determine the
			factor of safety you are building into the design. Rearranging the equation and
			solving for F.S.:</p>
			
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-c(g).png" class="const-img">
			
			<p class = "application"><strong><u>Additional Application:</u></strong>: As you can see from the video, you can use toy tanks,
			cars, or anything as a load to grab the students' attention. Your crane setup can
			be extravagant; in the video we have a system of pulleys and we've also used toy
			cranes. During the experiment portion of the lesson students will start to enjoy
			the lifting of the tank, and the subsequent breaking of copper wires. Tell the	
			students when they start testing that they are responsible if anything breaks!
			This will bring home the point that if you are to lower your risk, you need to
			increase your factor of safety. However, increasing your factor of safety will
			increase your cost too. With some basic role-playing (the instructor is the
			contractor and the students are the engineers) you can get the students to
			realize that the number of wires chosen can impact a career!
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
