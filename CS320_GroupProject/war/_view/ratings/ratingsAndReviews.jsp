<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:500,100,300,700,400);
div.stars{
  width: 270px;
  display: inline-block;
}
 
input.star{
  display: none;
}
 
label.star {
  float: right;
  padding: 10px;
  font-size: 36px;
  color: #000000;
  transition: all .2s;
}
 
input.star:checked ~ label.star:before {
  content:'\f005';
  color: #86c232;
  transition: all .25s;
}
 
label.star:hover{
  transform: rotate(-15deg) scale(1.3);
}
 
label.star:before{
  content:'\f006';
  font-family: FontAwesome;
}
 
input.star:checked ~ .rev-box{
  height: 125px;
  overflow: visible;
}
</style>

<head>
    <title>Write a Review | Physical Model </title>
    <!--Website CSS-->
    <link rel="icon" href="${pageContext.request.contextPath}/_view/img/tab.png">
    <link href="${pageContext.request.contextPath}/_view/css/collapse-1.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/application.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/ratings.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/fontawesome.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/all.css" type="text/css" rel="stylesheet">
    <!-- Icon CSS -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <a class="search-btn" href="${pageContext.request.contextPath}/search"><i class="fas fa-search"></i></a>
    </div>

<content>
    <div class="content">
    	<div id="form-content">
	        <h2><i class="fas fa-edit"></i></h2>
	 		<h2>Write A Review</h2>
	 		<form action="${pageContext.request.contextPath}/reviews" method="POST">
		    	<p id="project-title">Project Title :</p>
		    	<select id="select-menu" name="projectTitle">
					<option value="volvo">Volvo</option>
					<option value="saab">Saab</option>
					<option value="fiat">Fiat</option>
					<option value="audi">Audi</option>
				</select>
		    
		    	<p id="title">Review Description :</p>
		    	<input type="text" name="reviewDesc" class="gen-form-input" placeholder="Review Title...">
		    
		    	<p id="stars-title">Overall Review :</p>
		   		
		   		<div class="stars">
				  <input class="star star-5" id="star-5" type="radio" name="star" value="5"/>
				  <label class="star star-5" for="star-5"></label>
				  <input class="star star-4" id="star-4" type="radio" name="star" value="4"/>
				  <label class="star star-4" for="star-4"></label>
				  <input class="star star-3" id="star-3" type="radio" name="star" value="3"/>
				  <label class="star star-3" for="star-3"></label>
				  <input class="star star-2" id="star-2" type="radio" name="star" value="2"/>
				  <label class="star star-2" for="star-2"></label>
				  <input class="star star-1" id="star-1" type="radio" name="star" value="1"/>
				  <label class="star star-1" for="star-1"></label>
				
				</div>
					
					
				<p id="review-title">Write Your Review :</p>
				<textarea rows="20" maxlength="500" name="review" placeholder="What did you like or dislike about this project? What could be improved?"></textarea><br>
				
				<input id="submit" type="submit" value="Submit Review">
			</form>
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
