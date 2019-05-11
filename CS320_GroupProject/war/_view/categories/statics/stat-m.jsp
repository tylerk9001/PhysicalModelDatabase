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
            <p class="title">K'Nex Trusses</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Stiffness, Strength, Truss</p>
            <p class="author"><strong>Submitted By: </strong>Ronald Welch</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This simple pair of K’NEX models can demonstrate how
				trusses greatly increase the strength/stiffness of structures without adding much
				weight. The trusses are built out of K’NEX pieces and topped with construction
				paper to produce a roadway. Text books are used to load the trusses to
				demonstrate its strength to weight ratio. This demonstration should take 15
				minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> The basic equations required for analysis are the
				equations of equilibrium and trigonometry. However, no real numerical analysis
				is required beyond measuring the weight. The model is used primarily for
				developing a feel for the importance of trusses as a structure, especially when
				considering the structure weight to load carried ratio, and that the weight of the
				truss can be initially ignored during the design (add weight of truss members
				back in during the final design checks).</p>
				

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
                    <td>K’NEX Pieces</td>
                    <td>Lots!</td>
                    <td>$300</td>
                    <td>These pieces are connected into a number of
						triangle shapes to form 2D and then 3D trusses
						with supports. The connection of the 2D
						trusses forms a rudimentary "road" for the
						bridge. Also, a so-called "road" without trusses
						is made to demonstrate how flexible a bridge
						can be without trusses (long members overly
						dramatized for effect). All of the K'NEX pieces
						shown are part to the Big Ball Factory set.
						Individual pieces can be purchased to build
						your own kit. For the bridges in ,
						you will need: Bridge without trusses - 7 yellow
						(3.25 inches) straight pieces, 12 blue (2.125
						inches) straight pieces, 28 purple connectors (2
						each forming a joint); Bridge with trusses - 17
						yellow (3.25 inches) straight pieces, 30 blue
						(2.125 inches) straight pieces, 2 red (5.125
						inches) straight pieces, 4 white (1.25 inches)
						straight pieces, 20 purple connectors (2 each
						forming a joint), 4 green connectors, 14 yellow
						connectors (2 each forming 4 supports), 2 red
						connectors. </td>
                  </tr>
                  <tr>
                    <td>Load (textbooks)</td>
                    <td>Any</td>
                    <td>---</td>
                    <td>Test how many textbooks is safe for the K’NEX
						truss model so as to not actually break the
						connections, but make sure the number of
						books is effective in making a point about the
						strength of the bridge.</td>
                  </tr>
                   <tr>
                    <td>Construction paper</td>
                    <td>2</td>
                    <td>$1; 5 minutes</td>
                    <td>Two pieces of construction paper make the
						roads for the two bridges.</td>
                  </tr>
                   <tr>
                    <td>Tape</td>
                    <td>1</td>
                    <td>$2</td>
                    <td>Tape is used to attach the paper to the two
						bridges.</td>	
                  </tr>
                  </tr>
                   <tr>
                    <td>Supports</td>
                    <td>2</td>
                    <td>---</td>
                    <td>Supports are needed to hold the ends of the
						bridges off of the desk while they are being
						loaded. Anything can be used for this: more
						textbooks for example.</td>	
                  </tr>
                  </tr>
                   <tr>
                    <td>Scale</td>
                    <td>1</td>
                    <td>$15</td>
                    <td>A scale is used to weigh the truss and the load it
						is able to carry successfully. No scale is really
						required. A student can provide a qualitative
						answer by placing the truss in one hand and the
						load carried in the other hand.</td>	
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
            
            <p class-"application"><strong><u>Before Class:</u></strong> Construct the bridges out of K’NEX and load test the truss bridge to
				make sure you don’t overload it and break it during class (normally only
				connections come apart, but occasionally, the textbooks can cause a connector
				to occasionally break a small piece off), especially if teaching multiple sections of
				the same lesson. </p><br>
                                 
            <p class="application"><strong><u>In Class:</u></strong> Show the class the bridge without trusses. Place it in the hands of a
				student and ask how much it weighs (qualitatively). Place it on the supports and
				place a light object on it and show how it begins to deflect under the load. Ask
				the student to compare the weight of the structure and the load placed on it
				(qualitatively). Show the students that it is bending and ask why it isn’t very
				strong. Generally long slender members acting as simply supported members
				are not efficient in supporting loads over long spans. How can we make the
				structure stronger – greater depth to the members (Draw on their experience of
				building a tree house using 2x4 members. The member is stronger when loaded
				perpendicular to the greatest depth – use a ruler to demonstrate)? How can we
				get greater depth without too much more weight? If and when you can elicit a
				statement about trusses from the class, bring out the other bridge. </p><br>
                        
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

