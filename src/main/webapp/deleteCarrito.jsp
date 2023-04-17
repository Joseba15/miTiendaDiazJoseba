<%@page import="com.jacaranda.model.Carrito"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Carrito carrito = (Carrito) session.getAttribute("carrito");
carrito.vaciarLista();
response.sendRedirect("carrito.jsp");
%>

</body>
</html>