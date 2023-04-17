<%@page import="com.jacaranda.crud.CRUDCategory"%>
<%@page import="com.jacaranda.model.Carrito"%>
<%@page import="com.jacaranda.model.Medicine"%>
<%@page import="com.jacaranda.model.User"%>
<%@page import="com.jacaranda.model.MedicineCarrito"%>
<%@page import="com.jacaranda.model.UserMedicine"%>
<%@page import="com.jacaranda.crud.CRUDUser"%>
<%@page import="com.jacaranda.crud.CRUDMedicine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<% Carrito carrito = (Carrito) session.getAttribute("carrito");
   CRUDUser cu = new CRUDUser();
   CRUDMedicine cm = new CRUDMedicine();
   
	User u = cu.getUser((String)session.getAttribute("username"));
		
	for( MedicineCarrito m: carrito.getListaCarrito() ) {
		Medicine med = m.getMedicamento() ;
				
		UserMedicine um = new UserMedicine(med, u,  m.getFechaCompra(), m.getPrecio() , m.getCantidad());
		cm.updateArticleStock(med.getId() , um.getAmount());
		carrito.addUserMedicine(um);
		
			
	}
	
	carrito.vaciarLista();
	

%>
<div class="container">
		<div class="starter-template" align="center">
			<h1>Comprar Carrito </h1>
			<section class="form">
			
				<h4>Compra realizada con exito!!</h4>
				<a href="listMedicine.jsp">
					<button type="button" class="btn btn-dark" >Volver a la lista</button>
				</a>
		
			</section>
		</div>
	</div>
</body>
</html>