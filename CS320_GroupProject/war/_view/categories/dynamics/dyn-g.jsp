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
        <a class="search-btn" href="${pageContext.request.contextPath}/search"><i class="fas fa-search"></i></a>
    </div>

<content>
    <div class="content">
        <div class="header-container" align="center">
            <p class="title">Projectile Motion</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Dynamics</p>
            <p class="keywords"><strong>Keywords: </strong>Acceleration, Projectile Motion, Velocity</p>
            <p class="author"><strong>Submitted By: </strong> Charles Packard</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong>This is a simple demonstration of the basic principles and
			behavior underlying projectile motion. A nerf gun is used to show that projectile
			motion can be modeled by a particle having a vertical component of motion with
			constant acceleration, and a horizontal component with constant velocity (zero
			acceleration). This demonstration should take 5-8 minutes.
             </p>
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> A projectile follows a curved path that is approximately
			parabolic, provided that air resistance can be neglected. This curvilinear motion
			is planar (approximating a portion of an inverted parabola in a vertical plane),
			and describable in terms of horizontal (x) and vertical (y) coordinates. The
			motion of the projectile can be modeled by a particle having a vertical
			component with constant acceleration (g, downward) and a horizontal
			component with constant velocity (zero acceleration). The following equations
			describe the particle’s motion in terms of these coordinates:
			<br/>
			Notice that the two equations are independent—the horizontal and the vertical
			components of the particle’s motion can be considered separately. If air
			resistance were not negligible, however, such as for a paper wad, the equations
			would be coupled—and more complicated.
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
                    <td>Nerf Gun</td>
                    <td>1</td>
                    <td>$10-15</td>
                    <td>Any model works as long as it contains soft, nerf-like projectiles, to which linear impulse is applied by a compressed spring.</td>
                  </tr>
                  <tr>
                    <td>Protractor</td>
                    <td>1</td>
                    <td>$4</td>
                    <td>The protractor is used to measure the angle of the toy gun's inclination when the soft projectile is fired.</td>
                  </tr>
                  <tr>
                    <td>Yard Stick</td>
                    <td>1</td>
                    <td>$5</td>
                    <td>You can make a plum bob out of a string and a small eight like a nut. It is used in conjuction with the protractor to determine the gun's angle with repsect to the horizontal plane.</td>
                  </tr>
                  <tr>
                    <td>Tape Measure</td>
                    <td>1</td>
                    <td>$5</td>
                    <td>The tape measure is used to measure the horizontal ditance from the launch point to the impact point.</td>
                  </tr>
                  <tr>
                    <td>Stop Watch</td>
                    <td>1</td>
                    <td>$5</td>
                    <td>The stopwatch is used to measure the projectile time-of-flight</td>
                  </tr>
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            <p class="application"><strong><u>Before Class:</u></strong>Mount the protractor to the toy gun so that the flat edge is aligned
			with the barrel and the curved edge faces down. Attach the “plumb bob” to the
			middle of the protractor’s flat edge, to permit angular measurements of the
			barrel’s inclination angle. Make these attachments in such a way that the
			operation of the toy is not hampered. Experiment with the toy gun so that
			you have a feel for how far and how high the soft projectile will go within the
			classroom. </p>
            
                        
            <p class="application"><strong><u>In Class:</u></strong> : Introduce the equations above and use the toy gun to validate them.
			Use students as time keeper, recorder, impact point marker, etc.
			Ask students to predict which will hit the ground first, a soft projectile fired
			by the toy gun, or a projectile dropped from the firing height at the same time.
			Demonstrate that regardless of the firing height, both projectiles impact the
			ground at the same time as long as the barrel is horizontal. This shows that the
			vertical and horizontal components are independent.
			Determine horizontal and vertical launch velocities from measurements of
			angle of inclination, launch height, and time of flight using the equations above.
			Demonstrate, space permitting, that different angles of fire can result in
			the same range. (This may be difficult if your class has a low ceiling.)
			Observations: The students should observe that a projectile dropped from some
			height <i>h</i> impacts the ground at the same time as one that is fired horizontally by
			a toy gun from the same height. The students should also observe that there are
			generally two angles of fire which result in the same impact point—the only
			exception is the 45 degrees
			firing angle, which only has one.</p><br>
            
            <p class="application"><strong><u>Additional Application:</u></strong> Once the firing velocity is determined, the students can
			determine the firing angle and height required to hit some target of interest, say
			the mascot of the school’s arch rival on the sport field!
             </p><br>
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
