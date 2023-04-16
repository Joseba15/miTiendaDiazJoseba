<%@page import="com.jacaranda.model.Carrito"%>
<%@page import="com.jacaranda.model.MedicineCarrito"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrito</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<table class="table">	
		<thead>
		<tr>
			<th scope="col">Name</th>
			<th scope="col">Amount</th>
			<th scope="col">Price</th>		
		</tr>
		</thead>
		<tbody>
		<% Carrito carrito = (Carrito) session.getAttribute("carrito");
		   Double precioTotal = 0.0; 
		%>
		
		<% 

		for(MedicineCarrito me : carrito.getListaCarrito() ){

				%>
				<tr>
					<td><%=me.getIdMedicamento().getName()%></td>
					<td><%=me.getCantidad()%></td>
					<td><%=me.getPrecio() %></td>	
				</tr>
				<%
			}
			
	
	
		%>
	  </tbody>
	
	</table>


</body>
</html>