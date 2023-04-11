<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.jacaranda.crud.CRUDUser"%>
<%@page import="com.jacaranda.model.User"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign up</title>
</head>
<body>
<%
	CRUDUser cu = new CRUDUser();

	LocalDate birthday= LocalDate.parse(String.valueOf(request.getParameter("birthday")));;
	String nombreusuario= request.getParameter("username");;
	String contrasena = request.getParameter("password");
	String nombre=request.getParameter("name");
	String apellido= request.getParameter("lastname");
	String genero =(request.getParameter("gender"));

	if((nombreusuario!= null || !nombreusuario.isEmpty()) && (contrasena!=null || !contrasena.isEmpty() )&& (nombre !=null || !nombre.isEmpty()) 
			&& (apellido!=null || !apellido.isEmpty())
			&& birthday!=null && (genero!=null || !genero.isEmpty())){
		
		if (cu.getUser(nombreusuario)==null ) {
			CRUDUser.saveUser(nombreusuario,CRUDUser.getMD5(contrasena),nombre,apellido,birthday,genero);
			
			
		}
	}

%>
<div class="container">
		<div class="starter-template" align="center">
			<h1>Sign up</h1>
			<section class="form">
			
				<h4>Usuario creado con éxito</h4>
				<a href="index.jsp">
				<button type="button" class="btn btn-dark" >Volver al login</button>
				</a>
		
			</section>
		</div>
	</div>

</body>
</html>