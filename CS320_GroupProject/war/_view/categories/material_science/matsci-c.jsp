<!DOCTYPE html>
<html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<head>
    <title>Material Science | Physical Model </title>
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
            <p class="title">Creepy Plastic</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Heat Transfer</p>
            <p class="keywords"><strong>Keywords: </strong>Deformation, Primary Creep, Rupture, Secondary Creep, Strain, Stress</p>
            <p class="author"><strong>Submitted By: </strong>Allen Estes and Led Klosky</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This is a simple demonstration to illustrate initial
			deformation, primary creep and secondary creep of a material subjected to a
			constant load over time. Students can observe a phenomenon over a few days
			that often takes years to complete. Students can compute the steady state
			creep rate and gain an appreciation for the relative time required for primary
			and secondary creep. This demonstration should take a 20 minutes during a
			single class, but be monitored and updated over a 3 day period..</p>
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> Creep is defined as the permanent deformation over time
			of a material subjected to a constant load or stress. For metals, it occurs at
			higher temperatures, usually greater than 40% of the melting point, and can take
			years to occur. It is therefore difficult to physically illustrate this concept to
			students. Fortunately, many polymers experience creep at room temperature
			and at stresses far below the yield stress of the material. Thus it is possible to
			create a quick, inexpensive and rudimentary demonstration of creep behavior in
			the classroom using plastic tubing with a suspended weight. Creep occurs in
			stages as indicated by the Figure. (1)</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/material_science/matsci(a.2).JPG" class="const-img">
          
          	 <p class="principle"> When a load is applied to an object, there is an instantaneous initial deformation
				that can be computed using basic principals of stress and strain. This first stage
				of creep is known as primary creep where the slope of the curve is decreasing
				and the material is experiencing strain hardening. The curve levels off to a
				constant slope during the secondary stage of creep. This is the longest stage of
				creep and the material is achieving a balance between strain hardening and
				recovery of its deformation capability. The slope of the line during this period is
				the steady state creep rate. The final stage of creep is the tertiary stage and
				ultimately leads to rupture of the material. The slope of the curve increases as
				the microstructure of the material changes, cracks form, and the material
				ruptures.</p>
          
          
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
                    <td>Surgical Tubing</td>
                    <td>3 to 8 feet</td>
                    <td>$5-10</td>
                    <td>Any small diameter piece of tubing will work.
					You will want a piece that is long enough for the
					students to observe the deformations yet short
					enough to fit in your classroom. Longer pieces
					of tubing will produce larger deformations.</td>
                  </tr>
                  <tr>
                    <td>Weight</td>
                    <td>1</td>
                    <td>$5</td>
                    <td>The weight should be large enough to cause a
					substantial initial deformation, roughly 20-40%
					rupture strain. (20-40% of rupture strain if using
					tubing. If using another material, 20-50% of ey
					might be appropriate). If the weight is too small,
					the creep curve will take a long time to develop.
					If it is too big, the creep will either be
					unrealistically accelerated or produce an early
					rupture.</td>
                  </tr>
                  <tr>
                    <td>Hook</td>
                    <td>1</td>
                    <td>$5</td>
                    <td>Attach the hook to either the ceiling or an upper portion of the wall.</td>
                  </tr>
                  <tr>
                    <td>Yardstick</td>
                    <td>1</td>
                    <td>$3</td>
                    <td>Attach the yardstick to the wall, next to the hanging
					weight. Use either a screw or tape. If tape is used,
					provide a sufficient quantity that a minor disturbance
					will not cause the yardstick to move</td>
                  </tr>
                </table><br>
            </div>
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Mount a hook in the classroom from which to hang a weight
			suspended from a long piece of surgical tubing. Affix the yardstick to the wall
			next to where the weight will hang. Tie the surgical tubing to the weight, but do
			not hang it yet. This should take 10-15 minutes.</p><br>
                                  
            <p class="application"><strong><u>In Class:</u></strong> Attach the surgical tubing to the hook and mark the location of the
			weight in the undeformed position on the yardstick. You will have to suspend
			the weight in your hand to make this mark. Gently release the weight, allow the
			surgical tubing to deform and record the difference between the initial mark and
			its current location on the yardstick. Record the data on the blackboard. Have a
			student take a reading every minute for the first five minutes. Record the time
			and the reading on the yardstick on the blackboard. Continue taking readings
			every five minutes for the remainder of the class period</p><br>
            
			<img src="${pageContext.request.contextPath}/_view/categories/material_science/matsci(b.2).JPG" class="const-img">   
			         
             <p class="application">Prepare a spreadsheet in advance and enter the data into the spreadsheet.
				Divide the deformation by the initial length of the surgical tubing to obtain the
				strain. Convert the recorded clock times to a standard unit of time such as hours
				or minutes. At the end of the class period, an initial creep curve can be posted
				on the board. Data from an actual class experiment after 100 minutes is shown
				below.</p><br>
				
			<img src="${pageContext.request.contextPath}/_view/categories/material_science/matsci(c.2).JPG" class="const-img">
			
			<p class="application">Continue taking readings over several days at convenient times. They do not
				have to be taken often. At the beginning of class, show the updated creep curve.
				For the experiment shown below, the data was collected over nine days.
				It may not be productive to continue the experiment any longer. The learning
				points have been made and it is unlikely that anyone will be around to capture
				the data for tertiary creep. It will happen quickly and may occur during the
				middle of the night. You will probably have moved on to another topic, so quit
				while you are ahead, unless the students are interested enough to continue the
				experiment to rupture.</p><br>
				
				<img src="${pageContext.request.contextPath}/_view/categories/material_science/matsci(d.2).JPG" class="const-img">
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
