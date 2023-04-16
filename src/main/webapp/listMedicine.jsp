<%@page import="com.jacaranda.bbdd.ConnectionBD"%>
<%@page import="com.jacaranda.crud.CRUDMedicine"%>
<%@page import="com.jacaranda.model.Medicine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	
	String isSession = (String) session.getAttribute("login");
	String user = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");
	String isAdmin = (String) session.getAttribute("admin");
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
		<a href="listCategory.jsp">
			<button id="singlebutton" name="singlebutton"
				class="btn btn-dark" style="float: left; padding-left: 10px">Category List
			</button>
		</a>
	</div>
	<div>
		<% if(isSession=="True"){%>
		<a href="logout.jsp">
			<button id="singlebutton" name="singlebutton"
				class="btn btn-outline-dark" style="float: right;">LogOut
			</button>
		<%}%>								
		</a>
	</div>	
	<div>
		<% if(isSession=="False"){%>
		<a href="logout.jsp">
			<button id="singlebutton" name="singlebutton"
				class="btn btn-dark" style="float: right;">log In
			</button>
		<%}%>								
		</a>
	</div>
	<div>
		<a href="carrito.jsp">
				<button id="singlebutton" name="singlebutton"
					class="btn btn-outline-dark" style="margin-left: 20px;">
					<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
 					 	<path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
					</svg>
				</button>						
		</a>
	</div>
	
	<table class="table">	
		<thead>
		<tr>
			<th scope="col">Name</th>
			<th scope="col">Description</th>
			<th scope="col">Stock</th>
			<th scope="col">Price</th>
			<th scope="col">Category description</th>
			<th scope="col"></th>
			<th scope="col"></th>
			<th scope="col">
										
				<% if(isAdmin=="True"){%>
				<a href="addMedicine.jsp">
					<button  name="singlebutton" class="btn btn-success">Add Medicine</button>				
				</a>
				<%} %>
			</th>
				
		</tr>
		</thead>
		<tbody>
		
	<% 
		CRUDMedicine cme = new CRUDMedicine();

		for(Medicine me: cme.getMedicines() ){

				%>
				<tr>
					<td><%=me.getName()%></td>
					<td> <%=me.getDescription()%></td>
					<td> <%=me.getStock() %> </td>
					<td> <%=me.getPrice()%> </td>
					<td> <%=me.getCategoria().getDescription() %></td>
					<!-- boton de actualizar -->
					<td>
						<% if(isAdmin=="True"){%>
						<a href="updateMedicine.jsp?id=<%=me.getId()%>">
							<button type="button" class="btn btn-warning">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
	  								<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
	  								<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
								</svg>
							</button>
						</a>
						<%} %>
					</td>
					<!-- boton de borrado -->
					<td>
						<% if(isAdmin=="True"){%>
						<a href="deleteMedicine.jsp?id=<%=me.getId()%>" >
							<button type="button" class="btn btn-danger">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
							  		<path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
								</svg>
							</button>
						</a>
						<%} %>
					</td>
					<td>
						<form action='addToCarrito.jsp' method='post' >
		    					<input type='text' hidden name='price' value='<%=me.getPrice()%>'>
		                        <label>Amount</label> 
		                        <input type='number' min='1' max='<%=me.getStock()%>' value='1' name='amount'>
							<button type='submit' name='code' value='<%=me.getId()%>'>Add</button>
						</form>
					</td>
				</tr>
				<%
			}
			
	
	
	%>
	  </tbody>
	
	</table>

</body>
</html>