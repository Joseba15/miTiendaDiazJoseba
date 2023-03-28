<%@page import="com.jacaranda.crud.CRUDMedicine"%>
<%@page import="com.jacaranda.model.Medicine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Medicine</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	CRUDMedicine me = new CRUDMedicine();	
	me.delMedicine(id);
%>
<div class="container">
		<div class="starter-template" align="center">
			<h1>Borrado Medicina</h1>
			<section class="form">
			
				<h4>Medicina borrada con éxito</h4>
				<a href="listMedicine.jsp">
				<button type="button" class="btn btn-dark" >Volver a la lista</button>
				</a>
		
			</section>
		</div>
	</div>

</body>
</html>