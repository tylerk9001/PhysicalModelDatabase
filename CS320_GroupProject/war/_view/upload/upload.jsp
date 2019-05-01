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
            </div>
        </div>
    </nav>
    
    <div class="search-box">
        <a class="search-btn" href="${pageContext.request.contextPath}/search"><i class="fas fa-search"></i></a>
    </div>

    <content>
        
        <div class="container">
        <!--
          <form action="${pageContext.request.contextPath}/upload" method="post">
          <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="projectName">Project Name:</label></strong>
            </div>
            <div class="col-75">
              <input type="text" class="gen-form-input" id="projectName" name="projectName" placeholder="Enter project name..." required>
            </div>
          </div>
           <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="engPrinciple">Engineering Principle:</label></strong>
            </div>
            <div class="col-75">
              <select id="engPrinciple" name="categories" required>
                <option selected disabled>Select Principle...</option>
                <option value="Construction">Construction</option>
                <option value="Dynamics">Dynamics</option>
                <option value="Fluids">Fluids</option>
                <option value="Heat Transfer">Heat Transfer</option>
                <option value="Material Science">Material Science</option>
                <option value="Mechanics">Mechanics</option>
                <option value="Statics">Statics</option>
                <option value="Thermodynamics">Thermodynamics</option>
                </select>
            </div>
           </div>
           <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="keywords">Keywords:</label></strong>
            </div>
            <div class="col-75">
                <input type="text" class="keywords gen-form-input" name="keyword" placeholder="Keyword..." required>
                <input type="text" class="keywords gen-form-input" name="keyword" placeholder="Keyword...">
                <input type="text" class="keywords gen-form-input" name="keyword" placeholder="Keyword...">
                <input type="text" class="keywords gen-form-input" name="keyword" placeholder="Keyword...">
                <input type="text" class="keywords gen-form-input" name="keyword" placeholder="Keyword...">
            </div>
          </div>  
          <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="author">Submitted By:</label></strong>
            </div>
            <div class="col-75">
                 <input type="text" class="author gen-form-input" name="author" placeholder="Author name..." required>
                 <input type="text" class="author gen-form-input" name="author" placeholder="Author name...">
                 <input type="text" class="author gen-form-input" name="author" placeholder="Author name...">
                 <input type="text" class="author gen-form-input" name="author" placeholder="Author name...">
                 <input type="text" class="author gen-form-input upload" name="author" placeholder="Author name...">
            </div>
           </div>
          <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="modelDesc">Model Description:</label></strong>
            </div>
            <div class="col-75">
              <textarea id="modelDesc" name="modelDesc" class="upload" placeholder="Model description..." style="height:200px" required></textarea>
            </div>
          </div>
           <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="engineeringPrinciple">Engineering Principle:</label></strong>
            </div>
           <div class="col-75">
              <textarea id="engineeringPrinciple" name="engineeringPrinciple" placeholder="Engineering principle..." style="height:200px" required></textarea>
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
                      <td><input type="text" class="itemName input-size" name="item1" placeholder="Item name..." required></td>
                      <td><input type="text" class="qty input-size" name="quantity1" placeholder="Quantity..." required></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild1" placeholder="Cost and Build time..." required></td>
                      <td><input type="text" class="desc input-size" name="desc1" placeholder="Description/details..." required></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item1" placeholder="Item name..."></td>
                      <td><input type="text" class="qty input-size" name="quantity1" placeholder="Quantity..."></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild1" placeholder="Cost and Build time..."></td>
                      <td><input type="text" class="desc input-size" name="desc1" placeholder="Description/details..."></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item1" placeholder="Item name..."></td>
                      <td><input type="text" class="qty input-size" name="quantity1" placeholder="Quantity..."></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild1" placeholder="Cost and Build time..."></td>
                      <td><input type="text" class="desc input-size" name="desc1" placeholder="Description/details..."></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item1" placeholder="Item name..."></td>
                      <td><input type="text" class="qty input-size" name="quantity1" placeholder="Quantity..."></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild1" placeholder="Cost and Build time..."></td>
                      <td><input type="text" class="desc input-size" name="desc1" placeholder="Description/details..."></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item1" placeholder="Item name..."></td>
                      <td><input type="text" class="qty input-size" name="quantity1" placeholder="Quantity..."></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild1" placeholder="Cost and Build time..."></td>
                      <td><input type="text" class="desc input-size" name="desc1" placeholder="Description/details..."></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item1" placeholder="Item name..."></td>
                      <td><input type="text" class="qty input-size" name="quantity1" placeholder="Quantity..."></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild1" placeholder="Cost and Build time..."></td>
                      <td><input type="text" class="desc input-size" name="desc1" placeholder="Description/details..."></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item1" placeholder="Item name..."></td>
                      <td><input type="text" class="qty input-size" name="quantity1" placeholder="Quantity..."></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild1" placeholder="Cost and Build time..."></td>
                      <td><input type="text" class="desc input-size" name="desc1" placeholder="Description/details..."></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item1" placeholder="Item name..."></td>
                      <td><input type="text" class="qty input-size" name="quantity1" placeholder="Quantity..."></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild1" placeholder="Cost and Build time..."></td>
                      <td><input type="text" class="desc input-size" name="desc1" placeholder="Description/details..."></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item1" placeholder="Item name..."></td>
                      <td><input type="text" class="qty input-size" name="quantity1" placeholder="Quantity..."></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild1" placeholder="Cost and Build time..."></td>
                      <td><input type="text" class="desc input-size" name="desc1" placeholder="Description/details..."></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item1" placeholder="Item name..."></td>
                      <td><input type="text" class="qty input-size" name="quantity1" placeholder="Quantity..."></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild1" placeholder="Cost and Build time..."></td>
                      <td><input type="text" class="desc input-size" name="desc1" placeholder="Description/details..."></td>
                    </tr>
                    
                 </table>
           </div>
          </div>
          <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="beforeClass">Before Class:</label></strong>
            </div>
           <div class="col-75">
              <textarea id="beforeClass" name="beforeClass" placeholder="Before class..." style="height:200px" required></textarea>
           </div>
          </div>
          <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="inClass">In Class:</label></strong>
            </div>
           <div class="col-75">
              <textarea id="inClass" name="inClass" placeholder="In class..." style="height:200px" required></textarea>
           </div>
          </div>
          <div class="row">
            <div class="col-25">
              <strong><label class="upload" for="other">Other:</label></strong>
            </div>
           <div class="col-75">
              <textarea id="other" name="other" placeholder="Any additional information..." style="height:200px"></textarea>
           </div>
          </div>
          <div class="row">
            <input type="submit" value="Submit">
          </div>
          </form>
          -->
          
          <form action="${pageContext.request.contextPath}/upload" method="post" >
              <strong><label class="upload" for="projectName">Project Name:</label></strong>
              <input type="text" class="gen-form-input" id="projectName" name="projectName" placeholder="Enter project name..." required>
            
              <strong><label class="upload" for="engPrinciple">Engineering Principle:</label></strong>
              <select id="engPrinciple" name="categories" required>
                <option selected disabled>Select Principle...</option>
                <option value="Construction">Construction</option>
                <option value="Dynamics">Dynamics</option>
                <option value="Fluids">Fluids</option>
                <option value="Heat Transfer">Heat Transfer</option>
                <option value="Material Science">Material Science</option>
                <option value="Mechanics">Mechanics</option>
                <option value="Statics">Statics</option>
                <option value="Thermodynamics">Thermodynamics</option>
                </select>
          
           
              <strong><label class="upload" for="keywords">Keywords:</label></strong>
              <script src="${pageContext.request.contextPath}/_view/upload/keywordsInput.js" language="Javascript" type="text/javascript"></script>
			     <div id="keywordInput">
			          Keyword 1<br><input type="text" class="keywords gen-form-input" name="keywords[]" placeholder="Keyword..." required>
			     </div>
                <input id="newAuthorButton" type="button" value="Add Keyword" onClick="aaddInput('keywordInput');"><br>
           
              <strong><label class="upload" for="author">Submitted By:</label></strong>
              <script src="${pageContext.request.contextPath}/_view/upload/addInput.js" language="Javascript" type="text/javascript"></script>
			     <div id="dynamicInput">
			          Author 1<br><input type="text" class="author gen-form-input" name="authors[]" placeholder="Author name..." required>
			     </div>
			     <input id="newAuthorButton" type="button" value="Add Author" onClick="addInput('dynamicInput');"><br>
				    
            
              <strong><label class="upload" for="modelDesc">Model Description:</label></strong>
              <textarea id="modelDesc" name="modelDesc" class="upload" placeholder="Model description..." style="height:200px" required></textarea>
          
              <strong><label class="upload" for="engineeringPrinciple">Engineering Principle:</label></strong>
              <textarea id="engineeringPrinciple" name="engineeringPrinciple" placeholder="Engineering principle..." style="height:200px" required></textarea>
           
              <strong><label class="upload" for="reqItems">Required Items:</label></strong>
                <table style="overflow-x: auto;">
                    <tr>
                      <th>Item</th>
                      <th>Qty</th>
                      <th>Cost and Build Time</th>
                      <th>Description/Details</th>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item[]" placeholder="Item name..." required></td>
                      <td><input type="text" class="qty input-size" name="quantity[]" placeholder="Quantity..." required></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild[]" placeholder="Cost and Build time..." required></td>
                      <td><input type="text" class="desc input-size" name="desc[]" placeholder="Description/details..." required></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item[]" placeholder="Item name..." ></td>
                      <td><input type="text" class="qty input-size" name="quantity[]" placeholder="Quantity..." ></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild[]" placeholder="Cost and Build time..." ></td>
                      <td><input type="text" class="desc input-size" name="desc[]" placeholder="Description/details..." ></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item[]" placeholder="Item name..." ></td>
                      <td><input type="text" class="qty input-size" name="quantity[]" placeholder="Quantity..." ></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild[]" placeholder="Cost and Build time..." ></td>
                      <td><input type="text" class="desc input-size" name="desc[]" placeholder="Description/details..." ></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item[]" placeholder="Item name..." ></td>
                      <td><input type="text" class="qty input-size" name="quantity[]" placeholder="Quantity..." ></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild[]" placeholder="Cost and Build time..." ></td>
                      <td><input type="text" class="desc input-size" name="desc[]" placeholder="Description/details..." ></td>
                    </tr>
                   <tr>
                      <td><input type="text" class="itemName input-size" name="item[]" placeholder="Item name..." ></td>
                      <td><input type="text" class="qty input-size" name="quantity[]" placeholder="Quantity..." ></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild[]" placeholder="Cost and Build time..." ></td>
                      <td><input type="text" class="desc input-size" name="desc[]" placeholder="Description/details..." ></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item[]" placeholder="Item name..." ></td>
                      <td><input type="text" class="qty input-size" name="quantity[]" placeholder="Quantity..." ></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild[]" placeholder="Cost and Build time..." ></td>
                      <td><input type="text" class="desc input-size" name="desc[]" placeholder="Description/details..." ></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item[]" placeholder="Item name..." ></td>
                      <td><input type="text" class="qty input-size" name="quantity[]" placeholder="Quantity..." ></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild[]" placeholder="Cost and Build time..." ></td>
                      <td><input type="text" class="desc input-size" name="desc[]" placeholder="Description/details..." ></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item[]" placeholder="Item name..." ></td>
                      <td><input type="text" class="qty input-size" name="quantity[]" placeholder="Quantity..." ></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild[]" placeholder="Cost and Build time..." ></td>
                      <td><input type="text" class="desc input-size" name="desc[]" placeholder="Description/details..." ></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item[]" placeholder="Item name..." ></td>
                      <td><input type="text" class="qty input-size" name="quantity[]" placeholder="Quantity..." ></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild[]" placeholder="Cost and Build time..." ></td>
                      <td><input type="text" class="desc input-size" name="desc[]" placeholder="Description/details..." ></td>
                    </tr>
                    <tr>
                      <td><input type="text" class="itemName input-size" name="item[]" placeholder="Item name..." ></td>
                      <td><input type="text" class="qty input-size" name="quantity[]" placeholder="Quantity..." ></td>
                      <td><input type="text" class="costAndBuild input-size" name="costAndBuild[]" placeholder="Cost and Build time..." ></td>
                      <td><input type="text" class="desc input-size" name="desc[]" placeholder="Description/details..." ></td>
                    </tr>
                 </table>
         
              <strong><label class="upload" for="beforeClass">Before Class:</label></strong>
              <textarea id="beforeClass" name="beforeClass" placeholder="Before class..." style="height:200px" required></textarea>
          
              <strong><label class="upload" for="inClass">In Class:</label></strong>
              <textarea id="inClass" name="inClass" placeholder="In class..." style="height:200px" required></textarea>
          
              <strong><label class="upload" for="other">Other:</label></strong>
              <textarea id="other" name="other" placeholder="Any additional information..." style="height:200px"></textarea>
          
          	   
              <input type="submit" value="Submit">
         
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