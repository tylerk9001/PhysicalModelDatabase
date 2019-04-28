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
        <a class="search-btn" href="#"><i class="fas fa-search"></i></a>
    </div>

<content>
    <div class="content">
        <div class="header-container" align="center">
            <p class="title">Ice Melting Blocks</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Heat Transfer</p>
            <p class="keywords"><strong>Keywords: </strong>Conservation of Energy, Fourier's Law, Phase Change, Thermal Conductivity</p>
            <p class="author"><strong>Submitted By: </strong> Gunnar Tamm</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> This demonstration illustrates the material property of thermal conductivity, and how this property affects conduction heat transfer in a
            solid. Concepts include Fourierâs Law, conservation of energy and solid-liquid
            phase change. This demonstration should take 8-10 minutes.</p>
            
            <img src="${pageContext.request.contextPath}/_view/categories/heat_transfer/heat-tran(a).jpg" class="const-img">
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> Fourier’s Law states that the heat transfer rate in a solid is
			proportional to the thermal conductivity, k, cross sectional area, A, and
			temperature gradient of the material. At the surface, assuming the x-direction is
			into the solid,</p>
   
            <img src="${pageContext.request.contextPath}/_view/categories/heat_transfer/heat-tran(b).JPG" class="const-img">
            
            <p class="principle">For two similar solid blocks at the same room temperature, the block with the
			higher thermal conductivity will “feel” colder to the touch, because thermal
			energy is more readily taken from your hand (heat source) into the block.
			Likewise, if a colder sink is placed into contact with the two blocks, the material
			with higher thermal conductivity will transfer thermal energy out of the block
			faster. <br><br>
			
			Unless a steady condition has been achieved, the two blocks will change temperature at different rates according to
			</p>
            
             <img src="${pageContext.request.contextPath}/_view/categories/heat_transfer/heat-tran(c).JPG" class="const-img">
            
             <p class="principle">where the rate of heat transfer, q, is proportional to the mass, m, specific heat of
			he material, 𝑐𝑝, and the rate of temperature change with time. <br><br>
			
			The block with the higher thermal conductivity will more rapidly lose thermal
			energy to the cold sink, producing a greater temperature change of the block
			with time. This is valid if both blocks have comparable heat capacity rates (mcp).
			The latent heat of fusion of water is demonstrated by melting ice cubes on the
			two blocks. The block with the higher thermal conductivity will be able to melt
			the ice faster. The energy input rate required to melt ice is given in terms of the
			latent heat of fusion and rate of mass changing phase as
			</p>
			
			 <img src="${pageContext.request.contextPath}/_view/categories/heat_transfer/heat-tran(d).JPG" class="const-img">
            
            <p class="principle">From the rapid melting using the high thermal
			conductivity block, the demonstration also illustrates that the heating of the ice
			cube by the ambient air through convection is insignificant compared to the
			heating of the ice cube via conduction from the block. For the lower thermal
			conductivity block, which serves to insulate the ice cube bottom, the conduction
			and convection rates are of a comparably small scale.</p><br><br>
            
            
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
                    <td>Blocks of different materials Beam</td>
                    <td>2</td>
                    <td>$2-7 depending on size; 25 minutes</td>
                    <td>Must sit with level top surfaces; should be the
						same size, and big enough to hold an ice cube;
						one with high (copper is best, brass, aluminum)
						and one with low (rubber, plastic, wood)
						thermal conductivity; can be painted the same
						color for concealing the type of material</td>
                  </tr>
                  <tr>
                    <td>Ice cubes</td>
                    <td>2</td>
                    <td>n/a</td>
                    <td>Cold enough so no melting has begun before experiment.</td>
                  </tr>
                  <tr>
                    <td>O-rings or rubber bands</td>
                    <td>2</td>
                    <td>$1-3</td>
                    <td>Keeps ice and melted water from falling off top surface.</td>
                  </tr>
                  <tr>
                    <td>Stopwatch</td>
                    <td>1</td>
                    <td>$5</td>
                    <td>Can be used to “take bets” on how long it’ll take to melt the ice.</td>
                  </tr>
                  <tr>
                    <td>Scale (optional)</td>
                    <td>1</td>
                    <td>$15</td>
                    <td>Measures the mass of blocks and ice cubes.</td>
                  </tr>
                </table><br>
            </div>
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Have two ice cubes ready, at below freezing temperature. Keep in
			an insulated container to prevent any melting before the demonstration. Allow
			the two blocks to sit in the same space for some time so that they come to the
			same equilibrium temperature.</p>
              
            <p class="application"><strong><u>In Class:</u></strong> (a) Ask volunteers to feel the two blocks to determine which one is colder. The
				block with the higher thermal conductivity (copper is the best), will feel colder
				than the block with the lower thermal conductivity (eg. rubber) even though
				they are at exactly the same temperature.<br>
				(b) Before bringing out the ice cubes, ask which block would melt an ice cube
				faster. Some will undoubtedly guess the low-conductivity bloack, as it feels
				warmer. “Take bets” as to how long it’ll take to melt an ice cube on each one.
				With timer ready, place an ice cube onto each block. The copper will melt the
				ice cube dramatically faster, dancing on the pool of melt it has formed, while the
				ice cube on the rubber block does nothing. Note that without any boundary, the
				ice cube on the copper block will not necessarily slide off of the level block.
				Surface tension will keep it from doing so.<br>
				
				After 1 minute, the photos show the difference in melting rates, with the
				insulating block having little effect on the ice cube. The ice cube is melted within
				a matter of 2-3 minutes on the high thermal conductivity block, while remaining
				relatively unchanged on the insulating block.</p>
            
             <img src="${pageContext.request.contextPath}/_view/categories/heat_transfer/heat-tran(e).JPG" class="const-img">
            
            <p class="application">(c) After the copper has melted the ice cube, circulate both blocks once again.
			The copper block will feel much colder as it has lost more thermal energy. The
			copper block will feel cold for some time, which will show how latent heat can
			be large as compared to sensible heat. With the time and initial mass of ice cube
			known, the average heat transfer rate from the copper block can be calculated
			according to equation (3). The temperature of the block can be estimated then
			using equation (2) if the mass of the block is known. This assumes other heat
			transfer from the block is negligible.</p><br><br>
            
            
            <p class="application"><strong><u>Additional Application</u></strong> a) Before starting, ask for an explanation of why something feels cold or warm.
			Establish with the class that you do not feel temperature, but rather
			temperature differences and the heat transfer that results.<br>
			(b) The ice melting can have all of the excitement of a race, even with copper
			being the clear winner. Take bets, and ham it up!<br>
			(c) A discussion can follow regarding the spatial variation of temperature in the
			blocks, due to the different thermal conductivities. This may be a good lead-in
			into a lesson on lumped capacitance.<br>
			(d) Discuss thermal losses to account for all energy transfers to and from the
			block, and stored energy change of the block. An expression for conservation of
			energy can be obtained for the block as </p><br>
			
			<img src="${pageContext.request.contextPath}/_view/categories/heat_transfer/heat-tran(f).JPG" class="const-img"><br>
			
			 <p class="application">where the energy input is from the air via convection and table underneath the
			block via conduction, which are both warmer once the block begins to cool.
			There is no energy generation. The energy output from the block is to the ice
			and ice-melt, which are both colder, mostly as latent heating of the ice in
			equation (3) but also as sensible heating as given by equation (2). The stored
			energy of the block is given by equation (2) for a block with uniform
			temperature. This will be a negative term.</p><br>
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
