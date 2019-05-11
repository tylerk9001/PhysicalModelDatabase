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
            <p class="title">Uniformly Loaded Cables</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Cable, Equilibrium, Point Load, Suspension Bridge</p>
            <p class="author"><strong>Submitted By: </strong>Tom Messervey</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This is an opportunity to hang something from the ceiling
				and excite the students about their ability to analyze real world structures. After
				a few weeks of statics lessons, students possess the ability to determine the
				maximum and minimum force in a cable suspension bridge through equations of
				equilibrium. This demonstration should take 30 minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> This physical model provides a visual aid to illustrate the
				main components of a uniformly loaded cable, or more specifically, a cable
				suspension bridge. This can be supplemented with a simple board problem that
				demonstrates distributed loads and how “droop” in the cable from tower to
				center span can be modeled with simple statics. This statics exercise can be used
				to demonstrate that the compression in the tower remains constant but the
				tension in the cable goes down as the towers get taller, which provides a great
				opportunity to talk about the relationship between statics, design, and cost.</p>
				

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
                    <td>Rope or Cord</td>
                    <td>60-80ft</td>
                    <td>$20</td>
                    <td>This is the main cable and varies depending on
						the size you want to construct. </td>
                  </tr>
                  <tr>
                    <td>K'Nex Truss Deck</td>
                    <td>1</td>
                    <td>$150; 45 minutes</td>
                    <td>Size dependent – construction tips below  </td>
                  </tr>
                  <tr>
                    <td>String</td>
                    <td>1 roll</td>
                    <td>$10</td>
                    <td>Connects the cables and deck (hangers) </td>
                  </tr>
                  <tr>
                    <td>Binder or Alligator Clips</td>
                    <td>2/string</td>
                    <td>$5</td>
                    <td>Clip strings to cables – quick and easy </td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
            
            <p class-"application"><strong><u>Before Class:</u></strong> This can be built once and stored for the following semester. As
				pictured, seven 3ft sections are utilized but this can vary depending on the size
				of the classroom and how many KNEX and how much patience the instructor
				has. Short white connecter pieces allow the sections to quickly connect to each
				other. Each 3 foot section as pictured below consists of the following KNEX
				pieces:
				87 ea Blue 52 ea Purple Connectors (compression)
				24 ea Yellow 26 ea Yellow Connectors (tension)
				4 ea White Run the cord (that’s the main cable) though some eyelets or hooks in the ceiling
				and tie off the ends. Stack a couple desks (temporary shoring) on each other to
				get the deck near its final position. Run the string (that’s the hangers connecting
				the main cable and the deck) through the deck and clip to the main cables
				(cords). Some raising and adjustment will be necessary – but the student
				reaction makes it well worth it. </p><br>
                                 
            <p class="application"><strong><u>In Class:</u></strong> Discuss the main components of the bridge; main cable, “hanger”
				cables, stiffening truss and running surface. Use this physical model to really
				drive home to your students that they have already learned to do something
				significant in terms of design. During class, it helps to solve for the tension in the
				main cable and the reactions at the towers. Talk about how varying the tower
				height effects the forces involved, thereby impacting the cost and aesthetics of
				the bridge. Also, discuss how a roller at the top of the tower ensures only
				compressive forces on the tower. </p><br>
                        
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
