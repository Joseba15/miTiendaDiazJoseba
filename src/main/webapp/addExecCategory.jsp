<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.jacaranda.crud.CRUDCategory"%>
<%@page import="com.jacaranda.model.Category"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Execution Category</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<%

	 CRUDCategory ca = new CRUDCategory();

	 String name = request.getParameter("name");
   	 String description=request.getParameter("description");

   	 Category c  = new Category(name,description);
   	 
   	 if(name!=null && description!=null){
   		 if(ca.existCategory(name)) {
		ca.addCategory(c);
	}
		}
%>
<div class="container">
		<div class="starter-template" align="center">
			<h1>Add Category</h1>
			<section class="form">
			
				<h4>Categoria añadida con éxito</h4>
				<a href="listCategory.jsp">
				<button type="button" class="btn btn-dark" >Volver a la lista</button>
				</a>
		
			</section>
		</div>
</div>

</body>
</html>