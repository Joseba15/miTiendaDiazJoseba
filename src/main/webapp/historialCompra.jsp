<%@page import="com.jacaranda.crud.CRUDUser"%>
<%@page import="com.jacaranda.model.Carrito"%>
<%@page import="com.jacaranda.model.User"%>
<%@page import="com.jacaranda.model.UserMedicine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Historial Compra</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">

</head>
<body>
<%
CRUDUser cu = new CRUDUser();
User u = cu.getUser((String)session.getAttribute("username"));
Carrito carrito = (Carrito) session.getAttribute("carrito");

%>

<table class="table">
			
		<thead>
		<tr>
			<th scope="col">Medicine</th>
			<th scope="col">Username</th>
			<th scope="col">Amount</th>	
			<th scope="col">Price</th>
			<th scope="col">Buy Date</th>			
						
		</tr>
		</thead>
		<tbody>
		<% 

		for(UserMedicine um : carrito.getListaCarrito() ){

				%>
				<tr>
					<td><%=me.getMedicamento().getName()%></td>
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