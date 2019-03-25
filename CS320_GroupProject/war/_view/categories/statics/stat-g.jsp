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
            <p class="title">Pulleys: The Equilibriator Challenge!</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Mechanical Advantage, Pulley</p>
            <p class="author"><strong>Submitted By: </strong>Tom Messervey and Matt Morris</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This is a simple demonstration of the mechanical advantage
				associated with pulleys and a solution method for pulley problems. By building a
				pulley system in the classroom, students can gain a physical appreciation for the
				problem at hand. This demonstration should take 15-20 minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> This training aid demonstrates mechanical advantage
				obtained through pulleys and the fact that the tension throughout a continuous
				cable in a pulley system is constant.</p>
				
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-g-pic(a).png" class="const-img"><br>
			
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
                    <td>Pulley</td>
                    <td>2</td>
                    <td>$10 each; 20 minutes</td>
                    <td>Any size pulley can work. They can also be suspended from the ceiling.</td>
                  </tr>
                  <tr>
                    <td>Cable</td>
                    <td>1</td>
                    <td>$5</td>
                    <td>Parachord works great.</td>
                  </tr>
                  <tr>
                    <td>Weight</td>
                    <td>3</td>
                    <td>$8-$10 each</td>
                    <td>Three 2 pound weights are pictured.</td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Set up the pulley system as shown in the photo, with one pulley
				hung from overhead and the other “free” hanging in the system. Make sure the
				two weights are very similar, though they do not need to be exactly the same.
				Support both weights or you’ll give away the conclusion.</p><br>
                                    
            <p class="application"><strong><u>In Class:</u></strong> Class starts with the “Equilibriator Challenge.” Have the students
				observe the system of pulleys and vote on which 2 lb weight will plummet to the
				desk when the erasers are removed. After some buildup, the erasers are quickly
				swept from under the pulley system and the weight on the right plummets.</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-g-pic(b).png" class="const-img"><br>
            
            <p class="application"> We then develop how we could analyze such a system by investigating the
				problem of Lazy John, who wants to raise himself to inspect the roof (concerned
				with student safety) but doesn’t have the strength to pull himself up without
				assistance. The students must compute how hard John has to pull to begin to
				raise himself using the pulley system. After solving the problem using
				appropriate diagrams (shown in the photos of blackboard solutions), students
				realize that the ratio between the forces to obtain equilibrium is 2-1. We then
				return to the physical model and validate that 4 lbs on the left and 2 lbs on the
				right remain static and are thus at equilibrium.</p><br>
				
			<img src="${pageContext.request.contextPath}/_view/categories/statics/stat-g-pic(c).png" class="const-img"><br>
			<img src="${pageContext.request.contextPath}/_view/categories/statics/stat-g-pic(d).png" class="const-img"><br>
			<img src="${pageContext.request.contextPath}/_view/categories/statics/stat-g-pic(e).png" class="const-img"><br>
			<img src="${pageContext.request.contextPath}/_view/categories/statics/stat-g-pic(f).png" class="const-img"><br>
                        
            <p class="application"><strong><u>Additional Application</u></strong> As students enter class, a clip from Monty Python’s Holy
				Grail offers a great intro – the scene where it is proved that a certain woman is a
				witch because, using an equilibrium device, it is found that she weighs the same
				as a duck. This lesson is also one in which we begin discussing cable structures
				subjected to concentrated loads. Hence, we also utilize a pulley to balance one
				end of a cable system suspended across the classroom. By adding or removing
				weight from the counterweight, we cause the entire cable system to change
				shape to achieve a new state of equilibrium. A cable with three point loads is
				pictured first, and the counterweight is pictured second. The other end (without
				the counterweight) is just tied off to the ceiling.</p><br>
				
			<img src="${pageContext.request.contextPath}/_view/categories/statics/stat-g-pic(g).png" class="const-img"><br>
			<img src="${pageContext.request.contextPath}/_view/categories/statics/stat-g-pic(h).png" class="const-img"><br>
				
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