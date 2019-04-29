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
            <p class="title">Armor Attack</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Dynamics</p>
            <p class="keywords"><strong>Keywords: </strong>Absolute Velocity, General Planar Motion</p>
            <p class="author"><strong>Submitted By: </strong> Tom Messervey</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This training aid demonstrates a practical application of the kinematic relationship for a translating and rotating frame of reference. This demonstration should take 10-15 minutes.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/dynamics/dyn-b(a).png" class="const-img">
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> This lesson is an application of the previously developed vector equations for velocity and acceleration in a translating and rotating frame of reference.

            𝑣𝑏 = 𝑣𝑎 + 𝑣𝑏/𝑎 <br/>
            𝑣𝑏 = 𝑣𝑎 + Ω × 𝑟𝑏/𝑎 + (𝑣𝑣/𝑎)xyz <br/>
            𝑎𝑏 = 𝑎𝑎 + 𝑎𝑏/𝑎 <br/>
            𝑎𝑏 = 𝑎𝑎 + Ω × 𝑟𝑏/𝑎 + Ω × (Ω × 𝑟𝑏/𝑎) + 2Ω × (𝑣𝑏/𝑎)xyz + (𝑎𝑏/𝑎)xyz<br/>
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
                    <td>Assorted Military Vehicles and Toy Soldiers</td>
                    <td>1</td>
                    <td>$20-40</td>
                    <td>The essential pieces are tanks, cannons, and a helicopter.</td>
                  </tr>
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Layout the "attack".</p><br>
            
            
            <p class="application"><strong><u>In Class:</u></strong> This training aid is meant to fill the classroom to develop the spatial aspect of the problem. The cannons(artillery) are positioned at one corner, the helicopter is hung from the ceiling in the middle, and the tanks are on a moving cart on the other side of the classroom. Of note, the cannons pictured are catapults we utilize during the kinetics block of the course. The situation is developed that the scout helicopter (translating and rotating) uses a laser designator and "sees" the approaching tanks moving at a relative velocity at an instant in time. The question to be answered is to determine the absolute velocity of the approaching tank column (relative to the stationary artillery unit) and then to determine how many minutes are left before the advancing tanks are within range of the artillery.</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/dynamics/dyn-b(b).png" class="const-img">
            <img src="${pageContext.request.contextPath}/_view/categories/dynamics/dyn-b(c).png" class="const-img">
            <img src="${pageContext.request.contextPath}/_view/categories/dynamics/dyn-b(d).png" class="const-img">
            <img src="${pageContext.request.contextPath}/_view/categories/dynamics/dyn-b(e).png" class="const-img">
            
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
