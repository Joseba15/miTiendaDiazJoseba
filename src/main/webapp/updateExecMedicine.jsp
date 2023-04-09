<%@page import="com.jacaranda.crud.CRUDMedicine"%>
<%@page import="com.jacaranda.crud.CRUDCategory"%>
<%@page import="com.jacaranda.model.Medicine"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Execution Medicine</title>
</head>
<body>
<% 

	 CRUDMedicine me = new CRUDMedicine();
	 CRUDCategory ca = new CRUDCategory();

	 String name = request.getParameter("name");
   	 String description=request.getParameter("description");
   	 Integer stock = Integer.valueOf( request.getParameter("stock"));
   	 Double price = Double.valueOf( request.getParameter("price"));
   	 Integer category = Integer.valueOf( request.getParameter("category"));

   	 Medicine m = new Medicine(name,description,stock,price,ca.getCategoria(category));
   	 
   	 me.updateMedicine(m);
   		
   	%>
 <div class="container">
		<div class="starter-template" align="center">
			<h1>Update Medicina</h1>
			<section class="form">
			
				<h4>Medicina actualizada con éxito</h4>
				<a href="listMedicine.jsp">
				<button type="button" class="btn btn-dark" >Volver a la lista</button>
				</a>
		
			</section>
		</div>
	</div>
</body>
</html>