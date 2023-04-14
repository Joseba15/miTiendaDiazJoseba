<%@page import="com.jacaranda.crud.CRUDCategory"%>
<%@page import="com.jacaranda.model.Medicine"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Category</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">

</head>
<body>
<%
	int idCategory = Integer.parseInt(request.getParameter("id"));
	CRUDCategory ca = new CRUDCategory();
	ca.delCategory(idCategory);
%>
<div class="container">
		<div class="starter-template" align="center">
			<h1>Borrado Categoria</h1>
			<section class="form">
			
				<h4>Categoria borrada con éxito</h4>
				<a href="listCategory.jsp">
				<button type="button" class="btn btn-dark" >Volver a la lista</button>
				</a>
		
			</section>
		</div>
	</div>
</body>
</html>