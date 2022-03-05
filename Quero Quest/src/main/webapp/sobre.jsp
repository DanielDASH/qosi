<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.queroquest.bean.*"%>
<%@page import="com.queroquest.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/nav.css">
<title>Sobre</title>
</head>
<body style="background-image: url(img/backgroundQQ.png); background-size:1140px; background-repeat:no-repeat">
<%
if (session.getAttribute("usuario") == null){
	out.print("<nav align='right'>");
    out.print("<div>");
    out.print("<img  id='img' src='img/logo QQ.png'>");
    out.print("<a href='sobre.jsp'>Sobre</a>");
    out.print("<label id='user'><a href='Login.jsp'>Login</a></label>");
    out.print("<label id='user'><a href='Cadastro.jsp'>Cadastrar</a></label>");
    out.print("</div>");
    out.print("</nav>");
} else{
	Database nome = new Database();
	String user = session.getAttribute("usuario").toString();
	out.print("<nav align='right'>");
    out.print("<div>");
    out.print("<img  id='img' src='img/logo QQ.png'>");
    out.print("<a href='sobre.jsp'>Sobre</a>");
    out.print("<a href='logout.jsp'>Sair</a>");
    out.print("<a href='Bemvindo.jsp' id='cad' style='font-size:13px; font-size: 13pt;' >Voltar</a>");
    out.print("<label id='user'>Usuário: "+nome.getNome(user)+"</label>");
    out.print("</div>");
    out.print("</nav>");
}
%>
<div align="center">
	<div style="width: 800px;">
    
    	<h2>Seja bem vindo, somos a equipe QueroQuest.</h2>
    	<p>O QueroQuest é uma aplicação educacional para auxiliar no aprendizado. Tem por objetivo o cadastro e a realização de questões,
    	 voltadas para as mais diversas áreas do conhecimento. Com o este software é possivel criar um banco de questões compartilhado entre usuários.</p>
    
    </div>
    
</div>
    
    

</body>
</html>