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
        <input class="search-txt" type="text" placeholder="Search..." name="">
        <a class="search-btn" href="#"><i class="fas fa-search"></i></a>
    </div>

<content>
    <div class="content">
        <div class="header-container" align="center">
            <p class="title">Internal Flow and Losses</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Fluids</p>
            <p class="keywords"><strong>Keywords: </strong>Conservation of Mass, Flow Regimes, Moody Chart, Volumetric Flow Rate</p>
            <p class="author"><strong>Submitted By: </strong>Richard Melnyk</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${test}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This is a simple demonstration of the basic principles of
			internal fluid flow and can also cover major losses. The demonstration can cover
			concepts such as conservation of mass, volumetric flow rates, flow regimes, use
			of the Moody Chart and major head losses. This demonstration should take 10
			minutes.</p>
                        
            <p class="principle"><strong><u>Engineering Principle:</u></strong>  Internal flow is based on fluid moving through a pipe,
			duct or conduit. It is something we all experience in everyday life and do not
			think about. Instead of working on a sample problem in class with no physical
			relevance, this demonstration reinforces the basic principles of pipe flow,
			including volumetric flow rate, Reynolds number, friction factor and head loss.
			The basic equations required are:
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-d(a).png" class="const-img">            
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
                    <td>Bucket</td>
                    <td>1</td>
                    <td>$5</td>
                    <td>Bucket must be accurately labeled so that it can measure volume (check the manufacturer's marks to make sure they are correct!)</td>
                  </tr>
                   <tr>
                    <td>Hose</td>
                    <td>1</td>
                    <td>$15</td>
                    <td>Any garden hose will work</td>
                  </tr>
                   <tr>
                    <td>Ruler or micrometer</td>
                    <td>1</td>
                    <td>$5-15</td>
                    <td>Used to measure the inside diameter of the hose.</td>
                  </tr>
                   <tr>
                    <td>Stopwatch</td>
                    <td>1</td>
                    <td>$5</td>
                    <td>Used to measure the time to fill the bucket to a pre-selected volume.</td>
                  </tr>
                </table><br>
            </div>
            
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-d(b).png" class="const-img">
            <img src="${pageContext.request.contextPath}/_view/categories/fluids/flu-d(c).png" class="const-img">
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Find a utility closet or faucet where you can connect the hose to a
			water source. Measure the length of the hose and diameter unless they are
			already known from the manufacturer. </p><br>

            
            <p class="application"><strong><u>In Class:</u></strong> Move the class to the area of the water source. This may require a
			short trip down the hall or outside. If necessary, have students operate the
			hose, faucet, and watch. Turn on the water and time how long it takes to fill the
			bucket to a predetermined volume. When this is complete, move back into the
			classroom. From this point, the students can calculate many different
			parameters with simple data obtained during the experiment. Using the
			equations listed above students can calculate the volumetric flow rate and mean
			velocity. With data tables on water properties, they can calculate the Reynolds
			number for the flow. With a Moody diagram and information about the hose
			material, they can then determine the friction factor and calculate head losses. 
			</p>
            
          	<p class = "application"><strong><u>Observations:</u></strong> Students will get a better sense of what a certain volumetric flow
			rate and velocity looks and sounds like. Often students do not have a sense of
			how 'fast' or 'slow' a volumetric flow rate is. They will also understand what
			constitutes turbulent flow as the water will likely be turbulent if it fills the entire
			hose (required for internal flow analysis).</p>
			
			<p class = "application"><strong><u>Additional Application:</u></strong>  If more accuracy is desirable, a thermometer can be
			used to measure the temperature of the water. This will help determine the
			density of the water to calculate the Reynolds number. In addition, you can add
			minor losses by accounting for any junctions, fittings, or valves along the flow.
			Finally, to enable students to see how changing the diameter of the hose affects
			parameters such as Reynolds number and losses, you can use a smaller or larger
			hose and repeat the experiment. </p>
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
