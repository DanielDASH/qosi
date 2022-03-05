<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.queroquest.bean.*"%>
<%@page import="com.queroquest.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meu cadastro</title>
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
        <%
			Database nome = new Database();
			String user = session.getAttribute("usuario").toString();
			out.print("<label id='user'>Usuário: "+nome.getNome(user)+"</label>");
		%>
       </div>
    </nav>

	<div align="center" style="padding-top: 100px; display: flex; flex-direction: row; justify-content: center;">
        <div width="250px" style="padding: 75px; background-color: rgba(5,124,196,255); border-radius:12px; color: white;">
            <h2>Alterar nome</h2>
            <form action="altNome.jsp">
            	Nome: 
            	<input type="text" name="novoNome" required placeholder="Novo nome">
            	<br><br>
            	<input type="submit" value="Alterar" style="background-color: white; border: none; padding: 3px; border-radius: 4px; font-size: 12pt">
            	<a href="MeusDados.jsp" style="text-decoration: none; color: black; background-color: white;" id="cad">Voltar</a>
            </form>  
        </div>
    </div>

</body>
</html>