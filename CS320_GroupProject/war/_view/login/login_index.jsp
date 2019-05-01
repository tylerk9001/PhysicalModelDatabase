<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

<style>
	
	.login-container {
    width: auto;
    height: 100%;
    background-color: #000000;
	}	

.login-form {
	padding-left: 20px;
}

.login-box {
    width: 280px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    padding-top: 10px;
    padding-bottom: 10px;
    color: white;
    background-color: #222629;
    box-shadow: 5px 5px 10px black;
}

.login-box h1 {
    text-align: center;
    font-size: 30px;
    border-bottom: 4px solid #86C232;
    margin-bottom: 15px;
    padding-top: 5px;
    padding-bottom: 5px;
    margin-left: 15px;
    margin-right: 15px;
}

.login-box h2 {
    text-align: center;
    font-size: 18px;
    border-bottom: 2px solid #86C232;
    padding-top: 5px;
    padding-bottom: 5px;
    margin-left: 75px;
    margin-right: 75px;
}



.textbox {
	color: black;
    width: 80%;
    overflow: hidden;
    font-size: 12px;
    padding: 5px;
    margin: 8px;
    border: 1px solid #86C232;
}

.btn {
    width: 85%;
    background: none;
    border: 2px solid #86C232;
    padding: 5px;
    font-size: 18px;
    margin: 12px;
    cursor: pointer;
    color: white;
}

.btn:hover {
    background: #6B6E70;
}

.login-footer {
    position: absolute;
    top: 95%;
}
</style>

<head>
    <title>Login | Physical Model </title>
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
                  <form action="${pageContext.request.contextPath}/welcome">
                      <a href="${pageContext.request.contextPath}/signup" class="button">Sign Up</a>
                  </form>
               </div>
            </div>
        </div>
    </nav>
    
    <div class="search-box">
        <a class="search-btn" href="${pageContext.request.contextPath}/search"><i class="fas fa-search"></i></a>
    </div>
      

	  <div class="login-container">
	        <div class="login-box">
	            <h1>Login</h1>
					<form action="${pageContext.servletContext.contextPath}/login" class="login-form" method="post">
						<%Boolean invalidLogin = (Boolean)request.getSession().getAttribute("login_failed");
							if (invalidLogin != null) {%> <p>Invalid email and/or password</p><%}%>						
						<h2>Email:</h2>
						<i class="fa fa-user"></i><input type="text" class="textbox" name="email" size="12" value="${model.email}" placeholder="Email..." required/>
						<h2>Password:</h2>
						<i class="fa fa-lock"></i><input type="password" class="textbox" name="password" size="12" value="${model.password}" placeholder="Password..." /><br>
						<input type="Submit" class="btn" name="submit" value="Login">
					</form>
	    	</div>
	    </div>
	        
    <footer>
        <div class="footer login-footer">
            <p>Tyler Kautz, Trevor Swann, Jacob Stambaugh. Copyright &copy; 2019. Some Rights Reserved.</p>
        </div>
    </footer>
    
</body>    
</html>