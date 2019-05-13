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
            <p class="title">Zero Force Members</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Force, Pin, Truss, Zero Force Member</p>
            <p class="author"><strong>Submitted By: </strong>Ronald Welch</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This is a simple model that will demonstrate the use of zero
				force members (ZFM) in trusses. Wooden beams are attached with dowels to
				form a simple truss, which is acted on by an external force. The zero force
				members are identified by placing a load on a truss and then removing pins at
				the joints to see if the truss is affected. This demonstration should take 15-20
				minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> The basic equations for equilibrium of a truss joint
				(Method of Joints) are where the sum of the forces in the x and y direction both equal zero. </p>
				

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
                    <td>Wodden Members</td>
                    <td>5</td>
                    <td>$40; 45 minutes</td>
                    <td>The vertical members (gray) are 21 in. long. The
						horizontal members (gray) are 16.5 in. long. The
						diagonal member (red) is 25.5 in. long. Each
						member is about 0.75 inch thick and 1.5 inches
						wide. Each member has a slightly larger than
						0.25 inch hole drilled in each end to connect
						them with 0.25 inch dowels (dowel should slide
						easily). One of the vertical members has a hook
						at the level of the connection hole and one of
						the horizontal members has a hook at one end.  </td>
                  </tr>
                  <tr>
                    <td>Base</td>
                    <td>1</td>
                    <td>$10; 15 minutes</td>
                    <td>The base is 20 inches long x 6 inches wide x and
						5/8 to 3/4 inch thick. The base is used to clamp
						the ZFM demonstrator to a heavy desk. 4x 1.5
						inch tall x 2.25 inch long x 0.75 inch thick pieces
						nailed to the base provide the supports for the
						vertical and diagonal members.  </td>
                  </tr>
                  <tr>
                    <td>Dowels</td>
                    <td>4</td>
                    <td>$5</td>
                    <td>The 4 inch x 1/4 inch dowels will act as pins to
						hold the members in place. </td>
                  </tr>
                  <tr>
                    <td>Clamps</td>
                    <td>2</td>
                    <td>$15 each</td>
                    <td>Clamps are necessary to hold the truss to the heavy
						desk/table.  </td>
                  </tr>
                  <tr>
                    <td>Load (Student)</td>
                    <td>1</td>
                    <td>Anything but free</td>
                    <td>The horizontal load applied to the truss will be
						applied by a student pulling on a string attached to a
						hook.  </td>
                  </tr>
                  <tr>
                    <td>Hooks</td>
                    <td>2</td>
                    <td>$15</td>
                    <td>The eye hooks are positioned on either side of the
						truss on vertical and horizontal members where
						horizontal load will be applied.  </td>
                  </tr>
                  <tr>
                    <td>Pliers</td>
                    <td>1</td>
                    <td>$15</td>
                    <td>Any set of pliers will do  </td>
                  </tr>
                  <tr>
                    <td>String</td>
                    <td>6</td>
                    <td>$5</td>
                    <td>A moderately strong string is necessary to apply a
						 to the side of the truss. </td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
            
            <p class-"application"><strong><u>Before Class:</u></strong> Prepare the wooden truss for class and check with test loads to see
				that it can support a student without risk. Make sure the dowels are in place
				properly and won’t break. </p><br>
                                 
            <p class="application"><strong><u>In Class:</u></strong> Ask for a student volunteer to be the load through the string attached
				to the hook (on the vertical member) on the joint of the truss where three
				members intersect (Joint C). Have her lean back and close her eyes (drama!). Ask
				the class what they think would happen if you pulled out any dowel. The dowel
				at Joint D? You can possibly lead the students to see that the load will flow
				through the horizontal member to joint D and then down the vertical member
				(not true, but sets up the drama and the learning point). Hopefully the students
				will conclude that the student inducing the load will fall down when the pin is
				pulled. At this point, you may have to work on getting the student to keep her
				eyes closed. Tell her to trust you since you work for the government (university).
				Tell her you are about to pull out one of the dowels and to let you know if she
				feels you pulling it out with pliers. You should be able to pull out the dowel at
				joint D easily since there is no load in members BD and CD. After a few seconds
				of continuous talking and with the dowel out and the members dangling (lower
				by hand so the student cannot feel the movement), tell her to open her eyes
				with you holding the dowel for everyone to see. Ask her to take her seat and
				address the whole class about why removing one of the dowels had no effect on
				the way the truss worked. Work through with the Method of Joints at Joint D
				and mathematically demonstrate that both members are ZFMs. </p><br>
                        
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
