<%@page import="com.jacaranda.crud.CRUDMedicine"%>
<%@page import="com.jacaranda.crud.CRUDCategory"%>
<%@page import="com.jacaranda.model.Medicine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Execution Medicine</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
   	 
   	 if(name!=null && description!=null && stock!=null && price !=null && category!=null ){
   		 if(me.existMedicine(name)) {
		me.addMedicine(m);
	}
		}
%>
 <div class="container">
		<div class="starter-template" align="center">
			<h1>Add Medicina</h1>
			<section class="form">
			
				<h4>Medicina añadida con éxito</h4>
				<a href="listMedicine.jsp">
				<button type="button" class="btn btn-dark" >Volver a la lista</button>
				</a>
		
			</section>
		</div>
	</div>
</body>
</html>