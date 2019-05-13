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
            <p class="title">Paper Stress Concentrations</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Mechanics</p>
            <p class="keywords"><strong>Keywords: </strong>Discontinuity, Point Load, Stress Concentrations</p>
            <p class="author"><strong>Submitted By: </strong>Ronald Welch</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong>This is a simple demonstration of the basic principles and
behavior underlying stress concentrations. Stresses at points of load application
can be much larger than the average stress in a member. The same is true when
a member contains a discontinuity. Paper members with the same mid-span
width are used to demonstrate the stress concentrations that can occur at load
points as well as at discontinuities: holes and fillets. This demonstration should
take 8-10 minutes.</p>
            
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong>The stress concentration factor (K) is defined for a
particular cross-section as the maximum stress over the average stress. The maximum stress typically
occurs near a discontinuity. The experimental results obtained for K are
independent of the size of the member and the material used; they depend only
upon the ratios of the geometric parameters involved (i.e., diameter of the
circle, radius of fillet, or remaining width of cross-section).
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
                    <td>Sheet of paper members</td>
                    <td>2 sheets per student</td>
                    <td>3 minutes per sheet</td>
                    <td>Cut out the shapes. Two sheets/shapes per student. There are four shapes. Shape 3 has three(multiple) different configurations. Get soem help if you have a big class.</td>
                    </tr>
                    <tr>
                    <td>Scissors</td>
                    <td>1</td>
                    <td>$8</td>
                    <td>It important not to create stress concentrations when cutting out the members (i.e., do not create notches when cutting out the shapes), especially the third member with the square corners.  </td>
                  </tr>
                  <tr>
                    <td>Single hole punch</td>
                    <td>1</td>
                    <td>$5</td>
                    <td>Used to put the hole in Member 2.</td>
                  </tr>
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong>: : Cut out the members so that each student has at least one of each
sof the four paper member configurations. Note that the cross section at the
middle of each member is the same (in this case 1 inch). Member 3 has three
configurations – no fillet, a circular fillet and a larger/possible non-circular fillet.
You decide if they have one of each – the reason for two sheets of members -
per student. Also many students will place impact loads on the members, so
they will need replacement members when this occurs.</p><br>

            
            <p class="application"><strong><u>In Class:</u></strong> Have the students make a prediction as to which member will break
with the least to most load. After the presentation of the theory, calculate the
max stress each member will experience based on an assumed applied load. The
students then reorder their predictions and statically load their specimens 1 thru
4 (specimen 3a (with no fillet, just a notch cut), specimen 3b with one of the two
fillets) by only using their thumb and index finger. We could use a clamp and a
spring load for accuracy, but that is not really necessary. After hand loading the
first member, some students apply a pinching action at their load points that
causes a stress concentration and pre-mature failure at the finger locations.
Others will apply the load as an impact load. Each loading situation provides key
discussion points for the effect of the load on the experiment (and the reason for
having more than one member type per student). Emphasize the need to not
create a stress concentration at the finger point. It is important that each
student has a Member 3 that has no fillet, just the notched out section.
             </p>
			<p class = "application"><strong><u>Observations:</u></strong>: Some students will not be able to break Members 1 and 4 at the
center without an impact load (moving fingers towards each other, then applying
a tension load rapidly) or at the load point with a pinching effect. The students
should observe that a gradual change in shape will allow for a smaller stress
concentration factor - less of a stress concentration effect (i.e., the stress
concentration factor is reduced as the radius of curvature of the fillet is
increased). They should also see that no fillet is a very dangerous situation and
creates a very large stress concentration at the corner.
			
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
