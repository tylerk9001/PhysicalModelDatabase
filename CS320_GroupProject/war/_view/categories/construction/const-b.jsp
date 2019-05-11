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
        <a class="search-btn" href="${pageContext.request.contextPath}/search"><i class="fas fa-search"></i></a>
    </div>
    
<content>
    <div class="content">
        <div class="header-container" align="center">
            <p class="title">Excavation and Earthwork Pressure</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Construction</p>
            <p class="keywords"><strong>Keywords: </strong>Equilibrium, Pressure, Shoring, Soil</p>
            <p class="author"><strong>Submitted By: </strong> Dr. Matthew Hallowell</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This in-class activity provides students the opportunity to participate in an interactive demonstration to visualize the concepts of soil pressure and potential effects on construction excavation support systems. In this demo, students are able to interact directly with small-scale models to exhibit the concepts of at rest (equilibrium) soil conditions, active soil pressure, and passive soil pressure. This demonstration should take 10 minutes.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/construction/mod-desc(b).JPG" class="const-img">
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> The overall objectives of this demonstration focus on the concepts of soil pressure and potential interactions with construction excavation support systems. Multiple soil pressure conditions can be seen throughout the different stages of the demonstration, including at rest condition (equilibrium), active soil pressure, and passive soil pressure. Through these pressure conditions, students are able to witness the concepts of pressure first hand, while also providing visualizations of the plane of soil failure and effects on earth support systems. The concept of soil pressure is essential within construction engineering; as a proper understanding of soil behavior is necessary for the design and construction of excavation support systems on a large scale.<br><br>  
                
            At its original state, the model exhibits the ‘at rest’ soil pressure condition, meaning the horizontal and vertical pressures of the earth are at equilibrium. The action of excavation removes internal stress along one plane, resulting in an imbalance of pressure within the system. This imbalance of stress causes an increased application of pressure on the excavation support system, which in turn counteracts the pressures and restricts the soil from collapsing towards the direction of least resistance.<br><br>  
            
            The excavation support system is able to resist the increases in pressure until slight failure or movement of the wall occurs. This condition, known as active pressure, occurs when the increases in soil pressure reaches a point of failure within the support system. In instances of active soil pressure, the natural pressure of the soil is much less than at rest conditions, as a portion of the horizontal stress is dissipated through the movement of soil thus moving it closer to the natural failure plane.<br><br>
            
            Passive soil pressure occurs when the pressure of soil reaches a point of failure of the support system, which in turn causes shear failure in the soil. Much greater amounts of passive pressure are required to reach failure when compared to active pressure, as the internal stresses (i.e. weight of soil above) must be overcome before movement can occur.<br><br> 
                
            In this circumstance, the soil is passively pushed until slippage occurs along the natural plane.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/construction/eng-principle(b).JPG" class="const-img"><br>
            
            <br><p class="title">Required Items</p><br><br>
            
            <div style="overflow-x: auto;">
                <table>
                  <tr>
                    <th>Item</th>
                    <th>Qty</th>
                    <th>Cost and Build Time</th>
                    <th>Description/Details</th>
                  </tr>
                  <tr>
                    <td>Plastic Containers (size of a shoebox)</td>
                    <td>4 Students per Group</td>
                    <td>$30 each for the example dimensions</td>
                    <td>Containers serve as the boundary for the contents of the demonstration</td>
                  </tr>
                  <tr>
                    <td>Sand</td>
                    <td>1 bag</td>
                    <td>$5</td>
                    <td>Sand is used to represent soil/earth</td>
                  </tr>
                  <tr>
                    <td>Aluminum/Metal</td>
                    <td>1 sheet per box</td>
                    <td>$2-15; 30 minutes</td>
                    <td>The metal represents the in-ground excavation support system. Cut the material to match the interior dimensions of the box.</td>
                  </tr>
                </table><br>
            </div>
            
            <img src="${pageContext.request.contextPath}/_view/categories/construction/req-items(b).JPG" class="const-img"><br><br>
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Acquire demonstration materials. Assemble demo kits by filling plastic containers approximately half full with sand. Insert a piece of aluminum foil in the middle of the demo, ensuring the height of the support system is greater than the height of the sand material. Fill container with remainder of desired sand amount on opposite side of aluminum wall.</p><br>
            
            <p class="application"><strong><u>In Class:</u></strong> Start the demonstration by dividing participants into groups of four or less. After the groups have been divided, instruct students to begin transferring the sand from one side of the excavation support system to the opposite site. This step represents the actual excavation of earth in construction. Repeat the process of excavating materials until the effects of pressure can be seen on the support wall i.e. when the excavation support system, which is sheet pile in this case, fails. The movement of soil will eventually lead to conditions of active pressure, passive pressure, and shear failure. The model will allow students to feel the pressures on the aluminum sheet and understand how forces act on a sheet pile.</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/construction/app-last(b).JPG" class="const-img"><br>
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
