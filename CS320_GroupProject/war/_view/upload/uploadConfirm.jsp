<!DOCTYPE html>
<%@ page import= "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <link href="${pageContext.request.contextPath}/_view/css/form.css" type="text/css" rel="stylesheet">
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
        
        <div class="container">
          <form action="${pageContext.request.contextPath}/upload" method="post">
          <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="projectName">Project Name:</label></strong>
            </div>
            <div class="col-75">
              <p>${projectName}</p>
            </div>
          </div>
           <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="engPrinciple">Engineering Principle:</label></strong>
            </div>
            <div class="col-75">
              <p>${category}</p>
            </div>
           </div>
           <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="keywords">Keywords:</label></strong>
            </div>
            <div class="col-75">
				<%= request.getParameterValues("keyword") %>
            </div>
          </div>  
          <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="author">Submitted By:</label></strong>
            </div>
            <div class="col-75">
                 <p>${authors}</p>
            </div>
           </div>
          <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="modelDesc">Model Description:</label></strong>
            </div>
            <div class="col-75">
              <p>${modelDesc}</p>
            </div>
          </div>
           <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="engineeringPrinciple">Engineering Principle:</label></strong>
            </div>
           <div class="col-75">
             <p>${engineeringPrinciple}</p>
           </div>
          </div>
           <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="reqItems">Required Items:</label></strong>
            </div>
           <div class="col-75">
                <table style="overflow-x: auto;">
                    <tr>
                      <th>Item</th>
                      <th>Qty</th>
                      <th>Cost and Build Time</th>
                      <th>Description/Details</th>
                    </tr>
                    <tr>
                      <td><p>${item}</p></td>
                      <td><p>${quantity}</p></td>
                      <td><p>${costAndBuild}</p></td>
                      <td><p>${desc}</p></td>
                    </tr>
                    <tr>
                     
                    </tr>
                    <tr>
                      
                    </tr>
                    <tr>
                      
                    </tr>
                    <tr>
                      
                    </tr>
                    <tr>
                      
                    </tr>
                    <tr>
                      
                    </tr>
                    <tr>
                      
                    </tr>
                    <tr>
                      
                    </tr>
                    <tr>
                      
                    </tr>
                    
                 </table>
           </div>
          </div>
          <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="beforeClass">Before Class:</label></strong>
            </div>
           <div class="col-75">
               <p>${beforeClass}</p>
           </div>
          </div>
          <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="inClass">In Class:</label></strong>
            </div>
           <div class="col-75">
              <p>${inClass}</p>
           </div>
          </div>
          <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="other">Other:</label></strong>
            </div>
           <div class="col-75">
              <p>${other}</p>
           </div>
          </div>
          <div class="row"> 
            <input type="submit" value="Confirm">
          </div>
          </form>
        </div>
        
    </content>    
        
    <footer>
        <div class="footer login-footer">
            <p>Tyler Kautz, Trevor Swann, Jacob Stambaugh. Copyright &copy; 2019. Some Rights Reserved.</p>
        </div>
    </footer>
    
</body>    
</html>