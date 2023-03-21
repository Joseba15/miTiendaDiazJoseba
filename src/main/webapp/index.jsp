<%@page import="com.jacaranda.bbdd.ConnectionBD"%>
<%@page import="com.jacaranda.crud.CRUDMedicine"%>
<%@page import="com.jacaranda.model.Medicine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="padre">
	<table border="1">	
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Stock</th>
			<th>Price</th>
			<th>Category Description</th>
		</tr>
	<% 
		for(Medicine me: CRUDMedicine.getMedicines() ){
			
				%>
				<tr>
					<td><%=me.getName()%></td>
					<td> <%=me.getDescription()%></td>
					<td> <%=me.getStock() %> </td>
					<td> <%=me.getPrice()%> </td>
					<td> <%=me.getCategoria().getDescription() %></td>
				</tr>
				<%
			}
			
	
	
	%>
	</table>
</div>
</body>
</html>