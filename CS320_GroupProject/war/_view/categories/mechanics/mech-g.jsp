<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
            <p class="title">Shear Demonstrator</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Mechanics</p>
            <p class="keywords"><strong>Keywords: </strong>Rectangular Members, Shear</p>
            <p class="author"><strong>Submitted By: </strong>Ronald Welch</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> These demonstrations show the effects of shear within rectangular members. This demonstration should take 10-15 minutes.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/mechanics/mech-d(a).png" class="const-img">                        
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> When a load perpendicular to the longitudinal axis is
applied to a beam, the force is transferred through the beam through shear.
With the help of these two demonstrations, the students will better understand
how a load applied perpendicular to the longitudinal axis is transferred to the
reactions of the beam. The goal is to demonstrate how the force is transferred
through horizontal shear and to establish a physical representation to the
development of the theory on shear in rectangular beams. Additionally, these
physical models highlight how members fail if caused by shear.</p>
            
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
                    <td>Plastic Rectangles</td>
                    <td>12</td>
                    <td>$40; 45 minutes</td>
                    <td>These are clear pieces of plastic 12" long x 2"
wide x ⅛" thick. Eight of them are stacked on
each other and connected at one end by a
screw driven through them into a piece of
wood. The other four are used for the other
prop. These have three holes in them: two
oblong holes about 3" from each end, 1" long
and ½" wide, and a third hole in the middle of
the member, ½" diameter. </td>
                    </tr>
                     <tr>
                    <td>Red Marker</td>
                    <td>1</td>
                    <td>$1</td>
                    <td>This is used to draw a square on the member
made of the 8 plastic rectangles. The rectangle is
right in the middle of the member and drawn on
the edge of the members.
                    </td>
                    </tr>
                     <tr>
                    <td>Nut and Bolt</td>
                    <td>1</td>
                    <td>$2</td>
                    <td>5.5" bolt with a matching nut to attach the two pieces of wood to the plastic.</td>
                    </tr>
                     <tr>
                    <td>Base</td>
                    <td>1</td>
                    <td>$20; 25 minutes</td>
                    <td>The base is made of two pieces of wood—the
top piece 3¾” x 2½” x 2½” and the bottom piece
12” x 6” x ¾”. The two are connected with a
screw and a nut so that the top piece is on one
edge of the bottom piece to establish the
condition that the connection of the plastic
pieces results in a cantilever beam.
                    </td>
                    </tr>
                     <tr>
                    <td>Yardstick</td>
                    <td>1</td>
                    <td>$4</td>
                    <td>The ruler is used as a sort of introduction to shear. Applying a load to it brings around the question of how a load applied to the middle of a beam gets to the end of the beam.</td>
                    </tr>
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> : Prepare the two props and test them to be sure that you can create the proper effect.</p><br>

            
            <p class="application"><strong><u>In Class:</u></strong> Take the ruler and have two people hold each end. Apply a small load to
the middle to make the ruler bend. Ask the two students if they felt a force
on the ends of the ruler. When an affirmative answer is given, challenge the class
by asking how they think the vertical load got from the middle of the beam to
the ends. After a bit of discussion, bring out the first demonstration. Show the students the demonstrator with the plastic strips attached to the base
(cantilever). Ask what they think will happen to the beam and the square in the
middle when you apply a force to the free side of the cantilevered beam. Press
down on the beam and show how the square deforms (as the pieces of plastic
slide). Relate this to the shape of the square on the side of a cylindrical rod.
Ask the class: what is happening to the fibers inside of a solid beam (one not
made up of eight strips of plastic strips). Explain how the forces are working in
the beam. There is a force applied downwards on the free side of the beam, and
therefore a force acting upwards on the other side to put the beam in
equilibrium. Ask then how these forces would tend to make the square move if
they were the only forces in the beam. Show how the square would rotate with
these forces. What forces keep this rotation from occurring? There must be
horizontal forces equal to the vertical forces that keep the square from rotating.
These forces cause the square to deform into a rhombus shape.
Why is shear so important? Shear is the least understood phenomenon. If
overlooked, shear forces can cause failure, and they often do. The second
demonstration shows why. Hold the four lengths of plastic attached at both ends
and once again ask the class what they think will happen if you apply a moment
to bend the member.
Bend the member and point out the sliding of the sections of the member, how
they don’t line up at the ends any more and how they separate in the middle
when the force is slowly relieved. This is how member will fail at the end of a
member (ends of a simply supported beam) when they are acted upon by the
resulting internal shear forces caused by a load applied perpendicular to the
longitudinal axis. This is also how a vertical load is transferred horizontally
along the length of the beam to the usual vertical reaction at the end points,
especially in a simply supported beam.
            </p>
			<p class = "application"><strong><u>Additional Application</u></strong>: : Ask the class if they can think of an example of a
material that acts like these sectioned members. Ask if anyone has seen an old
wooden bridge that has begun to split at the ends and talk about how wood
reacts to shear forces. Because of a wood’s grain, it is very strong if forces are
applied perpendicular to the grain. But when forces, like shear, are applied along
(horizontally) the grain, the wood begins to fail because it splits much more
easily along the grain than against the grain.
			</p>
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
