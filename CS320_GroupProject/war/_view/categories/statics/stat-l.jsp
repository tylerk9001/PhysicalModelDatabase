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
            <p class="title">Varignon's I-Beam</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Force, Line of Action, Moment</p>
            <p class="author"><strong>Submitted By: </strong>Jason Evers</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> Introduce Varignon’s theorem to students as a simple way to
				determine the moment about a point. This demonstration should take 5-7
				minutes.</p>
				                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong> Varignon’s Theorem states that the moment of a force is
				equal to the sum of the moments of that force’s components about the same
				point. </p>
				
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-l-pic(a).png" class="const-img"><br>
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-l-pic(b).png" class="const-img"><br>
				

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
                    <td>Force Vectors</td>
                    <td>3</td>
                    <td>$15</td>
                    <td>One vector represents the total Force Vector.
						The other two should be smaller and represent
						the components of the force in each orthogonal
						direction. The force vectors should have
						magnets taped to their backs.</td>
                  </tr>
                  <tr>
                    <td>I-Beam</td>
                    <td>1</td>
                    <td>$10</td>
                    <td>The I-Beam should be made of durable material,
						then fastened to another piece of poster board
						with a light, large headed bolt. This allows the I-beam to rotate when fixed to the board. </td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
                                 
            <p class="application"><strong><u>In Class:</u></strong> Introduce the problem of determining how much moment this force
				acting on a lifting eyelet on an I-beam will cause about the point O. Show how
				the complex geometry can complicate this calculation. Now Introduce
				Varignon’s theorem as a simple way to avoid this problem. After stating the
				theorem, put it into practice on the I-beam. Break the force into it’s orthogonal
				components. After doing so calculate the combined moment of the force’s
				components about point O. Show how each component can cause either
				positive or negative moment, so students must pay attention to the direction
				that each force causes rotation in. </p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-l-pic(c).png" class="const-img"><br>
            
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

