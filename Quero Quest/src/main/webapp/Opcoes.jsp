<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.queroquest.bean.*"%>
<%@page import="com.queroquest.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bem vindo!</title>
<link rel="stylesheet" href="css/nav.css">
</head>
<body style="background-image: url(img/backgroundQQ.png); background-size:1140px; background-repeat:no-repeat">
<%
if (session.getAttribute("usuario") == null) {
	response.sendRedirect("Login.jsp");
}
%>
	<nav align="right" >
       <div>
        <img  id="img" src="img/logo QQ.png">
        <a href="sobre.jsp">Sobre</a>
        <a href="logout.jsp">Sair</a>
        <a href="Bemvindo.jsp" id="cad" style="font-size:13px; font-size: 13pt;" >Voltar</a>
        <%
			Database nome = new Database();
			String user = session.getAttribute("usuario").toString();
			out.print("<label id='user'>Usuário: "+nome.getNome(user)+"</label>");
		%>
       </div>
    </nav>

	<div align="center" style="padding-top: 100px; display: flex; flex-direction: row; justify-content: center;">
        <div style="padding:100px; background-color: rgba(5,124,196,255); border-radius:12px">
            <a href="MeusDados.jsp" style="color:white; text-decoration: none;">Meus dados cadastrais</a>
        </div>
        &nbsp;&nbsp;
        <div style="padding:100px; background-color: rgba(5,124,196,255); border-radius:12px">
            <a href="minhasQuestoes.jsp" style="color:white; text-decoration: none;">Minhas questões cadastradas</a>
        </div>
        <br><br>
    </div>

</body>
</html>