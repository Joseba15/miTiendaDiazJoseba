<%@page import="com.jacaranda.crud.CRUDMedicine"%>
<%@page import="com.jacaranda.model.Medicine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Medicine</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	CRUDMedicine me = new CRUDMedicine();
	Medicine m=  me.getMedicine(id);
%>
	<div class="container">
		<div class="starter-template" align="center">
			<h4>Update Medicine</h4>
			<form style="width: 38rem;" action="updateExecMedicine.jsp" method="post">
			
			  <div class="form-group">
			    <label >Name Medicine</label>
			    <input type="text" class="form-control" name="name" id="exampleInputEmail1" value="<%=m.getName()%>">
			  </div>
			  
			  <div class="form-group">
			    <label >Description</label>
			    <input type="text" class="form-control" name="description" id="exampleInputDescription" value="<%=m.getDescription()%>">
			  </div>
			  
			   <div class="form-group">
			    <label>Stock</label>
			    <input type="number" class="form-control" name="stock" id="exampleInputStock" value="<%=m.getStock()%>">
			  </div>
			  
			   <div class="form-group">
			    <label>Price</label>
			    <input type="number" step="0.01"  class="form-control" name="price" id="exampleInputPrice" value="<%=m.getPrice()%>">
			  </div>
			  
			   <div class="form-group">
			    <label>Category</label>
			    <input type="number" class="form-control" name="category" id="exampleInputCategory" value="<%=m.getCategoria().getId()%>">
			  </div>
			  <br>
			  <button type="submit" class="btn btn-primary">Update</button>
			</form>
		</div>
	</div>
</body>
</html>