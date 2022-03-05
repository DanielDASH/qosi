<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.queroquest.bean.*"%>
<%@page import="com.queroquest.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bem vindo</title>
<link rel="stylesheet" href="css/nav.css">
</head>
<body style="background-image: url(img/backgroundQQ.png); background-size:1140px; background-repeat:no-repeat">
	<%
	
	if (session.getAttribute("usuario") == null) {
		response.sendRedirect("Login.jsp");
	}
	%>
	<nav>
		<div>
			<img id="img" src="img/logo QQ.png"> <a href="sobre.jsp">Sobre</a>
			<a href="logout.jsp">Sair</a>
			<%
			Database nome = new Database();
			String user = session.getAttribute("usuario").toString();
			out.print("<label id='user'>Usuário: "+nome.getNome(user)+"</label>");
			%>
		</div>
	</nav>

	<div align="center"
		style="padding-top: 100px; display: flex; flex-direction: row; justify-content: center;">
		<div
			style="padding: 100px; background-color: rgba(5, 124, 196, 255); border-radius: 12px">
			<a href="Questao.jsp" style="color: white; text-decoration: none;">Cadastrar</a>
		</div>
		&nbsp;&nbsp;
		<div
			style="padding: 100px; background-color: rgba(5, 124, 196, 255); border-radius: 12px">
			<a href="RQuestao.jsp" style="color: white; text-decoration: none;">Resolver</a>
		</div>
		&nbsp;&nbsp;
		<div
			style="padding: 100px; background-color: rgba(5, 124, 196, 255); border-radius: 12px">
			<a href="Opcoes.jsp" style="color: white; text-decoration: none;">Opções</a>
		</div>
	</div>

</body>
</html>