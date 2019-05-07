<!DOCTYPE html>
<html>

<style>
	td, th, tr {
		border: 1px #dddddd solid;
	}
	
	
</style>

<head>
    <title>Upload | Physical Model </title>
    <link rel="icon" href="${pageContext.request.contextPath}/_view/img/tab.png">
    <!--Website CSS-->
    <link href="${pageContext.request.contextPath}/_view/css/collapse-1.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/uploadForm.css" type="text/css" rel="stylesheet">
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
        <a class="search-btn" href="${pageContext.request.contextPath}/search"><i class="fas fa-search"></i></a>
    </div>
    
    <div class="container">
        <!--
       	<form action="${pageContext.request.contextPath}/ratingReview" method="post" >
	    <div class="row">
	            <div class="col-25">
	              <strong><label class="review" for="reviewDesc">Model Description:</label></strong>
	            </div>
	            <div class="col-75">
	              <textarea id="reviewDesc" name="reviewDesc" class="upload" placeholder="Review Description..." style="height:500px" required></textarea>
	            </div>
	          </div>
	          
	          <div class="row">
            <input type="submit" value="Submit">
          </div>
	     
	    <footer>
	        <div class="footer login-footer">
	            <p>Tyler Kautz, Trevor Swann, Jacob Stambaugh. Copyright &copy; 2019. Some Rights Reserved.</p>
	        </div>
	    </footer>
	   	-->
	   	 <form action="${pageContext.request.contextPath}/dashboard" method="post" >
	   	 <strong><label class="review" for="reviewDesc">Review Description:</label></strong>
              <textarea id="reviewDesc" name="reviewDesc" class="review" placeholder="Review description..." style="height:500px" required></textarea>
    
         <input type="submit" value="Submit">
   		</form>
    
    </div>
</body>    
</html>