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
            <p class="title">When Worlds Collide</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Dynamics</p>
            <p class="keywords"><strong>Keywords: </strong>Collision, Deformation, Rebound Velocity, Restitution</p>
            <p class="author"><strong>Submitted By: </strong>Charles Packard</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This is a simple demonstration of the phases of a collision for central impact. Two squeeze balls are used to show the phases. This demonstration should take 3-5 minutes.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/dynamics/dyn-a-pic(a).png" class="const-img">
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong>  Two objects in a head-on or rear-end collision (“centralimpact”) will deform as they collide. At the time of maximum deformation, they will have reached the same velocity. The period of deformation will typically be followed by a period of restitution, at the end of which the two objects will either have regained their original shapes or will have retained some degree of permanent deformation.</p>
            
            
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
                    <td>Squeeze or Stress Balls</td>
                    <td>2</td>
                    <td>$10 for a pair</td>
                    <td>Small, hand sized balls which yeild when squeezed, yet don't permanently deform can be obtained from sport stores or pharmacies for low cost.</td>
                  </tr>
                  
                </table><br>
            </div>
            
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Practice the demonstration.</p><br>

            
            <p class="application"><strong><u>In Class:</u></strong> Discuss the phases of a collision and show these phases with the squeeze balls. </p><br>
            
            
            <p class="application"><strong><u>Observations:</u></strong> The students should observe that the balls start to deform upon contact, that there is a finite period of time during which both balls deform, and that there is also a finite period during which the balls return to their original respective shapes (the deformation and restitution periods are not necessarily ofthe same duration). Students should also recognize that a force exists between the balls once they start to deform. This force can be demonstrated by rapidly releasing one ball while the other one is held stationary—the released ball rolls rapidly away from the one held stationary. Additional Application: Two clay balls of roughly the same diameter as the squeeze balls could also be used to emphasize that the period of restitution need not equal the period of deformation. Follow the same procedure as before, pressing the balls slowly together, then releasing one while holding the other. The period of restitution is clearly smaller than the period of deformation. Next, drop a clay ball on the floor along with a ping-pong ball, to show what happens in terms of rebound velocity. Ask what happened to the earth during the collision, and why the rebound speed never equals that of the speed just before impact. </p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/dynamics/dyn-a-pic(b).png" class="const-img">

            <img src="${pageContext.request.contextPath}/_view/categories/dynamics/dyn-a-pic(c).png" class="const-img">

            
            <p class="application"><strong><u>Additional Application:</u></strong>  Two clay balls of roughly the same diameter as the squeeze balls could also be used to emphasize that the period of restitution need not equal the period of deformation. Follow the same procedure as before, pressing the balls slowly together, then releasing one while holding the other. The period of restitution is clearly smaller than the period of deformation. Next, drop a clay ball on the floor along with a ping-pong ball, to show what happens in terms of rebound velocity. Ask what happened to the earth during the collision, and why the rebound speed never equals that of the speed just before impact. </p><br>
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
