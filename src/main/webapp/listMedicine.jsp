<%@page import="com.jacaranda.bbdd.ConnectionBD"%>
<%@page import="com.jacaranda.crud.CRUDMedicine"%>
<%@page import="com.jacaranda.model.Medicine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	
	String isSession = (String) session.getAttribute("login");
	String user = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Medicine</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
	<div>
		<a href="logout.jsp">
		<% if(isSession=="True"){%>
			<button id="singlebutton" name="singlebutton"
				class="btn btn-primary" style="float: right;">LogOut
			</button>
		<%}%>								
		</a>
	</div>	
	<table class="table">	
		<thead>
		<tr>
			<th scope="col">Name</th>
			<th scope="col">Description</th>
			<th scope="col">Stock</th>
			<th scope="col">Price</th>
			<th scope="col">Category Description</th>
		</tr>
		</thead>
		<tbody>
		
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
	  </tbody>
	
	</table>
</div>
</body>
</html>