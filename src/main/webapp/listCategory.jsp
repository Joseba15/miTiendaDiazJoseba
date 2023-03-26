<%@page import="com.jacaranda.bbdd.ConnectionBD"%>
<%@page import="com.jacaranda.crud.CRUDCategory"%>
<%@page import="com.jacaranda.model.Category"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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