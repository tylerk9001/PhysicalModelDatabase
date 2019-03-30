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
            <p class="title">Head Loss</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Fluids</p>
            <p class="keywords"><strong>Keywords: </strong>Bernoulli Equation, Energy Equation, Head, Inviscid, Pipe Flow</p>
            <p class="author"><strong>Submitted By: </strong>Justin Highley</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This is a demonstration used to show the effects of head loss
			in pipe flow. A large water container (bucket or drum) with a hose is placed at a
			known elevation. Different nozzle diameters can be used to demonstrate the
			effects of minor losses on pipe flow. This demonstration should take 15-20
			minutes.
             </p>
                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong>The energy equation is the primary solution tool used in pipe flow. <br/>
            For inviscid fluids with no losses, this equation simplifies to the Bernoulli equation: <br/>
            In this demonstration the Bernoulli equation is used to predict the ideal(maximum) velocity from the hose.
            This is done by applying the equation between the top of the water container (Point 1) and the hose nozzle (Point 2).
            Point 1 is a free surface: p1 and V1 = 0.
			The water exits as a free jet: p2 = 0.
			The hose nozzle is at the zero datum: z2 = 0. <br/>
			Therefore, for the above system the velocity at the nozzle can be found by:
			<br/>
			Again, this is the ideal velocity and neglects any losses in the system.
			By finding the actual velocity as described later one can calculate the head loss in
			the system. Returning to the energy equation and applying the same
			assumptions as before, head loss is given by:
			</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-b(a).png" class="const-img">
            
            
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
                    <td>Large bucket or drum(10L or more)</td>
                    <td>1</td>
                    <td>$25</td>
                    <td>The container must be vented to the atmosphere at the top and have a spigot for attaching a hose.</td>
                  </tr>
                   <tr>
                    <td>Hose</td>
                    <td>1</td>
                    <td>$20</td>
                    <td>Typical garden hose</td>
                  </tr>
                   <tr>
                    <td>Nozzle</td>
                    <td>Various</td>
                    <td>$5-20</td>
                    <td>This can be at the reservoir or hose end.</td>
                  </tr>
                   <tr>
                    <td>Stop Watch</td>
                    <td>1</td>
                    <td>$5</td>
                    <td></td>
                  </tr>
                   <tr>
                    <td>Bucket</td>
                    <td>1</td>
                    <td>$5-10</td>
                    <td>The bucket must be accurately labeled so that it can measure volume. Verrify any manufacturer markings.</td>
                  </tr>
                   <tr>
                    <td>Graduated Cylinder</td>
                    <td>1</td>
                    <td>$5</td>
                    <td></td>
                  </tr>
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Set the reservoir in a secure overhead position (6-8 feet high),
			ensure that the reservoir is filled and select a nozzle for the first demonstration.
			Have the bucket and graduated cylinders ready for the demonstration. Make
			sure to do a test run to ensure no leaks are present and to check that the math
			works as expected for your particular setup. The first setup will take up to an
			hour.</p><br>

            
            <p class="application"><strong><u>In Class:</u></strong>   Show the students the setup and have them apply the Bernoulli
			equation to predict the maximum theoretical velocity from the hose. Once they
			have a value, open the spigot on the reservoir (1-2 mins depending on the size of
			your water tank – an 11 liter tank yields about 4 minutes of flow) and drain the
			water into the bucket. After a sufficient amount of time, measure the volume of
			water and calculate the volumetric flow rate as Q = Volume/Time and the
			velocity as V = Q*Area, where the area is the cross-sectional area of the nozzle
			outlet. Compare this value to that predicted by the Bernoulli equation – it will
			be significantly less.
			Explain that the difference is due to the inviscid assumptions in Bernoulli, and
			that the energy equation analysis is more accurate. Then calculate the head loss
			using the equation given above . Repeat the experiment using other nozzles.
			The value of head loss will change due to the different minor losses. </p>
			
          <p class = "application"><strong><u>Observations:</u></strong>By comparing the actual velocity to the ideal, the students should
			observe that the Bernoulli equation is limited in its applications. Additionally,
			they will learn that the inviscid assumption overly simplifies pipe flow analysis. </p> 
          
          <p class = "application"><strong><u>Additional Application:</u></strong> Place the reservoir close to a hose and water source.
			This will allow you to rapidly refill the tank between demonstrations. Also, since
			velocity and head loss are functions of elevation, maintain the hose nozzle at a
			fixed height while discharging to ensure consistent results. </p>
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
