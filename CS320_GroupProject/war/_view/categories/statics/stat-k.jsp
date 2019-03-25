<!DOCTYPE html>
<html>
<head>
    <title>Construction | Physical Model </title>
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
            <p class="title">The Persuader</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>3-D, Equilibrium, Force, Magnitude, Moment, Vector</p>
            <p class="author"><strong>Submitted By: </strong>Jason Evers</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> : Use this daunting looking model to set the stage for a lesson
				on 3-D equilibrium and eventually persuade your students that it’s easier than it
				looks! This demonstration should take 20 minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> 3-D equilibrium for a non-concurrent force system
				requires the simultaneous solution of six equations of equilibrium, three
				equations for summing forces and three equations for summing moments about
				each axis.</p>
				
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-k-pic(a).png" class="const-img"><br>
            
            <p class="principle"> In order to keep all of these equations and forces organized, it becomes
				important to begin to describe forces and moments with Cartesian vectors and
				to use matrix algebra to solve the systems of equations that result from
				application of the principle of equilibrium. For Example, the Moment and Force
				Reactions at a fixed support might be described as:</p>
				
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-k-pic(b).png" class="const-img"><br>
            
            <p class="principle"> Some supports will not hinder translation in or rotation about one or more axis.
				In this case, the value for the magnitude given by A-F above will be zero. In
				order to describe a force as a vector given the force’s magnitude and line of
				action, one must first determine the unit vector of the force, then multiply it by
				the force’s magnitude. For example, the Unit vector describing a force with a
				line of action from point A to point B is found by dividing the position vector
				from A to B by the magnitude of that vector.</p>
				
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-k-pic(c).png" class="const-img"><br>
            
            <p class="principle"> Once the unit vector is found, the Force vector can be calculated by multiplying
				the unit vector by the force magnitude, which is f in this case.</p>
				
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-k-pic(d).png" class="const-img"><br>
           
            <p class="principle"> The final key element to determining equilibrium in 3D is to determine the
				Moment vector that is caused by any force vector acting at a distance from a
				point. In order to determine this, the cross product is used between the position
				vector from the point in question to any point along the force’s line of action and
				the Force vector. Using our previous example, the Moment caused by our Force
				AB about point 0 would be given by the cross product of a position vector from
				point 0 to any point along the force’s line of action (in this case we chose point
				A) and the Force vector AB.</p>
				            
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-k-pic(e).png" class="const-img"><br>
            
            <p class="principle"> Armed with these basics, 3D equilibrium problems can be easily solved.</p>
            

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
                    <td>Force Vector</td>
                    <td>2</td>
                    <td>$5; 25 minutes</td>
                    <td>Each vector represents one force acting on the PVC pipe system.</td>
                  </tr>
                  <tr>
                    <td>Moment Vector</td>
                    <td>1</td>
                    <td>$5; 15 minutes</td>
                    <td>This vector represents a moment acting on the PVC pipe system.</td>
                  </tr>
                  <tr>
                    <td>3/4'' PVP Pipe</td>
                    <td>75cm</td>
                    <td>$5; 10 minutes</td>
                    <td>The scale of this model is 1:10. The pipe should be cut into 3 piece of 20cm, 25cm, and 30cm.</td>
                  </tr>
                  <tr>
                    <td>3/4'' 90 Degree PVC Pipe Elbow</td>
                    <td>2</td>
                    <td>$0.25</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>3/4'' Threaded PVC Pipe End</td>
                    <td>1</td>
                    <td>$1</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>Threaded Pipe Mount</td>
                    <td>1</td>
                    <td>$8</td>
                    <td>This section mounts to the 2''x4'' base with screws and holds the threaded PVC pipe end.</td>
                  </tr>
                  <tr>
                    <td>2''x4''</td>
                    <td>25cm</td>
                    <td>$5; 5 minutes</td>
                    <td>This is the base of the persuader that can be mounted to a wall or door with a few clamps.</td>
                  </tr>
                  <tr>
                    <td>2'' Nail</td>
                    <td>3</td>
                    <td>$3</td>
                    <td>These nails will hold the force and moments vectors to the model.</td>
                  </tr>
                  <tr>
                    <td>3/4'' Screw</td>
                    <td>4</td>
                    <td>$3</td>
                    <td>These screws mount the pipe mount to the 2''x4'' base piece.</td>
                  </tr>
                </table><br>
            </div>
            
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-k-pic(f).png" class="const-img"><br>

                        
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Build the Demonstrator. (1) Refer to the Free Body Diagram (2) for
				assistance when building the demonstrator. Mount the threaded pipe mount to
				the center of the 2''x 4'' section. Thread the PVC pipe end piece into the pipe
				mount. Connect the 30cm section of pipe to the threaded end piece. Place a
				90 degree elbow on the opposite end of the 30cm section. Connect the 20cm section
				of pipe to the 90 degree elbow. Place another 90 degree elbow on the opposite end of the 25cm 
				section. The final 20cm pipe section should then connect to the elbow. Drill
				holes through the pipe at the locations for each of the externally applied forces
				and moments. These holes should be large enough to pass one of the 2'' nails
				through. The nails should be glued down and hold the force and moment
				vectors to the apparatus. One additional step that can be helpful is to label the
				points and distances on the Persuader with either permanent marker or by
				taping small pieces of paper to it.</p><br>

            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-k-pic(g).png" class="const-img"><br>
                                    
            <p class="application"><strong><u>In Class:</u></strong> At the beginning of class, point out the persuader and really build it up
				as a very difficult problem to solve, but that by the end of class it will be one that
				they can solve with ease. Begin by defining a Cartesian vector in 3 dimensions
				and what it means. Then, discuss support conditions in 3 dimensions and what
				vector support reactions would result from a fixed, hinge, cable, and other types
				of supports. Next, review how to describe a force with a certain line of action
				and magnitude by a Cartesian vector. First, determine the position vector for the
				line of action, then calculate the unit vector by dividing the position vector by its'
				magnitude. Finally, multiply the magnitude of the force by the unit vector to get
				the Cartesian force vector. The final step prior to being able to solve 'the
				Persuader' is to review the procedure for calculating the moment of a force
				about a point in 3D space by using the cross product.</p>
            
            <p class="application"> Translate the Persuader into a free body diagram on the board by isolating the
				body and replacing the support with the respective reactions that would occur.
				The free body diagram should look like the picture shown above (2) when
				completed.</p>
				
			<p class="application"> Once that is complete, the process of writing all of the force vectors and position
				vectors, then applying the equations of equilibrium is really quite painless. Show
				the students how to organize their equations into a table or a matrix in order to
				keep all of the unknowns straight in the equations.</p>
				
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

