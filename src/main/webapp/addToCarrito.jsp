<%@page import="com.jacaranda.model.MedicineCarrito"%>
<%@page import="com.jacaranda.crud.CRUDMedicine"%>
<%@page import="com.jacaranda.model.Medicine"%>
<%@page import="com.jacaranda.model.Carrito"%>
<%@page import="java.time.LocalDateTime"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<%
	Carrito carrito = (Carrito) session.getAttribute("carrito");
	CRUDMedicine cmed = new CRUDMedicine();
	boolean isMedicine=false; 
	
	Integer cantidad = Integer.valueOf(request.getParameter("amount"));
	Integer codigo = Integer.valueOf(request.getParameter("code"));
	Double precio = Double.valueOf(request.getParameter("price"));
	Medicine med = cmed.getMedicine(codigo);
	Double precioTotal= precio*cantidad;
	
	
	for (MedicineCarrito mc : carrito.getListaCarrito()){
		if(mc.getMedicamento().getId()==codigo){
			precioTotal=precioTotal+precio;
			mc.setCantidad(mc.getCantidad()+cantidad);
			mc.setPrecio(mc.getPrecio()*cantidad);
			
			isMedicine=true;
			response.sendRedirect("listMedicine.jsp");

		}
			
		
	}
	if(isMedicine==false){
		
		
		
		if( med.getStock()>0 && med.getStock() >= cantidad){
			carrito.addArticle(med, cantidad,  LocalDateTime.now(), precioTotal);
			ServletContext context = this.getServletContext(); 
			response.sendRedirect("listMedicine.jsp");
		}else{%>
			<div class="container">
			<div class="starter-template" align="center">
				<h1>Error 404 </h1>
				<section class="form">
				
					<h4>El medicamento selecionado no tiene mas stock!!</h4>
					<a href="listMedicine.jsp">
						<button type="button" class="btn btn-dark" >Volver a la lista</button>
					</a>
			
				</section>
			</div>
			</div>
			
		<% }
		
		
	}
	
%>
</body>
</html>