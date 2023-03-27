<%@page import="com.jacaranda.bbdd.ConnectionBD"%>
<%@page import="com.jacaranda.crud.CRUDCategory"%>
<%@page import="com.jacaranda.model.Category"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<div class="padre">
	<table border="1">	
		<tr>
			<th>Name</th>
			<th>Description</th>
		</tr>
	<% 
		for(Category me: CRUDCategory.getCategories() ){

				%>
				<tr>
					<td><%=me.getName()%></td>
					<td> <%=me.getDescription()%></td>

				</tr>
				<%
			}
			
	
	
	%>
	</table>
</div>
</body>
</html>