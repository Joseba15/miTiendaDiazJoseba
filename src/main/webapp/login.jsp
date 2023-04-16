<%@page import="com.jacaranda.crud.CRUDUser"%>
<%@page import="com.jacaranda.model.User"%>
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
<% String contrasena = request.getParameter("password");
   String nombreusuario=request.getParameter("username");
   Carrito carrito = new Carrito();

   CRUDUser user = new CRUDUser();
   HttpSession sesion = request.getSession();
   
   if(nombreusuario !=null && contrasena !=null){
   	if(user.getUser(nombreusuario) != null && user.getUser(nombreusuario).getUsername().equals(nombreusuario)  && 
   			user.getUser(nombreusuario).getPassword().equals(contrasena)){
           	if(user.getUser(nombreusuario).isAdmin()==true){
				sesion.setAttribute("login", "True");
	        	sesion.setAttribute("username", nombreusuario);
	        	sesion.setAttribute("password",contrasena);
				sesion.setAttribute("admin", "True");	
	         	session.setAttribute("carrito", carrito);

	        	
		   		response.sendRedirect("listMedicine.jsp");
           		
           	}else{
    			sesion.setAttribute("login", "True");
            	sesion.setAttribute("username", nombreusuario);
            	sesion.setAttribute("password",contrasena);
				sesion.setAttribute("admin", "False");	
	         	session.setAttribute("carrito", carrito);


       		response.sendRedirect("listMedicine.jsp");
           	}
   	}else{
   	response.sendRedirect("LoginError");
   		
   	}
   }
%>
</body>
</html>