<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
                
                <div class="access-btns">
                  <form action="${pageContext.request.contextPath}/welcome">
                      <c:choose>
                          <c:when test="${sessionScope.login == true}">
                              <a href="${pageContext.request.contextPath}/welcome" name="dashboard"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
                          </c:when>
                          <c:when test="${sessionScope.login == null}">
                             <a href="${pageContext.request.contextPath}/login" class="button">Login</a>
                          <a href="${pageContext.request.contextPath}/signup" class="button">Sign Up</a>
                          </c:when>
                      </c:choose>
                  </form>
               </div>
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
            <p class="title">Crane Rigging Angles</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Construction</p>
            <p class="keywords"><strong>Keywords: </strong>Angle, Crane Pick, Force, Lift, Load, Vector</p>
            <p class="author"><strong>Submitted By: </strong> David Flaherty and Matt Morris</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This demonstration depicts the importance of rigging angles during crane lift operations on a construction site. Reducing rigging angles results in a significant amplification of forces in the rigging, potentially <strong>leading to failure</strong>. By varying the connection points and sling length, students will be able to calculate the predicted forces and analyze the best combination of connection points and sling lengths to successfully complete the critical lift. The demonstration should take 15-20 minutes.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/construction/mod-desc(a).JPG" class="const-img">
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> A slingâs working load limit (WLL) is based on a crane lift performed at a straight (90Â°) angle. The forces in rigging (sling, chain, wire rope, webbing, shackles, etc.) increase substantially as the angle formed by the sling leg and the horizontal becomes smaller. The following chart shows the increased force applied to the rigging when the rigging angle is reduced. The key engineering principle with this demonstration is related to an understanding of statics. Students must comprehend that decreasing the angle creates a horizontal force component that in turn increases the tension in the rigging. This can be derived using the figure below.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/construction/eng-principle(a).JPG" class="const-img">
            
            <p class="principle">While increasing the connection angle of a two-point lift may be required to
            increase the stability of the lift, careful consideration must be taken in regards to
            the sling capacity and weight of the lift.</p>
            
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
                    <td>3/16 in. Chain</td>
                    <td>2x2 ft. sections</td>
                    <td>$8 at $2 per foot</td>
                    <td>These represent the sling for the lift.</td>
                  </tr>
                  <tr>
                    <td>Twist Link Chain</td>
                    <td>1 foot</td>
                    <td>Mexico</td>
                    <td>This is smaller than the straight chain and is used to connect the weight plate to the spring link on the lower screw eye.</td>
                  </tr>
                  <tr>
                    <td>2x6 x 3 ft</td>
                    <td>1</td>
                    <td>Austria</td>
                    <td>Most pieces come in 8 foot sections. Once cut to size, this is the critical lift.</td>
                  </tr>
                  <tr>
                    <td>3/4 in. x 3 in. Screw Eyes</td>
                    <td>7</td>
                    <td>$5 at $1.25 per 2 pack</td>
                    <td>These are used for the rigging connection points on top and the load connection point on the bottom. 130-pound capacity.</td>
                  </tr>
                  <tr>
                    <td>3/16 in. Quick Link</td>
                    <td>1</td>
                    <td>$2.25</td>
                    <td>This locks and holds the two spring scales along each chain. It also is used for the top spring scale to analyze the total weight of the lift. 450-pound capacity.</td>
                  </tr>
                  <tr>
                    <td>3 in. Spring Link</td>
                    <td>3</td>
                    <td>$1 each</td>
                    <td>These are used for quick connections of the chains to the screw eyes and the weight to the load screw eye. 150-pound capacity.</td>
                  </tr>
                   <tr>
                    <td>20-lb Spring Scale</td>
                    <td>3</td>
                    <td>$11.50 each</td>
                    <td>These scales measure the weight of the lift and along each chain.</td>
                  </tr>
                  <tr>
                    <td>10-lb Weight Plate</td>
                    <td>1</td>
                    <td>$11</td>
                    <td>This increases the weight of the critical lift.</td>
                  </tr>
                </table><br>
            </div>
            
            <img src="${pageContext.request.contextPath}/_view/categories/construction/req-items(a).JPG" class="const-img"><br><br>
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Build and verify your model. The imperfect connections at the screw eyes and the variation in the spring scale as a load is applied make predicting the exact angle difficult. The placement of the screw eyes and the length of the chain are intended to replicate scenarios with the connections at 30Â°, 45Â°, and 60Â°.</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/construction/before-class(a).JPG" class="const-img"><br>
            
            <p class="application">After cutting the 2x6 to 3ft. length, install the screw eyes along the centerline at the distances shown above. To ensure the spring scale hook remains centered during the lift (and creates an equal force in both scales), use wire or duct tape to prevent its movement. Display the 2x6 at the front of the class, but do not have anything connected to it. Let the students build their answer as they work to solve the problem.</p>
            
            <p class="application"><strong><u>In Class:</u></strong> Build and verify your model. The imperfect connections at the screw eyes and the variation in the spring scale as a load is applied make predicting the exact angle difficult. The placement of the screw eyes and the length of the chain are intended to replicate scenarios with the connections at 30Â°, 45Â°, and 60Â°.</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/construction/in-class(a).JPG" class="const-img"><br>
            
            <p class="application"><strong><u>Theory:</u></strong> Given the fixed connection options, have the students calculate the tensile forces in the sling using the farthest connection (12 inches from center). Ask them what angle they would recommend if they didn't have time for calculations, and why? By adjusting the basic equation to ð¹ ð ðððð = ð¹ ðððð / ð ðð(ð), the students can calculate the tension in the sling at any angle. If the students are using their computers, remind them of the need to convert the answer to degrees from radians if their output is not making sense to them.</p>
            
            <p class="application"><strong><u>Example:</u></strong> The total weight of the demonstration should be 15-16 pounds. Explain to the students that they could use trigonometry to calculate the required sling lengths given the fixed connection points and desired connection angles. However, the variation in this model makes it difficult to perfectly replicate such detailed specifics. As the spring scales extend to register the weight, they alter the length of the cable and therefore the angle at the connection and the resulting tension within the cable. Calculations that include spring deflection yield the following cable length approximations to get the desired connection angles: 30Â° (no chain, but chain must hang from connection for consistent weight) , 45Â° (3 links) , and 60Â° (9 links). These numbers only apply when analyzing the connection that is 12 inches from center. Ask for four volunteers (1 on each side of the lift, 1 to make the connections and document the results, and 1 to hold the top scale when the lift is tested). Test the model at the approximate angle the students chose as the way they would conduct the lift. Then, conduct the connections described above for 30Â°, 45Â°, and 60Â°. Lastly, ask the students to create the worst-case scenario for the rigging and test that example as well. By keeping the lift symmetrical, the weight of the lift can be divided by two and analysis conducted on half of the rigging that creates a right triangle. Given Fsling and Fload of each documented test, have the students calculate the actual angles by adjusting the basic equation to Î¸ = sinâ1 (ð¹ ðððð / F ð ðððð) / ð / 180. Dividing by ð/180 converts the answer from radians to degrees.</p><br>
            
            
            <p class="application">The following chart compares theoretical angles based on perfect trigonometry to the test angles calculated from the resultant forces under varying load connections.</p>
            
            <div style="overflow-x: auto;">
                <table>
                  <tr>
                    <th>L sling</th>
                    <th>Expected Angle (Î¸)</th>
                    <th>F sling</th>
                    <th>F load</th>
                    <th>Test Angle (Î¸)</th>
                  </tr>
                  <tr>
                    <td>No chains</td>
                    <td>30.0 deg</td>
                    <td>15.0</td>
                    <td>7.5</td>
                    <td>30.0 deg.</td>
                  </tr>
                  <tr>
                    <td>3 links</td>
                    <td>45.0 deg</td>
                    <td>11.8</td>
                    <td>7.5</td>
                    <td>39.5 deg.</td>
                  </tr>
                  <tr>
                    <td>9 links</td>
                    <td>60.0 deg</td>
                    <td>9.0</td>
                    <td>7.5</td>
                    <td>56.4 deg.
                      </td>
                  </tr>
                </table><br>
            </div>
            
            <p class="application">As shown above, the angles are not always perfect matches, but are close enough to effectively highlight the amplification of forces in the sling based on rigging angles. Notice the applied force on the sling exceeds its 11lb capacity at 45 degrees!<br><br>
            
            Finally, ask the students if they have ever heard of the American Death Triangle. If a student has, have them explain its meaning to the class. This refers to a common source of fatalities in rock climbing and the principles are quite similar to equipment rigging.</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/construction/app-last(a).JPG" class="const-img"><br>
            
            <p class="application"><strong><u>Additional Application</u></strong> This makes for a good discussion on Factors of Safety. Ask the students about their tolerance for safety and how close to the slingâs capacity would they execute the lift. Did they inspect the slings? The slingâs rating is accurate when it leaves the manufacturer, but how have they been maintained? Are they rusty, worn, or frayed?<br><br>
                
            It is entirely possible that a foreman or superintendent does not recognize the implications of different rigging angles. Focus on emphasizing the importance of being able to say âNoâ to unexpected job site suggestions as a young engineer. Safety should drive the schedule.<br><br>
            
            This gives an opportunity to discuss other rigging arrangements such as the use of a spreader bar.<br><br>

            Talk about real world examples where critical lifts did not go as planned and discuss the serious implications about the failures. This is a great time to include a PowerPoint slideshow with pictures of failed crane lifts.</p><br>
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
