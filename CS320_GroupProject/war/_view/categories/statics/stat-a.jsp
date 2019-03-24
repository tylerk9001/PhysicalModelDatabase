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
            <p class="title">The Ski Gondola - Concentrated Cable Loads</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Cable, Equilibrium, Point Load, Pulley, Two-Force Member</p>
            <p class="author"><strong>Submitted By: </strong>Tom Messervey</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This physical model demonstrates how cables subjected to
				concentrated point loads establish equilibrium through geometry – i.e., the slope
				of each cable segment will change (as will the support reactions) as different
				loads are placed on the cable. This demonstration should take 10-20 minutes</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> Cables subjected to concentrated loads are a great
				example of using static equilibrium to solve real-world problems. The solution
				method for this problem highlights many fundamental lessons in statics. Basic
				observations include that cables are two-force members that can be treated just
				like truss members, that the horizontal component of the tension is equal across
				all segments, and that the maximum tension must be in the segment with the
				greatest slope.</p>

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
                    <td>Rope or Cord</td>
                    <td>Any Amount</td>
                    <td>$10-$20</td>
                    <td>Size and cost will vary depending on the size of the model constructed.</td>
                  </tr>
                  <tr>
                    <td>Weight</td>
                    <td>2-3</td>
                    <td>$10</td>
                    <td>These weights will act as the point loads on your supported cable.</td>
                  </tr>
                  <tr>
                    <td>Measuring tape or ruler</td>
                    <td>1</td>
                    <td>$15-$50; 30 minutes</td>
                    <td>Using wood, build a rigid support system to span the cable and support the weights acting on the cable.</td>
                  </tr>
                  <tr>
                    <td>Pulley</td>
                    <td>1</td>
                    <td>$10</td>
                    <td>**Only needed as part of the Additional Application**</td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Build your support structure, tie off both ends of the cord, leave
				some slack, and hang the weights. Have your measurements and numerical
				values pre-planned to simplify the problem solving process, but also be willing to
				allow the students to manipulate the weight values and locations within the
				system.</p><br>
                                    
            <p class="application"><strong><u>In Class:</u></strong> Keep a measuring stick nearby so that the students can measure the
				geometry of the system. (1) This can be used as an in-class problem where the
				students solve for the tension in the various segments of the rope, thereby
				realizing that when the loads are tied off, the tension varies in the rope. (2) It
				can also be demonstrated using a spring loaded scale at one end that as the rope
				shortens (taking the belly out of it), the tension goes up since the weights to
				be supported act only in the y-direction, and the y-component of the force at the
				ends must remain constant even as the angle of inclination goes down, causing a
				large increase in the x-component of the force.</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-a-pic(a).png" class="const-img"><br>
            
                        
            <p class="application"><strong><u>Additional Application</u></strong> Construct one model that looks similar to a problem
				being worked and construct another larger model that goes across the entire
				classroom. (3) In this case, instead of tying off both ends, one end is tied off and
				the other end is routed through a pulley and tied off to some weights. (4) Once
				loaded, show that if weight is added or subtracted from the anchor point or a
				load from the cable, the system will move up and down as it reestablishes
				equilibrium. (5) A weight can also be hung from a pulley along the rope, like a
				ski gondola, demonstrating that an x-direction stabilizing force is required at all
				points along the rope except when the gondola is at the very center.</p><br>
				
			<img src="${pageContext.request.contextPath}/_view/categories/statics/stat-a-pic(b).png" class="const-img"><br>
				
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

