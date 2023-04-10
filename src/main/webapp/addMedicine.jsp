<%@page import="com.jacaranda.crud.CRUDCategory"%>
<%@page import="com.jacaranda.model.Medicine"%>
<%@page import="com.jacaranda.model.Category"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Medicine</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
		<div class="starter-template" align="center">
			<h4>Add Medicine</h4>
			<form style="width: 38rem;" action="addExecMedicine.jsp" method="post">
			
			  <div class="form-group">
			    <label >Name Medicine</label>
			    <input type="text" class="form-control" name="name" id="exampleInputEmail1" >
			  </div>
			  
			  <div class="form-group">
			    <label >Description</label>
			    <input type="text" class="form-control" name="description" id="exampleInputDescription">
			  </div>
			  
			  <div class="form-group">
			    <label>Stock</label>
			    <input type="number" class="form-control" name="stock" id="exampleInputStock" >
			  </div>
			  
			  <div class="form-group">
			    <label>Price</label>
			    <input type="number" step="0.01"  class="form-control" name="price" id="exampleInputPrice" >
			  </div>
			  
			  <%CRUDCategory cc = new CRUDCategory();%>
			  <div class="form-group">
			    <label>Category</label>
			    <select name="category" >
					<% List<Category> listCategoria = cc.getCategories(); 
					   for(Category c: listCategoria){ %>
						<option value="<%=c.getId()%>"> <%=c.getName() %></option>
					<%}%>
					
				</select> 
			  </div>
			  
			  <br>
			  <button type="submit" class="btn btn-primary">Add Medicine</button>
			  <a href="listMedicine.jsp">
			  	<button type="button" class="btn btn-primary">Go Back</button>
			  </a>
			  
			</form>
		</div>
	</div>
</body>
</html>