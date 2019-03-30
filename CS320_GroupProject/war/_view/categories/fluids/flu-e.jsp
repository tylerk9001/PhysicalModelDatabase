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
            <p class="title">Smoke Tunnel</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Fluids</p>
            <p class="keywords"><strong>Keywords: </strong>Flow Visualization, Laminar, Turbulent, Separation</p>
            <p class="author"><strong>Submitted By: </strong>Justin Highley</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong>  This is a series of demonstrations using a smoke tunnel for
			flow visualization, including laminar/turbulent flow and separation. This
			demonstration should take 10-15 minutes</p>
                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong>   This demonstration can be used in the context of several
			lessons, including external flow, Computation Fluid Dynamics (CFD), and
			lift/drag.
			External Flow/CFD: Properties within a flow field vary depending on whether
			the flow is laminar or turbulent. Laminar flow properties can be found using
			either the Bernoulli equation (inviscid flow) or the Navier-Stokes equations
			(viscous flow). The Navier-Stokes equations struggle with calculating turbulent
			flow properties and most often these flows are found using CFD. Part of the
			reason is the unpredictable and random nature of turbulent flow.
			Lift/Drag: The lift created by an airfoil varies as a function of angle of attack - as
			the angle increases, so does the lift. However, at the critical angle of attack, the
			flow will separate from the airfoil with a corresponding drop in lift and increase
			in drag. Drag on an object is due to changes in pressure across a body. As the
			flow approaches a body, a stagnation point is formed and the flow is zero. As
			the flow moves away from that point, the velocity increases, thereby causing the
			pressure to decrease (Bernoulli). This is the cause of pressure drag, which is the
			dominant form of drag on objects.</p>
            
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
                    <td>Smoke Tunnel</td>
                    <td>1</td>
                    <td>Thousands</td>
                    <td>Models vary based on capabilities desired and cost.</td>
                  </tr>
                   <tr>
                    <td>Shapes to put in the Smoke Tunnek</td>
                    <td>Various</td>
                    <td>$25</td>
                    <td>Common shapes include airfoils, cylinders, and flat plates.</td>
                  </tr>
                </table><br>
            </div>
            
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-e(a).png" class="const-img">
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Put the first shape you plan on using into the smoke tunnel. If
			required, warm up the smoke generator.</p><br>

            
            <p class="application"><strong><u>In Class:</u></strong>  External Flow: For this class, the demonstration is best done toward the
			end of class, depending on the location of the smoke tunnel relative to the
			classroom. Normally the best shapes to use are a cylinder and a flat plate
			(normal to the flow). The flow around the cylinder will enable the students
			to see how the flow conforms to the shape of the body, until it separates as the
			body's geometry turns away from the flow. Slowly increase velocity and point
			out how the separation point moves further back on the cylinder.
			For the flat plate, the flow will initially stagnate at the front, but will move to the
			top and bottom of the plate. Because the plate is normal to the flow, the drag
			force is due to the pressure only - there is no skin friction (shear stresses are not
			in the flow direction). Once you are established in the turbulent flow regime,
			point out how the different eddies develop in the flow, and that no two are alike
			(i.e. random). Reinforce how the unpredictable behavior makes it hard to
			analyze properties in the turbulent flow regime.
			Regardless of the shape used in the smoke tunnel, the students should be able
			to see the stagnation point at the front of the body. They should also be able to
			see that as the flow moves away from that point, the velocity increases. They
			won't be able to see the decrease in pressure, but they know it's there based on
			Bernoulli.
			CFD: Unlike the other two classes, it is best to begin this class at the smoke
			tunnel, pointing out the random nature of the eddies during turbulent flow. Use
			this as a lead-in to the discussion of the need for CFD to analyze turbulent flow,
			which is significantly more complex than laminar flow.
            </p>
            
          	<p class = "application"><strong><u>Observations:</u></strong> In each demonstration, the students can obtain a better idea of
			what is happening as the flow moves over bodies of various shapes and sizes.
			The capabilities of the specific smoke tunnel will determine the extent of the
			student'ss learning experience.</p>
			
			<p class = "application"><strong><u>Instructor Tips:</u></strong>   Use as many of the different shapes in the smoke tunnel as
			possible so the students see the effects that geometry has on the flow field.
			Particularly, the use of different shapes can precipitate the discussion of how
			streamlining is used to delay separation and therefore reduce pressure drag.
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
