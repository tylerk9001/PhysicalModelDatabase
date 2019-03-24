<!DOCTYPE html>
<html>
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
            <p class="title">Frame Demos</p>
            <p class="eng-principle"><strong>Engineering Principle: </strong>Statics</p>
            <p class="keywords"><strong>Keywords: </strong>Force, Frame, Reaction</p>
            <p class="author"><strong>Submitted By: </strong>Jason Evers</p><hr>
        </div>
        <div class="project-content">
            <p class="description"><strong><u>Model Description:</u></strong> Introduce the concept of a frame and use a good free body
				diagram and the equations of equilibrium to solve for the forces and reactions
				acting on the frame. This demonstration should take 5-10 minutes.</p>
				                        
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-d-pic(a).png" class="const-img"><br>
			
            <p class="principle"><strong><u>Engineering Principle:</u></strong> Frames and Machines are one way to classify a structure.
				As opposed to Trusses, Frames and Machines are comprised of at least one
				multi-force member. The difference between a Frame and Machine lies in the
				fact that a Machine uses moving parts to transmit forces and a Frame has no
				moving parts. Once you have introduced these definitions, it is good to show
				multiple examples of each interspersed with some that are not frames or
				machines. Bring as many examples to the class as you can find. Thereafter, talk
				about the techniques for solving for the forces acting on a frame comprised of
				members connected with frictionless pins (no moment transfer). This type of
				frame is used in order to be able to solve some simple structures and reinforce
				the concept. Introduce the concept of “pulling the pins” on this type of frame,
				drawing isolated free body diagrams of each of the members, and drawing in the
				equal and opposite pin reactions on each part of the free body diagram. If able,
				have several different Frames and Machines connected by pins that can be
				physically disassembled to use on the board or as hands-on physical models to
				hand around class. At this point we can solve for the forces acting on the
				structure using the equations of equilibrium on each of the member parts.</p>
				
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-d-pic(b).png" class="const-img"><br>
				

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
                    <td>Frames and Machines</td>
                    <td>As many as you want</td>
                    <td>varies</td>
                    <td>Pick as many or as few as you would like. There are very few restrictions.</td>
                  </tr>
                  <tr>
                    <td>Model of pliers</td>
                    <td>1</td>
                    <td>$15; 30 minutes</td>
                    <td>The pliers model should be made of durable
						material and have magnets attached to its back
						so that It can be fixed to the board. It also
						should have the ability to be disassembled and
						isolated to solve for the pin forces. </td>
                  </tr>
                </table><br>
            </div>
                        
            <p class="title">Application</p>
                   
            <p class="application"><strong><u>In Class:</u></strong> One of the simpler examples to demonstrate the concepts discussed
				above is a pair of pliers. It is fairly simple to build and one can usually find a few
				pairs of old pliers that could be disassembled to hand around the classroom.
				Start with the example on the board with the pliers together and ask the
				students to classify it. Then ask how we would determine the force acting on
				the bolt given this free body diagram. Since we could not, use our new
				technique of pulling the pins to determine all the forces acting on each of the
				members. Taking the pliers apart on the board simplifies the time required to
				draw a Free body diagram, but also leads to better understanding of the equal
				and opposite forces involved in the pin connections. Then look at one of the
				parts of the pliers and apply the equations of equilibrium to it and solve for the
				forces at the pin connection and at the bolt. After this example, more complex
				frames can be tackled with ease.</p><br>
            
            <img src="${pageContext.request.contextPath}/_view/categories/statics/stat-d-pic(c).png" class="const-img"><br>
			<img src="${pageContext.request.contextPath}/_view/categories/statics/stat-d-pic(d).png" class="const-img"><br>				
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

