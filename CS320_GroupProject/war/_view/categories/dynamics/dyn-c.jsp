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
        <a class="search-btn" href="${pageContext.request.contextPath}/search"><i class="fas fa-search"></i></a>
    </div>

<content>
    <div class="content">
        <div class="header-container" align="center">
            <p class="title">The Helicopter</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Dynamics</p>
            <p class="keywords"><strong>Keywords: </strong>General Planar Motion, Non-Rotational, Rigid, Rotational, Translational</p>
            <p class="author"><strong>Submitted By: </strong> Tom Messervey</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This training aid demonstrates the translational and rotational kinematics of a rigid body in a non-rotational frame. This demonstration should take 10-15 minutes.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/dynamics/dyn-c(b).png" class="const-img">
            <img src="${pageContext.request.contextPath}/_view/categories/dynamics/dyn-c(c).png" class="const-img">
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> Building upon the concept of Rotation About a Fixed Axis
			(RAFA), the helicopter provides an excellent example to step into general planar
			motion (GPM) by first demonstrating the hovering helicopter (RAFA) and then
			demonstrating the helicopter flying (GPM). Intuitively, this is comfortable and
			the development of vector equations becomes the tool to describe what the
			students already know.
            </p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/dynamics/dyn-c(a).png" class="const-img">
            
            
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
                    <td>Toy Helicopter</td>
                    <td>1</td>
                    <td>$5-25 depending on size</td>
                    <td>A bigger model is useful here to better see the discussed principles in action</td>
                  </tr>
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Acquire a toy helicopter.</p><br>
            
            
            <p class="application"><strong><u>In Class:</u></strong> Helicopter clips start the lesson and the helicopter training aid is utilized to motivate the need for the derivation of the equations. The example problem for the lesson is then solved. </p><br>
            
            <p class="application"><strong><u>Additional Application:</u></strong> Helicopter Trivia - American and British helicopter rotors
			rotate counter clockwise. Soviet and French rotors rotate clockwise.
			As a helicopter travels forward, the velocity of the rotor blades on each side of
			the aircraft becomes unequal. This produces an uneven amount of lift and
			would cause the aircraft to tilt to one side if left uncorrected. Modern
			helicopters address this dissymmetry of lift by allowing the blades to flap up on
			the advancing side and down on the retreating side and hunt forward on the
			advancing side and lag on the retreating side.
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
