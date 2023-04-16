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
</head>
<body>
<%
	Carrito carrito = (Carrito) session.getAttribute("carrito");
	CRUDMedicine cmed = new CRUDMedicine();
	
	Integer cantidad = Integer.valueOf(request.getParameter("amount"));
	Integer codigo = Integer.valueOf(request.getParameter("code"));
	Medicine med = cmed.getMedicine(codigo);
	
	
	Double precio = Double.valueOf(request.getParameter("price"));
	
	
	
	if( med.getStock()>0 && med.getStock() >= cantidad){
		carrito.addArticulo( med, cantidad, LocalDateTime.now(),precio); 
		ServletContext context = this.getServletContext(); 
		RequestDispatcher dispatcher = context.getRequestDispatcher("listMedicine.jsp");
	}else{%>


	<%}%>

</body>
</html>