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
    

    <content>
        
        <div class="container">
         <form action="${pageContext.request.contextPath}/dashboard" method="post">
      
              <strong><label class="upload" for="projectName">Project Name:</label></strong>
              <p>${projectName}</p>
           
              <strong><label class="upload" for="engPrinciple">Engineering Principle:</label></strong>
              <p>${category}</p>
            
              <strong><label class="upload" for="keywords">Keywords:</label></strong>
           
				 <%
				  String[] keyword = request.getParameterValues("keywords[]");
				   for (int i = 0; i < keyword.length; i++) {
				      out.print("<P>" + keyword[i] + "</p>");
				   }
				%>
          
              <strong><label class="upload" for="author">Submitted By:</label></strong>
           
                 <%
				  String[] author = request.getParameterValues("authors[]");
				   for (int i = 0; i < author.length; i++) {
				      out.print("<P>" + author[i] + "</p>");
				   }
				%>
           
              <strong><label class="upload" for="modelDesc">Model Description:</label></strong>
           
              <p>${modelDesc}</p>
            
              <strong><label class="upload" for="engineeringPrinciple">Engineering Principle:</label></strong>
            
             <p>${engineeringPrinciple}</p>
          
             <label class="upload" for="reqItems">Required Items:</label>
            
                <table style="overflow-x: auto;">
                	<tr>
                      <th>Item</th>
                      <th>Qty</th>
                      <th>Cost and Build Time</th>
                      <th>Description/Details</th>
                    </tr>
                   <%
				  String[] items = request.getParameterValues("item[]");
                  String[] quantity = request.getParameterValues("quantity[]");
                  String[] costAndBuild = request.getParameterValues("costAndBuild[]");
                  String[] desc = request.getParameterValues("desc[]");
				   for (int i = 0; i < items.length; i++) {
					   if (items[i] != null && !items[i].equals("")) {
						  out.print("<tr>");
						  out.print("<td>" + items[i] + "</td>");
					      out.print("<td>" + quantity[i] + "</td>");
					      out.print("<td>" + costAndBuild[i] + "</td>");
					      out.print("<td>" + desc[i] + "</td>");
					      out.print("</tr>");
				   	}
				   }
				%>
                 </table>
           
              <strong><label class="upload" for="beforeClass">Before Class:</label></strong>
            
               <p>${beforeClass}</p>
          
          
              <strong><label class="upload" for="inClass">In Class:</label></strong>
            
              <p>${inClass}</p>
           
              <strong><label class="upload" for="other">Other:</label></strong>
            
              <p>${other}</p>
           
            <input type="submit" value="Confirm">
          
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