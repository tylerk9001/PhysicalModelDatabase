<!DOCTYPE html>
<html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<head>
    <title>Heat Transfer | Physical Model </title>
    <!--Website CSS-->
    <link rel="icon" href="${pageContext.request.contextPath}/_view/img/tab.png">
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
                        <form action="${pageContext.request.contextPath}/dashboard">
                            <c:choose>
                                <c:when test="${sessionScope.login == true}">
                                    <a href="${pageContext.request.contextPath}/dashboard" name="dashboard"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
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
            <p class="title">Parabolic Concentrator</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Heat Transfer</p>
            <p class="keywords"><strong>Keywords: </strong>Concentration, Energy, Heat Flux, Radiant, Reflection</p>
            <p class="author"><strong>Submitted By: </strong> Gunnar Tamm</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This demonstration illustrates how to concentrate radiant
			energy, solar or other, using a parabolic reflecting dish to produce high enough
			heat fluxes to burn paper. This demonstration should take 10 minutes.</p><br>
			
            <p class="principle"><strong><u>Engineering Principle:</u></strong> The sun is located far enough from the earth that
			radiation arrives here in nearly parallel beams. A parabolic dish will spectrally
			reflect the parallel beams towards the focus of the dish, greatly amplifying the
			radiation intensity of the original beam. In doing so, anything placed into the
			focus of the dish will incur much more power per unit area than the original
			beam, such that an object at the focus may reach very high temperatures.<br>
			For indoor convenience, a spotlight can be used with a high candlepower rating.<br>
			The candlepower rating is usually based on the brightest spot in the non-uniform
			beam of the spotlight. Although it is known that the sun can provide roughly
			1000 [W/m2] on a sunny summer day, conversion of the spotlight candlepower
			rating to actual radiant power flux [W/m2] is not accurate without either
			measurement or the manufacturer’s data. A 15,000,000 candlepower spotlight
			is used as it is the largest battery powered spotlight currently on the market,
			available from various manufacturers.<br>
			The concentration of light depends on the precise geometry and surface
			properties of the mirror. The more parabolic and reflective the surface, the
			sharper the focus will be. More light will be focused for a larger beam diameter,
			and mirror aperture to match.</p>
    
            
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
                    <td>15,000,000 candlepower spotlight</td>
                    <td>1</td>
                    <td>$60-100</td>
                    <td>Available from various manufacturers. The one shown has an aperture diameter of 8 ¾ ”.</td>
                  </tr>
                  <tr>
                    <td>Parabolic Mirror</td>
                    <td>1</td>
                    <td>$45</td>
                    <td>Highly reflecting parabolic surface, with aperture diameter approximately that of the spotlight. This mirror has an aperture diameter of 8 ¾ ”.</td>
                  </tr>
                  <tr>
                    <td>Mirror Stand</td>
                    <td>1</td>
                    <td>n/a</td>
                    <td>Improvised materials. Goal is to align mirror axis with spotlight axis.</td>
                  </tr>
                  <tr>
                    <td>Paper/ Match/Tissue</td>
                    <td>1</td>
                    <td>n/a</td>
                    <td>Thin strip of any readily combustible material.</td>
                  </tr>
                  <tr>
                    <td>Thermometer/Thermocouple</td>
                    <td>1</td>
                    <td>$15-35</td>
                    <td>Measures temperature at mirror focus.</td>
                  </tr>
                </table><br>
            </div>
            
            <br>
            
            <p class="title">Application</p>
                        
            <p class="application"><strong><u>In Class:</u></strong> (a) The mirror and spotlight can be easily aligned either before or during class.</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/heat_transfer/heat-tran(a.1).JPG" class="const-img"><br>          
            
            <p class="application"><strong><u>In Class:</u></strong> If the stand for the mirror is ready to go at a known height, the alignment will
			take half a minute. Above is an improvised mirror stand using chalk erasers. The
			spotlight comes with an adjustable stand. (1) The axis of the mirror should be
			the same as the axis of the spotlight for optimal concentration. The axial
			distance between the mirror and spotlight is arbitrary, but should not be too
			large. The alignment is fine tuned by observing the shadow of the mirror on the
			wall behind the mirror. In the image below, the spotlight beam diameter is
			slightly larger than the mirror diameter, showing a symmetrical eclipse image
			(mirror blocking light) on the wall. (2)</p><br>
			
			 <img src="${pageContext.request.contextPath}/_view/categories/heat_transfer/heat-tran(b.1).JPG" class="const-img"><br>      
			 
			 <p class="application"><strong><u>In Class:</u></strong> (b) Ask for a volunteer to locate the hot spot of the mirror. This is done by
				moving a finger along the central axis towards the mirror. At the focus, the
				finger will rapidly get very hot on the side facing the mirror. Instinct will cause
				the student to remove the finger very quickly. CAUTION: There is a risk of a
				being burned if the finger is kept in the focus too long, if a higher power
				spotlight is used, or if a better quality mirror is used. Try it first before the class
				does, and give fair warning to your volunteer!<br>
				(c) Once it has been proven that the focus is a hot spot, try burning a piece of
				tissue paper, match, or plain paper. At the focus, the paper will quickly smoke
				and even ignite! However, if the paper is even a little bit off the focus, it may not
				even smoke. The key is to zero in on the focus, which for this mirror is about 2-3
				inches from the surface along the primary axis. This is best done by knowing
				where to look ahead of time, and by fine tuning the location by increasing the
				brightness of the spot on the paper as it is moved. This all assumes that the
				mirror axis is aligned well with the spotlight axis.<br>
				(d) Knowing that paper was burned, have students guess the temperature at the
				focus and then measure it with a thermometer or thermocouple.</p><br>
       
            
            <p class="application"><strong><u>Additional Application</u></strong> (a) After building up the hopes of the class that they will witness the incredible
			power of the sun, first take out a puny little 1,000,000 [cp] light. This will
			hopefully draw some “booing” from the class. Then get rid of the 1,000,000 [cp]
			light, and impress them by hauling out the markedly larger 15,000,000 [cp] light.
			(b) Show images of solar concentrators being used in research and the power
			industry, either before or after the demonstration.<br>
			(c) If the concentrator is designed to collect heat, the useful heat delivery can be
			expressed as the radiant power reflected to the receiver which is positioned at
			the focus, less the thermal losses from the receiver to the ambient.</p><br>
			
			 <img src="${pageContext.request.contextPath}/_view/categories/heat_transfer/heat-tran(c.1).JPG" class="const-img"><br>  
			 
			  <p class="application">where</p><br>
			 
			<img src="${pageContext.request.contextPath}/_view/categories/heat_transfer/heat-tran(d.1).JPG" class="const-img"><br>      
			
				<p class="application">The maximum temperature of the receiver (collector) can be estimated by
				setting the useful heat delivery to zero in the above expression. Concentrating
				solar power towers, like the one at Sandia National Labs, can achieve up to 5000
				[K].<br><br>
				(d) The concentration ratio is defined as the area of the mirror aperture to the
				area of the receiver (collector) placed at the focus of the mirror.</p><br>
			
			 <img src="${pageContext.request.contextPath}/_view/categories/heat_transfer/heat-tran(e.1).JPG" class="const-img"><br>      
			 
			 <p class="application">For a two-dimensional mirror (parabolic trough), the theoretical limit of
				concentration is 216 in air and 324 in glass. For a three-dimensional mirror
				(parabolic dish), the theoretical limit of concentration is 46,000 in air and
				103,500 in glass. The highest solar concentration that has been achieved in the
				lab is 56,000!</p><br>
			 
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
