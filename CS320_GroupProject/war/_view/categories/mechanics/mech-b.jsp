<!DOCTYPE html>
<html>
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
            <p class="title">Foam Beam</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Mechanics</p>
            <p class="keywords"><strong>Keywords: </strong>Beam, Bending, Compression, Deformation, Plane Sections, Tension, Torsion</p>
            <p class="author"><strong>Submitted By: </strong>Ronald Welch</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong>TThis simple demonstration depicts how moments (and
			forces) result in bending of a beam and how the deformation is related to the
			assumptions associated with elastic beam behavior. A foam beam with vertical
			lines (black lines) and a horizontal line drawn along the neutral axis (red line) for
			a rectangular beam is used to demonstrate bending behavior. The orientation of
			the lines during bending provides a simple physical representation of flexural
			theory. This demonstration should take 3-5 minutes.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-b(a).png" class="const-img">                        
            <img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-b(b).png" class="const-img">                        
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> The foam beam can be used to show many concepts
			surrounding flexural behavior, but the easiest and possibly most difficult to
			visualize without a physical model is plane sections remain plane. Additionally,
			many students will be able to see that a positive moment (based on the
			established sign convention) results in the beam that looks like a smile in which
			the top fibers are in compression and the bottom fibers are in tension while the
			fibers at some point in between are not experiencing tension or compression,
			i.e., the neutral axis.</p>
            
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
                    <td>Foam Beam</td>
                    <td>1</td>
                    <td>$2-7 depending on size; 25 minutes</td>
                    <td>The beam can be any resonable size. This example used a 23.5 inch long beam with a 4"x 4" square cross-section in the first two images. A 2" x 2" x 12" foam beam works just as well. The material is basic funiture foam.</td>
                  </tr>
                   <tr>
                    <td>Markers</td>
                    <td>2 colors</td>
                    <td>$3 for the pair</td>
                    <td>These are used to draw lines on the beam. One color (red) is used for a horizontal line down the
					whole length of the beam in the middle (neutral
					surface). Ten to fifteen vertical lines are drawn
					towards the middle of the beam, spaced about
					an inch apart, with the other color (black).
					</td>
                  </tr>
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Prepare the beam with the lines drawn on it.</p><br>

            
            <p class="application"><strong><u>In Class:</u></strong>Show the class the beam and ask what they think will happen when
			you apply a moment to it. More directed questions could be: Which lines will
			change shape and/or orientation? What will happen to the distance between the
			black lines? <br/>
			Then apply a moment using a hand at each end of the beam so that the beam
			begins to bend into a slight smile and ask what just happened. Point out the
			deformation of the red line-it is now curved-but that it did not change in
			length while the top surface and the bottom surface did change length. This can
			be seen by observing the change in the space between the black lines. At the top
			of the beam, the lines moved closer together (compression), while at the bottom
			of the beam the lines moved farther apart (tension). The distance between black
			lines along the red line is still the same. But also point out that the black lines
			themselves did not deform - they are still straight. Plane sections remain plane
			during elastic bending. The change in the spacing of the lines shows that the top
			of the beam is in compression, and the bottom is in tension.
			Note: The size of the rectangular beams does not matter. A 2 inch square foam
			beam can also be used.</p>
			
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-b(c).png" class="const-img">
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-b(d).png" class="const-img">
			
			<p class = "application"><strong><u>Additional Application:</u></strong>There is usually a lot of confusion as to when the
			assumptions of flexural behavior are no longer valid. The foam beam can be used
			to provide some insight into the fact that flexural theory is only valid when the
			assumptions are valid. Bending a beam to the point that the vertical lines are no
			longer straight visually demonstrates that the assumptions are no longer valid
			when the beam experiences large deflections and plane sections are no longer
			plane. The students can see this theory under the large deformations the beam
			is experiencing and the professor can further enforce that the assumptions (and
			associated flexural equations) are only valid for elastic conditions.
			When discussing torsion, torsional loads on square shapes causes warping and is
			very difficult to determine how much of the material is resisting the applied
			twisting moments.</p>
			
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-b(e).png" class="const-img">
			<img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-b(f).png" class="const-img">
			
			
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
