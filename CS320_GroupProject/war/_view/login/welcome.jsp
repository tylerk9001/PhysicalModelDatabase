<!DOCTYPE html>
<html>

<style>
	.content-container {
		padding: 10px;
	}
	.container1-color {
		background-color: lightgray;
		padding: 10px;
		padding-left: 15px;
	}
	
	.access-btn {
    float: right;
    line-height: 60px;
}

	.button a {
	    color: #86C232;
	}
	
</style>

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
	                <a href="${pageContext.request.contextPath}/index" class="border-nav"><i class="fas fa-home"></i> Home</a>
	                <a href="#construction"><i class="fas fa-tachometer-alt"></i>  Dashboard</a>
	                <a href="#dynamics"><i class="fas fa-file-alt"></i> Projects</a>
	             
	             
	             	<div class="access-btn">
                    	<a href="${pageContext.request.contextPath}/index">Log Out <i class="fas fa-sign-out-alt"></i></a>
                	</div>
	            </div>            
	        </div>
	        
	        
	    </nav>
	    
	    
	     <div class="content-container">
         <div class="container1-color">
            <div class="user-info">
                <div class="user-message">
                    <h1>Welcome, Tyler</h1>
                </div>
          
                  <div class="user-name">
                      <p><i class="fas fa-users"></i> : Tyler Kautz</p>
                      <p><i class="fas fa-envelope"></i> : bkautz@ycp.edu</p>
                      <br>
                  </div>
                    
                <div class="user-projects">
                    <hr>
                    <h2>My Projects</h2>
                    <p><i>Currently, you do not have any projects created.</i></p>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
                <div class="user-favorites">
                    <hr>
                    <h2>My Favorites</h2>
                    <p><i>Currently, you do not have any projects favorited.</i></p>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
                <div class="user-reviews">
                    <hr>
                    <h2>My Reviews</h2>
                    <p><i>Currently, you have not given any reviews.</i></p>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
            </div>
        </div>
    </div>
	   
	
	    <footer>
	        <div class="footer">
	            <p>Tyler Kautz, Trevor Swann, Jacob Stambaugh. Copyright &copy; 2019. Some Rights Reserved.</p>
	        </div>
	    </footer>

</body>
</html>
