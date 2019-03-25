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
            <p class="title">Lug Wrench vs. Breaker Bar</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Free Vector, Moment, Varignon's Theorem</p>
            <p class="author"><strong>Submitted By: </strong>Jason Evers</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> Introduce Varignon’s theorem to students as one way to
				determine the moment about a point. Show how moments are free vectors.
				This demonstration should take 10 minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> Varignon’s Theorem states that the moment of a force is
				equal to the sum of the moments of that force’s components about the same
				point.</p>
				
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-i-pic(a).png" class="const-img"><br>

			<p class="principle"> d = Perpendicular distance from the Force's Line of Action to the point</p>

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
                    <td>Scale</td>
                    <td>1</td>
                    <td>$20</td>
                    <td>A typical bathroom scale will do.</td>
                  </tr>
                  <tr>
                    <td>Clamp</td>
                    <td>2</td>
                    <td>$8 each</td>
                    <td>Two heavier duty clamps that can hold down the bolt holder apparatus.</td>
                  </tr>
                  <tr>
                    <td>Bolt and nut</td>
                    <td>1</td>
                    <td>$8</td>
                    <td>The head of the bolt should correspond approximately in size to a lug nut</td>
                  </tr>
                  <tr>
                    <td>Bolt Holder</td>
                    <td>1</td>
                    <td>$25; 30 minutes</td>
                    <td>This device is simply meant to hold the bolt and
						be clamped to a desk or windowsill. It consists
						of a hollow shaft, large enough in inner
						diameter to allow the above bolt through,
						welded to two flat plates that will be clamped
						down. </td>
                  </tr>
                  <tr>
                    <td>Breaker Bar</td>
                    <td>1</td>
                    <td>$20</td>
                    <td>A breaker bar designed for lug nut applications is required; typically, any breaker bar from a car's spare tire assembly will work.</td>
                  </tr>
                  <tr>
                    <td>Lug Wrench</td>
                    <td>1</td>
                    <td>$12</td>
                    <td>Any type of lug wrench that has two equally spaced arms will do.</td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
                                 
            <p class="application"><strong><u>In Class:</u></strong> Introduce the concept of Varignon’s theorem in the context of changing
				a tire. The mounted nut is your lug nut on the tire. Using the breaker bar apply
				a moment to the nut, but push at an acute angle with respect to the longitudinal
				axis of the breaker bar. The definition of a moment included the perpendicular
				distance to the force’s line of action. If the force is not applied perpendicular to
				the breaker bar as the nut is turned, then it is difficult to calculate the distance
				without extensive geometry. Introduce Varignon’s Theorem to help at this point.
				Using the magnitude of the angle and the magnitude of the force applied to the
				breaker bar, calculate the moment. Choose these values carefully beforehand to
				prove the next point.</p><br>
				
			<p class="application"> Contrast the Moment from a Couple with Moment from a Force:
				Calculate the Moment if using the lug wrench and the same total force
				magnitude as with the breaker bar. In this case though, the force is applied at
				two locations, so each hand applies ½ of the force. If the dimensions and forces
				are selected correctly, the Moment caused by the lug wrench will exceed that
				caused by the breaker bar.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-i-pic(b).png" class="const-img"><br>
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-i-pic(c).png" class="const-img"><br>
            
                        
            <p class="application"><strong><u>Additional Application</u></strong> Show the Concept of Free Vector:
				Demonstrate the concept of a free vector now by having a student stand on the
				scale and apply an upward force to the breaker bar. The student’s weight should
				increase as long as the student keeps their lower body rigid. In contrast, when
				the same student applies an upward and downward force to the lug wrench,
				his/her weight should not change. This demonstrates the concept that there is
				no net force acting on the student. At this point, one can begin a discussion on
				the merits of each option and which might be better for the studs of the wheel.</p><br>
								
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

