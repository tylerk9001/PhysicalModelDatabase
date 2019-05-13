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
            <p class="title">The Tank</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Dynamics</p>
            <p class="keywords"><strong>Keywords: </strong>General Planar Motion, Rotation, Rotational, Translation</p>
            <p class="author"><strong>Submitted By: </strong> Tom Messervey</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This training aid demonstrates the translational and
			rotational kinematics of rigid bodies in translating and rotational frame. This demonstration should take 30 minutes.</p>
            
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> Building upon general planar motion (GPM) in a nonrotational frame, this model develops the need to address GPM in a rotational
			frame by examining a projectile exiting a rotating gun tube of a moving tank.
			The fact that the projectile has its own velocity and that its distance from the
			tank changes with time motivates the fact that something is happening
			differently both physically and mathematically from the non-rotational
			previously discussed and leads to the derivation of the following vector
			equations:
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
                    <td>Toy Tank</td>
                    <td>1</td>
                    <td>$4-20</td>
                    <td>Ensure the turret swivels</td>
                  </tr>
                 
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
                        
            <p class="application"><strong><u>In Class:</u></strong> Tank clips start the lesson and the tank training aid is utilized to
			motivate the need for the derivation of the equations. The example problem for
			the lesson is then solved examining the absolute velocity and acceleration of the
			projectile before it leaves the tube. </p><br>
            
            <p class="application"><strong><u>Additional Application:</u></strong> Tank Trivia - Did you know? Tanks have multiple
			targeting sensors which include a wind sensor on the back of the tank and a
			gyroscope which measures the angle of inclination or declination the tank is
			sitting or moving upon. When a gunner lazes a target, the computer measures
			the relative motion between the tank and its target, uses the wind and gyro, and
			instantaneously executes the targeting solution that will ensure steel target. The
			M1A2 Abrams also now includes independent targeting systems. This allows a
			Tank Commander (TC) to identify a target separate from the gunner such that
			when the gunner finishes a firing mission, a simple button automatically adjusts
			the turret to the secondary target. </p><br>
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
