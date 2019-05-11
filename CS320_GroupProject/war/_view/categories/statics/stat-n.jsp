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
            <p class="title">Ruler Truss</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Truss</p>
            <p class="author"><strong>Submitted By: </strong>Ronald Welch</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This demonstration shows the simplicity of a truss. The
				equipment consists of a single triangle made of two rulers and string - forming a
				truss. The truss is held on two desks by students and given a load by another
				student. This shows the innate strength of the simple triangular shape used in
				trusses. This demonstration should take 5-10 minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> The basic equations required for analysis are the
				equations of equilibrium and trigonometry. However, no real numerical analysis
				is required beyond measuring the load applied if scales are placed under each
				leg of the Ruler Truss (not shown). The model is used primarily for developing a
				feel for the importance of triangles as a structure, especially when considering
				truss stability.</p>
				

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
                    <td>Yardstick</td>
                    <td>2</td>
                    <td>$5 each; 15 minutes</td>
                    <td>The yardsticks will be attached at one end with
						a bolt and a nut so that they can rotate freely.
						They will be attached at the other end by a
						string that is about 30 inches long so that the
						three parts form a triangle. </td>
                  </tr>
                  <tr>
                    <td>Bolt</td>
                    <td>1</td>
                    <td>$3</td>
                    <td>The bolt (2 inch x ¼ inch) will be used to connect
						one end of the yardsticks.</td>
                  </tr>
                   <tr>
                    <td>Nut</td>
                    <td>1</td>
                    <td>$1</td>
                    <td>The nut (1/4 diameter) will be used to secure
						the two yardsticks in place forming a generally
						frictionless pin.</td>
                  </tr>
                   <tr>
                    <td>String</td>
                    <td>30 inches</td>
                    <td>$5</td>
                    <td>The string will be attached to the far end of the
						yardsticks to create a triangular truss.</td>	
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
            
            <p class-"application"><strong><u>Before Class:</u></strong> Set up the ruler truss with the 2 rulers, bolt, nut, and string. </p><br>
                                 
            <p class="application"><strong><u>In Class:</u></strong> Set up the rulers and string on two desks and assign two students to
				hold the bottoms of the rulers using only their thumb and index finger (ruler
				weight actually resting on the desks) without the string being taut. The students
				are only trying to keep the structure vertical. Ask another student to apply a force to the top of the rulers. The students
				holding the bottom using only their fingers should not be able to resist the
				outward movement of the rulers as the student presses down. Based on the
				loading applied, ask the students what type of load is in each leg of their simple
				truss? Pull from the students that the rulers are in compression while the string
				is in tension.</p><br>
                        
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

