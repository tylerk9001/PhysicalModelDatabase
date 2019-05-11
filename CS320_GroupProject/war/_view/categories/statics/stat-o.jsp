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
            <p class="title">Wacky Fun Noodle</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Axial, Compression, Tension</p>
            <p class="author"><strong>Submitted By: </strong>Ronald Welch</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This is a simple demonstration to show how tension and
				compression affect members of trusses. A wacky fun noodle (tube floatation
				device) will be used to demonstrate the effects of tension and compression on
				axial members. Students pull or push each end to display the desired behavior.
				This demonstration should take 5-10 minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> In Mechanics of Materials, the concept and theory of
				buckling can be demonstrated using the wacky fun noodle. In statics, the wacky fun noodle can quickly demonstrate that a structural
				member made of the same material can behave differently and have different
				strengths during tension and compression (trusses). The demonstration can link
				the current content to content to be presented in Mechanics of Materials
				(linking courses).</p>
				

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
                    <td>Wacky Fun Noodles</td>
                    <td>1</td>
                    <td>$3-5</td>
                    <td>These are foam floatation devices that are
						many different sizes. The one used here is
						about 57 inches long (shorter members of 24
						inches also work).  </td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
            
            <p class-"application"><strong><u>Before Class:</u></strong> Buy a Wacky Fun Noodle. </p><br>
                                 
            <p class="application"><strong><u>In Class:</u></strong> Ask two students of the class to each grab an end of the fun noodle.
				Have them pull on it first to demonstrate tension. Have them estimate the load
				they are able to put into the effort (qualitatively). Then have them push on
				either end, and show that it buckles and bends outward. Have them estimate
				how much load is required to buckle the wacky fun noodle. Through active
				discussion, pull out of the students that materials used for truss members
				generally can support much larger tension loads in comparison with compression
				loads. Ask the question, since our truss members are 2 force members (tension
				or compression), is it important to know whether the load the member will
				support is a tension or compression force? Of course it is since compression
				forces can cause buckling which could lead to catastrophic failure of the member
				and possibly the entire truss. Ask the class what would happen if the length of the noodle where the force is
				being applied is decreased. Demonstrate, by asking the students to sit closer
				together as they apply force to the noodle (length decreased), that the effects of
				tension do not change but the compressive force needed to make it buckle is
				much greater. Demonstrate compressive forces acting on the noodle by standing the noodle
				vertically on a desk. Ask one student to sit in a chair and hold the bottom of the
				wacky fun noodle and another to stand and push vertically on the top of the
				noodle so that it buckles. It should buckle in the shape of a C. Ask another student to hold the noodle loosely in the middle (like a sleeve
				connection) and ask the students what they think will happen when force is
				applied to the top. Have the student apply a force vertically to demonstrate to
				the class that the noodle makes an S-shape because of the constraint in the
				middle. Ask the student applying the load if more load was required? The
				answer is yes and theory in Mechanics of Materials will show 4 times as much
				load is required. K is the factor that takes into account that the length is different
				based on end conditions. Assuming the end conditions are simply supported and
				a support is placed at mid-length (i.e., the length becomes L/2), we can see in
				the equation that the ½ is squared and inverted to estimate 4 times the load
				required to cause buckling.</p><br>
                        
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

