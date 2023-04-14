<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Category</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
		<div class="starter-template" align="center">
			<h4>Add Category</h4>
			<form style="width: 38rem;" action="addExecCategory.jsp" method="post">
			
			  <div class="form-group">
			    <label >Name Category</label>
			    <input type="text" class="form-control" name="name" id="exampleInputEmail1" >
			  </div>
			  
			  <div class="form-group">
			    <label >Description</label>
			    <input type="text" class="form-control" name="description" id="exampleInputDescription">
			  </div>
			  <br>
			  <button type="submit" class="btn btn-primary">Add Category</button>
			  <a href="listCategory.jsp">
			  	<button type="button" class="btn btn-primary">Go Back</button>
			  </a>
			  
			</form>
		</div>
	</div>

</body>
</html>