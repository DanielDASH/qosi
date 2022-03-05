<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.queroquest.bean.*"%>
<%@page import="com.queroquest.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/nav.css">
</head>
<body style="background-image: url(img/backgroundQQ.png); background-size:1140px; background-repeat:no-repeat">
<nav>
	<div>
		<img id="img" src="img/logo QQ.png"> <a href="sobre.jsp">Sobre</a>
		<label id="user"><a href="Login.jsp">Login</a></label>
		<label id="user"><a href="Cadastro.jsp">Cadastrar</a></label>
	</div>
</nav>

<div align="center">
	<h2 style="margin-top: 100px; background-color:rgba(5,124,196,255); color:white; width:300px; border-radius: 8px; text-align:center;">Redefinir senha</h2>
	<div  style="width: 800px; ">
		<form action="redefinir">
			<label>Digite seu email: </label>
			<br>
			<input type="email" name="email" placeholder="Email" required>
			<br><br>
			<input type="submit" value="Consultar email" id="log">
		</form>
		
	</div>	
</div>

	
</body>
</html>