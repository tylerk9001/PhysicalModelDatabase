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
	margin-bottom: 4px;
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

.star-rating {
	text-align: left; 
    display: inline-block;
    padding: 25px;
}

.star-rating input[type=radio] {
    display: none;
}

.star-rating label {
    color: #bbb;
    font-size: 16px;
    padding: 0;
    cursor: pointer;
}

.star-rating label:hover,
.star-rating label:hover ~ label,
.star-rating input[type=radio]:checked ~ label {
    color: #86c232;
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
  direction:ltr;
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
}
</style>

<head>
    <title>Write a Review | Physical Model </title>
    <!--Website CSS-->
    <link rel="icon" href="${pageContext.request.contextPath}/_view/img/tab.png">
    <link href="${pageContext.request.contextPath}/_view/css/collapse-1.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/_view/css/application.css" type="text/css" rel="stylesheet">
    <!-- Icon CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<% if(session.getAttribute("email") == null)
		response.sendRedirect("/project/login");
		%>

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
	    <div class="content-1">
	   	 	<h2><i class="fas fa-edit"></i></h2>
	 		<h2>Write A Review</h2>
	 			
		    <div class="star-rating">
		    	<p id="project-title">: Project Title</p>
		    	<select id="select-menu" name="cars">
					<option value="volvo">Volvo</option>
					<option value="saab">Saab</option>
					<option value="fiat">Fiat</option>
					<option value="audi">Audi</option>
				</select>
		    
		    	<p id="title">: Review Description</p>
		    	<input type="text" class="gen-form-input" placeholder="Review Title...">
		    
		    	<p id="stars-title">: Overall review</p>
		   		<form action="${pageContext.request.contextPath}/reviews" method="POST">
		   			
					<input id="star-5" type="radio" name="rating" value="star-5">
					<label for="star-5">
							<i class="active fa fa-star" aria-hidden="true"></i>
					</label>
					<input id="star-4" type="radio" name="rating" value="star-4">
					<label for="star-4">
							<i class="active fa fa-star" aria-hidden="true"></i>
					</label>
					<input id="star-3" type="radio" name="rating" value="star-3">
					<label for="star-3">
							<i class="active fa fa-star" aria-hidden="true"></i>
					</label>
					<input id="star-2" type="radio" name="rating" value="star-2">
					<label for="star-2">
							<i class="active fa fa-star" aria-hidden="true"></i>
					</label>
					<input id="star-1" type="radio" name="rating" value="star-1">
					<label for="star-1">
							<i class="active fa fa-star" aria-hidden="true"></i>
					</label><br>
					
					<p id="review-title">: Write your review</p>
					<textarea rows="20" cols="130" maxlength="500" placeholder="What did you like or dislike about this project? What could be improved?"></textarea><br>
					
					<input id="submit" type="submit" value="Submit Review">
				</form>
			</div>
	    </div>
	</content>

<footer>
    <div class="footer search-footer">
        <p>Tyler Kautz, Trevor Swann, Jacob Stambaugh. Copyright &copy; 2019. Some Rights Reserved.</p>
    </div>
</footer>
</body>
</html>
