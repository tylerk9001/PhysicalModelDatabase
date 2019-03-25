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
            <p class="title">Belt Friction</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Friction, Pulling, Resisting</p>
            <p class="author"><strong>Submitted By: </strong>John Richards</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> Investigate belt friction. This demonstration should take 3-5
				minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> These training aids provide a vehicle to discover the
				forces acting on a belt or rope when pulled over a fixed drum.
				The basic equation for belt friction:</p>
				
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-e-pic(a).png" class="const-img"><br>
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-e-pic(b).png" class="const-img"><br>
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-e-pic(c).png" class="const-img"><br>

			<p class="principle">where μ = coefficient of friction (either static or kinetic) and β = angle of surface
				contact between the belt and the drum (measured in radians).</p>

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
                    <td>Object to suspend</td>
                    <td>1</td>
                    <td>$10; 30 minutes</td>
                    <td>The example uses a hatchet for dramatic effect, but any object that you can tie a rope to easily will work.</td>
                  </tr>
                  <tr>
                    <td>Rope</td>
                    <td>1</td>
                    <td>$5-$10</td>
                    <td>Thin rope long enough to wrap around a pole enough times to hold the object stationary.</td>
                  </tr>
                  <tr>
                    <td>Fixed drum</td>
                    <td>1</td>
                    <td>$10; 20 minutes</td>
                    <td>Some type of drum to wrap the rope around.</td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Prepare some type of fixed horizontal drum. The example uses a
				horizontal pole clamped to two vertical poles. Tie the rope to the object and
				wrap the rope around the drum tightly enough times to hold it stationary
				without tying it off. This shows that static coefficient of friction for that amount
				of angle of surface contact can hold the object pulling on the rope with just the
				resistance provided by the self-weight of the loose end of the rope.</p><br>
                                    
            <p class="application"><strong><u>In Class:</u></strong> Discuss why and how the supported object is suspended and not
				moving when the rope is not tied off at either end.</p><br>            
                        
            <p class="application"><strong><u>Additional Application</u></strong> Start taking off wraps so that the object slowly starts to
				lower. Now the demo is using the kinetic coefficient of friction.</p><br>
								
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

