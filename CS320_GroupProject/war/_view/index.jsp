<!DOCTYPE html>
<html>



<head>
    <title>Home | Physical Model </title>
    <!--Website CSS-->
    <link rel="icon" href="${pageContext.request.contextPath}/_view/img/tab.png">
    <link href="${pageContext.request.contextPath}/_view/css/collapse-1.css" rel="stylesheet">
    <!-- Icon CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" 
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" 
    crossorigin="anonymous">
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
	                <a href="#construction">Construction</a>
	                <a href="#dynamics">Dynamics</a>
	                <a href="#fluids">Fluids</a>
	                <a href="#heattran">Heat Transfer</a>
	                <a href="#matsci">Material Science</a>
	                <a href="#mechanics">Mechanics</a>
	                <a href="#statics">Statics</a>
	                <a href="#thermodynamics">Thermodynamics</a>
                    
	                
	                <div class="access-btns">
	                    <a href="${pageContext.request.contextPath}/login" class="button">Login</a>
	                    <a href="${pageContext.request.contextPath}/signup" class="button">Sign Up</a>
	                </div>
	            </div>            
	        </div>
	    </nav>
	    
	
	    <div class="search-box">
	        <input class="search-txt" type="text" placeholder="Search..." name="search">
	        <a class="search-btn" href="#"><i class="fas fa-search"></i></a>
	    </div>
	    
	    <content>
	        <div class="showcase">
	            <div class="header">
	                <p>Civil Engineering Projects</p>
	                <a href="#construction">Learn More</a>
	            </div>
	        </div>
	
	        <div class="content">
	            <div class="categories-box-1">
	                <div id="box-1" class="boxes">
	                    <section id="construction">
	                        <h3>Construction</h3>
	                        <ul>
	                            <li><a href="${pageContext.request.contextPath}/const-a">Crane Rigging Angles</a></li>
	                            <li><a href="${pageContext.request.contextPath}/const-b">Excavation and Earthwork Pressure</a></li>
	                        </ul>
	                    </section>
	                </div>
	                <div id="box-2" class="boxes">
	                    <section id="dynamics">
	                        <h3>Dynamics</h3>
	                        <ul>
	                            <li><a href="${pageContext.request.contextPath}/dyn-a">Collision and Deformation: When Worlds Collide</a></li>
	                            <li><a href="${pageContext.request.contextPath}/dyn-b">General Planar Motion: Armor Attack</a></li>
	                            <li><a href="${pageContext.request.contextPath}/dyn-c">General Planar Motion: The Helicopter</a></li>
	                            <li><a href="${pageContext.request.contextPath}/dyn-d">General Planar Motion: The Oil Rig</a></li>
	                            <li><a href="${pageContext.request.contextPath}/dyn-e">General Planar Motion: The Slider</a></li>
	                            <li><a href="${pageContext.request.contextPath}/dyn-f">General Planar Motion: The Tank</a></li>
	                            <li><a href="${pageContext.request.contextPath}/dyn-g">Projectile Motion</a></li>
	                            <li><a href="${pageContext.request.contextPath}/dyn-h">Rectilinear Motion</a></li>
	                            <li><a href="${pageContext.request.contextPath}/dyn-i">Relative Motion: Choo Choo Train</a></li>
	                            <li><a href="${pageContext.request.contextPath}/dyn-j">Rotation: No Slip Wheel</a></li>
	                            <li><a href="${pageContext.request.contextPath}/dyn-k">Rotation and Moment of Inertia: A Day at the Races</a></li>
	                            <li><a href="${pageContext.request.contextPath}/dyn-l">Rotational Kinematics: The Ferris Wheel</a></li>
	                        </ul>
	                    </section>
	                </div>
	                <div id="box-3" class="boxes">
	                    <section id="fluids">
	                    <h3>Fluids</h3>
	                        <ul>
	                            <li><a href="${pageContext.request.contextPath}/flu-a">Fluid Properties</a></li>
	                            <li><a href="${pageContext.request.contextPath}/flu-b">Head Loss</a></li>
	                            <li><a href="${pageContext.request.contextPath}/flu-c">Hydrostatics</a></li>
	                            <li><a href="${pageContext.request.contextPath}/flu-d">Internal Flow and Losses</a></li>
	                            <li><a href="${pageContext.request.contextPath}/flu-e">Laminar and Turbulent Flow: Smoke Tunnel</a></li>
	                            <li><a href="${pageContext.request.contextPath}/flu-f">The Fish Tank</a></li>
	                        </ul>
	                    </section>
	                </div>
	                <div id="box-4" class="boxes">
	                    <section id="heattran">
	                        <h3>Heat Transfer</h3>
	                        <ul>
	                            <li><a href="${pageContext.request.contextPath}/heat-a">Conservation of Energy: Ice Melting Blocks</a></li>
	                            <li><a href="${pageContext.request.contextPath}/heat-b">Radiant Energy: Parabolic Concentrator</a></li>
	                        </ul>
	                    </section>
	                </div>
	            </div>
	
	        <div class="categories-box-2">
	            <div id="box-5" class="boxes">
	                <section id="matsci">
	                    <h3>Material Science</h3>
	                    <ul>
	                        <li><a href="${pageContext.request.contextPath}/matsci-a">Deformation: Bending a Knife Blade</a></li>
	                        <li><a href="${pageContext.request.contextPath}/matsci-b">Deformation: Shape Memory Alloys</a></li>
	                        <li><a href="${pageContext.request.contextPath}/matsci-c">Primary and Secondary Creep: Creepy Plastic</a></li>
	                    </ul>
	                </section>
	            </div>
	            <div id="box-6" class="boxes">
	                <section id="mechanics">
	                    <h3>Mechanics</h3>
	                    <ul>
	                        <li><a href="${pageContext.request.contextPath}/mech-a">Axial Strain</a></li>
	                        <li><a href="${pageContext.request.contextPath}/mech-b">Beam Bending: Foam Beam</a></li>
	                        <li><a href="${pageContext.request.contextPath}/mech-c">Design of Axial Members</a></li>
	                        <li><a href="${pageContext.request.contextPath}/mech-d">Elastic vs. Plastic</a></li>
	                        <li><a href="${pageContext.request.contextPath}/mech-e">Load Conditions: Rubber Shapes</a></li>
	                        <li><a href="${pageContext.request.contextPath}/mech-f">Paper Stress Concentrations</a></li>
	                        <li><a href="${pageContext.request.contextPath}/mech-g">Shear Demonstrator</a></li>
	                        <li><a href="${pageContext.request.contextPath}/mech-h">Stress/Strain: A Strainge Transformation</a></li>
	                        <li><a href="${pageContext.request.contextPath}/mech-i">Stress/Strain Transformation: The Big Book of Shear</a></li>
	                        <li><a href="${pageContext.request.contextPath}/mech-j">Thermal Expansion</a></li>
	                        <li><a href="${pageContext.request.contextPath}/mech-k">Thin Wall Pressure Vessels - Balloons</a></li>
	                        <li><a href="${pageContext.request.contextPath}/mech-l">Thin Wall Pressure Vessels - Hot Dogs</a></li>
	                        <li><a href="${pageContext.request.contextPath}/mech-m">Thin Wall Pressure Vessels</a>
	                        <li><a href="${pageContext.request.contextPath}/mech-n">Torsion: Tower of Torque</a></li>
	                    </ul>
	                </section>
	            </div>
	            <div id="box-7" class="boxes">
	                <section id="statics">
	                    <h3>Statics</h3>
	                    <ul>
	                        <li><a href="${pageContext.request.contextPath}/stat-a">Concentrated Cable Loads: The Ski Gondola</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-b">Coulomb Friction: Fun with Friction</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-c">Force Vector: Amazing Weight Loss Program</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-d">Frame Demos</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-e">Friction: Belt Friction</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-f">Loading: Distributed Student Loading</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-g">Mechanical Advantage: Pulleys - Equilibrator Challenge</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-h">Mechanical Advantage: The Torque Tester</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-i">Moments: Lug Wrench vs. Breaker Bar</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-j">Moments: Moments and Couples</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-k">Moments: The Persuader</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-l">Moments: Varignon's I-Beam</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-m">Truss Design: K'NEX Trusses</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-n">Truss Design: Ruler Truss</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-o">Truss Design: Wacky Fun Noodle</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-p">Truss Design: Wooden Truss 2D</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-q">Truss Design: Wooden Truss 3D</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-r">Uniformly Loaded Cables</a></li>
	                        <li><a href="${pageContext.request.contextPath}/stat-s">Zero Force Members</a></li>
	                    </ul>
	                </section>
	            </div>
	            <section id="thermodynamics">
	                <div id="box-8" class="boxes">
	                    <h3>Thermodynamics</h3>
	                    <ul>
	                        <li><a href="${pageContext.request.contextPath}/therm-a">2nd Law - Direction</a></li>
	                        <li><a href="${pageContext.request.contextPath}/therm-b">2nd Law - Losses</a></li>
	                        <li><a href="${pageContext.request.contextPath}/therm-c">Boiling Point: The Hand Boiler</a></li>
	                        <li><a href="${pageContext.request.contextPath}/therm-d">Boiling Properties</a></li>
	                        <li><a href="${pageContext.request.contextPath}/therm-e">Closed vs. Open Systems</a></li>
	                        <li><a href="${pageContext.request.contextPath}/therm-f">Conservation of Mass: Molasses Madness</a></li>
	                        <li><a href="${pageContext.request.contextPath}/therm-g">Density and Buoyancy: The Lava Lamp</a></li>
	                        <li><a href="${pageContext.request.contextPath}/therm-h">Otto Cycle: Engine Knock</a></li>
	                        <li><a href="${pageContext.request.contextPath}/therm-i">Psychrometry</a></li>
	                        <li><a href="${pageContext.request.contextPath}/therm-j">Total Energy - Fan Box</a></li>
	                        <li><a href="${pageContext.request.contextPath}/therm-k">Total Energy</a></li>
	                        <li><a href="${pageContext.request.contextPath}/therm-l">Vapor Power Cycle: The Little Engine That Could</a></li>
	                    </ul>
	                </div>
	            </section>
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
