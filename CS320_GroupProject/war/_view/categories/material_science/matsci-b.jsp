<!DOCTYPE html>
<html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<head>
    <title>Material Science | Physical Model </title>
    <!--Website CSS-->
    <link rel="icon" href="${pageContext.request.contextPath}/_view/img/tab.png">
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
                        <form action="${pageContext.request.contextPath}/dashboard">
                            <c:choose>
                                <c:when test="${sessionScope.login == true}">
                                    <a href="${pageContext.request.contextPath}/dashboard" name="dashboard"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
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
            <p class="title">Shape Memory Alloys</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Material Science</p>
            <p class="keywords"><strong>Keywords: </strong>Deformation, Martensite, Nitinol, Superelastic, Undeformed</p>
            <p class="author"><strong>Submitted By: </strong>Victor Yu and Lanny Griffin</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> These movie clips demonstrate the two phases of a shape
			memory alloy which enables shape memory alloys to “memorize” their predeformed
			shape, even after large deformations.
			This demonstration should take 15 minutes.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/material_science/matsci(a.1).JPG" class="const-img">
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> The shape memory effect occurs due to a phase transition
			between the original, or memorized, austenite phase to a deformed martensite
			phase. Once a shape memory alloy is distorted into the deformed martensitic
			state, the material can “regain” its original austenitic shape if the material is
			heated to above its transition temperature. Nickel-titanium alloys, or Nitinol,
			allow up to 8 percent of recoverable deformation. When compared to steel,
			which only allows up to 0.8 percent of recoverable deformation, Nitinol has
			extremely large recoverable deformation which gives this material its truly
			remarkable properties. The transition temperature is approximately 150°F for
			the Nitinol used in the movie clips. This transition temperature can fluctuate
			from approximately -50°F to 300°F, depending upon the weight percent of each
			metal in the alloy.</p>
			
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
                    <td>Nitinol Sample</td>
                    <td>1</td>
                    <td>$13-15</td>
                    <td>An 8 inch wire sample of Nitinol is used to
						perform the activities demonstrated in the
						movie clips above. It is important to know the
						exact transition temperature of the alloy since
						the demonstration depends on this.</td>
                  </tr>
                  <tr>
                    <td>Lighter</td>
                    <td>1</td>
                    <td>$3</td>
                    <td>A standard household lighter to heat the deformed shape memory alloy above its transition temperature.</td>
                  </tr>
                  <tr>
                    <td>Clear Pan of Hot Water</td>
                    <td>1</td>
                    <td>$10</td>
                    <td>A container (larger than the Nitinol sample)
						which can hold water heated to a temperature
						that is approximately 5-10 °F above the
						transition temperature.</td>
                  </tr>
                  
                </table><br>
            </div>
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Heat the pan of water to a temperature of approximately 150°F
			using a Bunsen burner or any other heating source available. Ensure that the
			water temperature is adequate to induce the phase transformation between
			martensite and austenite. The water should be maintained at this steady state
			temperature until the time of the demonstration.</p><br>
                       
            <p class="application"><strong><u>In Class:</u></strong> The different phases of a shape memory alloy, austenite and
			martensite, are discussed. In addition, the concept of the transition
			temperature is discussed and how the material can change from one phase to
			another based upon the transition temperature. We then show the students the
			sample of Nitinol and ask for a volunteer to deform the wire sample. The class is
			asked what phase the Nitinol sample is in after the volunteer has deformed the
			material. Then, with the heat resistant gloves on, the wire is heated with the
			lighter and the sample reverts back into its un-deformed, or austenite, shape.
			During the shape change, a discussion of phase changes is appropriate and the
			class is asked what phase the material is transitioning to with the application of
			heat from the lighter.<br><br>
			In a related experiment, the Nitinol is again deformed by a volunteer from the
			class. Ensuring that the pan of hot water is still at 150°F, the deformed Nitinol
			wire is dropped into the hot water. The Nitinol wire experiences a spontaneous
			transition where the wire “snaps back” into its undeformed, or austenitic, phase.
			Again, during the conduct of this related experiment, the same questions should
			be posed to the class (i.e. in what phase is the un-deformed wire, what phase is
			the Nitinol upon deformation, etc.).<br><br>
			<strong><u>Observations:</u></strong><br><br>
			The students should observe the shape memory alloy returning back to its
			memorized shape after experiencing extremely large deformations. This
			demonstrates the shape memory alloy transitioning from austenite to
			martensite and back again by means of a thermally induced-recoverable phase
			transformation. The shape memory alloy returns to its un-deformed state since
			the material is heated above its transition temperature. The heat serves as a
			source of energy to transform the lattice structure which leads to a phase
			change from martensite to austenite. This phase transformation can also be
			induced by stress – the so-called super-elastic effect.<br><br>
			The superelastic behavior of Nitinol is used in the design of stents. The
			transformation temperatures are set to be slightly below body temperature. The
			superelastic effect is caused by the stress-induced formation of some martensite
			above its normal temperature. Because martensite has been formed above its
			normal temperature, the martensite reverts immediately to un-deformed
			austenite when the stress is removed. This process provides the elasticity in
			these alloys for strains up to about 8%. A common application of the superelasticity
			in Nitinol is seen in eye-glass frames which can experience large
			deformations without breaking.</p><br>

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
