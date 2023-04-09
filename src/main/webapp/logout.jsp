<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HttpSession sesion = request.getSession();
	
	sesion.setAttribute("login", "False");
	sesion.removeAttribute("username");
	sesion.removeAttribute("password");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<div class="container">
		<div class="starter-template" align="center">
			<h1>Login</h1>
			<section class="form">
			<form action="index.jsp" method="post">
				<h4>Cerrado Sesion con exito</h4>
				<a href="index.jsp"><button type="button" class="btn btn-dark" >Volver al Login</button></a>
				
			</form>
			</section>
		</div>
	</div>
</body>
</html>