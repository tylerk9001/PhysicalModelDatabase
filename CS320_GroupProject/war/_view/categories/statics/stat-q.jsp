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
            <p class="title">Wooden Truss 3D</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Stability, Strength, Truss</p>
            <p class="author"><strong>Submitted By: </strong>Ronald Welch</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This 3D model of a bridge is a model that is very close to a
				real representation of a bridge. It has a number of realistic features that cannot
				be shown with K’NEX or other simple structures. This demonstration should
				take 15-20 minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> Bridges are more than just trusses put together. There are
				other important factors to a bridge that keep it stable and functional. This bridge
				uses gusset plates to form joints, a roadway, lateral supports to keep the trusses
				vertical, supports on both ends, and even curbs. It is also strong enough to hold
				real loads on its roadway.</p>
				

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
                    <td>Wood</td>
                    <td>Lots!</td>
                    <td>$45-60; 2-3 hours</td>
                    <td>Measurements for the bridge have been
						included in pictures. It is about a yard long at the
						bottom, two feet long at the top, and seven
						inches wide. The members are all about ¾" thick
						and ½" wide. The plates are each ⅛" thick. The
						two sections of roadway are 6" x 6" x ⅛” with ⅛”
						curbs on either side.  </td>
                  </tr>
                  <tr>
                    <td>Paint</td>
                    <td>Any</td>
                    <td>$15</td>
                    <td>We used three colors: red, black and grey. It
						adds a nice touch to the presentation.   </td>
                  </tr>
                  <tr>
                    <td>Nuts</td>
                    <td>Lots!</td>
                    <td>$10</td>
                    <td>Nails are used to hold the bridge together </td>
                  </tr>
                  <tr>
                    <td>Car/Truck</td>
                    <td>1</td>
                    <td>$25</td>
                    <td>A battery-operated car or truck can drive across
						this bridge safely. </td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
            
            <p class-"application"><strong><u>Before Class:</u></strong> Construct the bridge out of the wood and test it with an acceptable
				load to make sure it doesn’t overload and break during class. There is no real
				requirement to support a load, but it allows additional realism. </p><br>
                                 
            <p class="application"><strong><u>In Class:</u></strong> Bring out the bridge and ask the class what distinguishing features
				represent a real bridge. Talk about each characteristic with the class.
				Gusset Plates: This bridge doesn’t just have pins to form the joints, it has plates
				connecting the members that act like pins. The connections for this bridge
				represent gusset plates connected to members by bolts or rivets. A discussion as
				to why it still can represent a pin connection should ensue. The forces in the
				members coming into a joint are intersecting at a single point – a concurrent
				force system. Therefore, there is no tendency to cause rotation – so can be
				represented as a pin connection. Demonstrate by putting a load on the roadway.
				The load is transferred from the roadway to the beams running parallel to the
				bridge span that transfer the load to a girder running perpendicular to the span
				that transfers the load to the truss joints where the members are connected by a
				gusset plate. Therefore, all the members are truss members and the load is only
				applied at the joints of the truss. </p><br>
                        
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
