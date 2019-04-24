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
            <p class="title">Rectilinear Motion</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Dynamics</p>
            <p class="keywords"><strong>Keywords: </strong>Coordinate, Displacement, Position, Total Distance Traveled</p>
            <p class="author"><strong>Submitted By: </strong> David Hampton</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This is a simple demonstration to distinguish among a
			particle’s coordinates, position, displacement, and total distance traveled. A
			remote-controlled car is used to demonstrate the distinctions, for a particle in
			rectilinear motion. This demonstration should take 5-8 minutes.
             </p>
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong>
            The position (location) of a particle in rectilinear motion
			can be described by Cartesian coordinates. If the positive x-axis of a Cartesian (xy-z) coordinate system is lined up with a particle’s direction of travel, the single
			coordinate x will suffice to locate the particle’s position. In scalar form, the
			particle is said to be located at position x, or, more completely, at (x,0,0).
			Coordinates can have positive or negative values. In vector form, the particle is
			located at 𝑥𝒊 + 0𝒋 + 0𝒌 , or simply 𝑥𝒊. Any of these four expressions suffices to
			locate the particle; but the particle’s position should always be considered as a
			vector quantity, since it represents both a magnitude (distance) and a direction
			from the origin. The coordinates are the scalar quantities, which—with the
			coordinate system—describe the particle’s location. If the coordinate system is
			rotated clockwise through some angle θ (say, 35°), then two coordinates will
			now be necessary to describe the particle’s position: (x,y), (x,y,0), 𝑥𝒊 + 𝑦𝒋 , or
			𝑥𝒊 + 𝑦𝒋 + 0𝒌. Again, the position is normally described relative to the
			coordinate system origin, and is a vector quantity.
			The displacement of a particle describes its position relative to another (typically
			fixed) reference point, not necessarily the origin of the coordinate system. If the
			reference position is , the displacement at any point 𝑥𝒊 is the vector 𝑥 − 𝑥1 𝒊 ,
			or simply 𝑥 − 𝑥1, with the unit vector understood (for rectilinear motion in the x
			direction). The position of the particle is simply its displacement from the origin.
			The total distance traveled differs from the displacement in two significant ways:
			1) The total distance traveled is a positive scalar; but the displacement is a
			vector, even if given in scalar form with the unit vector understood.
			2) The total distance traveled from position 1 to position 2 represents the length
			of the actual path (taking into account any overlaps) traversed by the particle
			along the path it traveled; the displacement, on the other hand, simply
			represents the vector (even if given in scalar form as x) from position 1 to
			position 2, and gives no information about the path traveled. For example, the
			particle could have started and stopped at the same location, after traveling a
			significant distance. (In rectilinear motion, of course, this would entail the
			particle’s reversing direction at least once.) In this case the displacement would
			be a vector of magnitude zero; and the total distance traveled, some nonzero
			scalar.
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
                    <td>Model Car</td>
                    <td>1</td>
                    <td>$5-30</td>
                    <td>Any small model will suffice (even a book or an eraser will do), but a rolling vehicle is preferred-and if it is remotely controllable it will be more memorable for the students.</td>
                  </tr>
                  
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            <p class="application"><strong><u>Before Class:</u></strong>Mark a coordinate system (with origin) on the floor (or desk) and
			practice the demonstration. Be sure to have the room arranged so that students
			can see the demonstration. </p>
            
                        
            <p class="application"><strong><u>In Class:</u></strong> Move (or operate, if remotely controllable) the vehicle from the origin
			along the x axis (1) in a positive direction, (2) in a negative direction, and (3)
			along a path that includes motion in both positive and negative directions.
			Discuss how to locate the vehicle using the coordinate system. Discuss also the
			advantage of a coordinate system that has an axis aligned with the car’s motion,
			for rectilinear motion. Use marks or tiles on the floor to quantify coordinates,
			position, and displacement; note the coordinate signs and sign changes.
			Determine the total distance traveled for each of the three motions, noting that
			the total distance traveled is always nonnegative.
			Observations: The students should observe that coordinates can be zero,
			positive, or negative; but that the total distance traveled is always nonnegative.
			They should note that for rectilinear motion whenever the vehicle reverses
			direction it passes through a condition of zero velocity. The times or locations of
			zero velocity may be needed for determining total distance traveled. Students
			should observe that, for motion only in the positive x direction, the total
			distance traveled and the x coordinate have the same value; but that for motion
			only in the negative x direction the total distance traveled and the coordinate do
			not have the same value. In particular, the former is the absolute value
			(magnitude) of the latter.</p><br>
            
            <p class="application"><strong><u>Additional Application:</u></strong> Rotate the coordinate system through some angle
			(between 30° and 60° , for visual clarity), and repeat the demonstration.
			(Alternatively, but less desirably, you could use the same coordinate system and
			rotate the “roadway.”) Note the increase in complexity of the mathematical
			description for the vehicle motion—even though the vehicle still has the same
			rectilinear motion—since now two coordinates are required instead of one.
			Remark on the desirability of choosing your coordinate system to simplify the
			mathematical description, where possible.
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
