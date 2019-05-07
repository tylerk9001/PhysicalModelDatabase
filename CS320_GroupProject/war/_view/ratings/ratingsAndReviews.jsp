<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>

.content-1 {
	margin: 0 350px 0 350px;
}

h2 {
	text-align: center;
}

h2 i {
	color: #86c232;
}

#project-title {
	margin-bottom: 6px;
	text-decoration: underline;
	font-weight: bold;
}

#select-menu {
	direction: ltr;
	font-family: 'Gotham';
	font-size: 15px;
    width: 99.4%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

#title {
	margin-bottom: -10px;
	text-decoration: underline;
	font-weight: bold;
}

#stars-title {
	margin-bottom: 2px;
	text-decoration: underline;
	font-weight: bold;
}

#review-title {
	margin-bottom: -10px;
	text-decoration: underline;
	font-weight: bold;
}

.gen-form-input {
  direction:ltr;
  font-family: 'Gotham';
  color: black;
  font-size: 15px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  margin-top: 20px;
  width: 97.5%;
}
 
textarea {
  font-family: 'Gotham';
  color: black;
  font-size: 15px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  margin-top: 20px;
}

#submit {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

#submit:hover {
  background-color: #45a049;
}

.search-footer {
   	position: fixed;
 	bottom: 0;
}

@media print {
	.search-footer {
		display: block;
    	position: fixed;
  		bottom: 0;
	}


fieldset, label { margin: 0; padding: 0; }

/****** Style Star Rating Widget *****/

.rating { 
  border: none;
  float: left;
}

.rating > input { display: none; } 
.rating > label:before { 
  margin: 5px;
  font-size: 1.25em;
  font-family: FontAwesome;
  display: inline-block;
  content: "\f005";
}

.rating > .half:before { 
  content: "\f089";
  position: absolute;
}

.rating > label { 
  color: #ddd; 
 float: right; 
}

/***** CSS Magic to Highlight Stars on Hover *****/

.rating > input:checked ~ label, /* show gold star when clicked */
.rating:not(:checked) > label:hover, /* hover current star */
.rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

.rating > input:checked + label:hover, /* hover current star when changing rating */
.rating > input:checked ~ label:hover,
.rating > label:hover ~ input:checked ~ label, /* lighten current selection */
.rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 
}
</style>

<head>
    <title>Write a Review | Physical Model </title>
    <!--Website CSS-->
    <link rel="icon" href="${pageContext.request.contextPath}/_view/img/tab.png">
    <link href="${pageContext.request.contextPath}/_view/css/collapse-1.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/application.css" type="text/css" rel="stylesheet">
    <!-- Icon CSS -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
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
        <a class="search-btn" href="${pageContext.request.contextPath}/search"><i class="fas fa-search"></i></a>
    </div>

<content>
    <div class="content">
    	<div id="form-content">
	        <h2><i class="fas fa-edit"></i></h2>
	 		<h2>Write A Review</h2>
	 		<form action="${pageContext.request.contextPath}/reviews" method="POST">
		    	<p id="project-title">Project Title :</p>
		    	<select id="select-menu" name="cars">
					<option value="volvo">Volvo</option>
					<option value="saab">Saab</option>
					<option value="fiat">Fiat</option>
					<option value="audi">Audi</option>
				</select>
		    
		    	<p id="title">Review Description :</p>
		    	<input type="text" class="gen-form-input" placeholder="Review Title...">
		    
		    	<p id="stars-title">Overall Review:</p>
		   		
		   		<fieldset class="rating">
				    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="5 stars"></label>
				    <input type="radio" id="star4half" name="rating" value="4.5" /><label class="half" for="star4half" title="4.5 stars"></label>
				    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="4 stars"></label>
				    <input type="radio" id="star3half" name="rating" value="3.5" /><label class="half" for="star3half" title="3.5 stars"></label>
				    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
				    <input type="radio" id="star2half" name="rating" value="2.5" /><label class="half" for="star2half" title="2.5 stars"></label>
				    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="2 stars"></label>
				    <input type="radio" id="star1half" name="rating" value="1.5" /><label class="half" for="star1half" title="1.5 stars"></label>
				    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
				    <input type="radio" id="starhalf" name="rating" value=".5" /><label class="half" for="starhalf" title="0.5 stars"></label>
				</fieldset>
					
					
				<p id="review-title">Write Your Review:</p>
				<textarea rows="20" cols="115" maxlength="500" placeholder="What did you like or dislike about this project? What could be improved?"></textarea><br>
				
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
