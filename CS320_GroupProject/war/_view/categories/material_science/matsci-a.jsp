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
            <p class="title">Bending A Knife Blade</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Material Science</p>
            <p class="keywords"><strong>Keywords: </strong>Annealing, Bending, Brittle, Deformation, Fracture, Rupture, Strength</p>
            <p class="author"><strong>Submitted By: </strong>Led Klosky</p>
            <p class="button-reviews"><a class="reviewsButton" href="http://localhost:8081/project/allreviews?${projectName}">Browse Reviews</a><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> Knife blades are typically very hard and brittle. In this rapid
			and inexpensive demonstration, the structure of a steel knife blade is
			transformed through simple heating and the blade becomes capable of
			sustaining large deformations without rupture. This demonstration should take
			5-7 minutes.</p>
            
            <p class="principle"><strong><u>Engineering Principle:</u></strong> Knife blades are typically made of steels with relatively
			high carbon contents. These steels are also sometimes subjected to aggressive
			heat treatments which leave them exceptionally hard, strong and brittle. This is
			particularly true of utility knife blades, which are resistant to deformation
			(keeping them sharp longer) due to their hardness but have little toughness and
			thus rupture when subjected to large deformations. By heating the steel utility
			knife blade to an orange-hot state (perhaps 650 to 700 degrees Celsius), the
			steel is allowed to go through the initial stages of the annealing process, most
			likely leading to spheroid structure within the blade. It should be noted that this
			demonstration is qualitative rather than quantitative, since knowing the initial
			state of the blade in terms of carbon content or percent martensite, as well as
			what tempering and annealing went on during manufacturing, is very difficult to
			determine. Still, the demonstration brings out two key theoretical points. First,
			the heating and quenching of a sample will not lead to martensitic steels if the
			heat is insufficient for the formation of austenite. Second, very simple processes
			can lead to radical changes in material behavior, and engineers must be aware of
			these potential transformations when designing machines, especially for highheat
			settings.</p>
            
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
                    <td>Vice Grips</td>
                    <td>2</td>
                    <td>$15 each</td>
                    <td>Vice grips (over pliers) ensure that the broken halves don't fly off into the gathered crowd.</td>
                  </tr>
                  <tr>
                    <td>Propane Torch</td>
                    <td>1</td>
                    <td>$25-50</td>
                    <td>A self-igniting torch works best.</td>
                  </tr>
                  <tr>
                    <td>Container of Water</td>
                    <td>1</td>
                    <td>$5</td>
                    <td>One pint is the minimum for quenching the sample. It doesn't need to be particularly cold, since the blade has little thermal mass.</td>
                  </tr>
                  <tr>
                    <td>Safety Gear</td>
                    <td>1 Set</td>
                    <td>$15-25</td>
                    <td>Keep yourself safe</td>
                  </tr>
                  <tr>
                    <td>Utility Knife Blade</td>
                    <td>2</td>
                    <td>$1</td>
                    <td>Most simple utility blades will work; make sure to test them before class to ensure that the untreated blades break when bent, as not all blades are as brittle as you might like.</td>
                  </tr>
                </table><br>
            </div>
            
            <p class="title">Application</p>
            
            <p class="application"><strong><u>Before Class:</u></strong> Make sure to test this one thoroughly before trying it in class. Different knife blade can behave very differently, depending on the manufacturing process. (1)</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/material_science/matsci(a).JPG" class="const-img"><br>
            <img src="${pageContext.request.contextPath}/_view/categories/material_science/matsci(b).JPG" class="const-img"><br>
                        
            <p class="application"><strong><u>In Class:</u></strong> Begin with the as-manufactured knife blade, and dig into the student's
			natural knowledge about the behavior. They should be able to guess what will
			happen when you grab the sample with the two pairs of vice grips and bend. Let
			them pick which blade to test, and show them that the blade snaps neatly after
			just a little bit of bending. (2) Then, take a fresh knife blade and heat it through
			with a propane torch while holding it with the vice grips. (3) During the heating,
			which should take less than 2 minutes, you can ask the students to give their
			thoughts on what is likely to happen. Having the phase diagram for steel
			displayed in the classroom can help fuel the discussion. The blade can then be
			quick-quenched in the water and the sizzling noise is good drama for keeping
			student interest. The blade cools almost instantly, and can then be bent back on
			itself without fracture. This demonstration is an excellent introduction to the
			topic of heat treating steels. It’s also a great way to illustrate that a mechanical
			designer must know about the heat treatment of steels to avoid unexpected
			behavior.</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/material_science/matsci(c).JPG" class="const-img"><br>
            
            <p class="application"><strong><u>Additional Application</u></strong> It is easy to relate this demonstration to what students
			might have seen in the old Western movies. Point out that a blacksmith making a
			horseshoe had to have a significant amount of knowledge about the heat
			treatment of steels (post 1870, anyway) in order to make a shoe that was both
			hard enough and tough enough to take the kind of beating that a galloping horse
			can dish out.</p><br>
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
