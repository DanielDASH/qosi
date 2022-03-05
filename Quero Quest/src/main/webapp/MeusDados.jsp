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
	<nav>
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
            Nome: 
            <%
            Database db = new Database();
            out.print(db.getNome(session.getAttribute("usuario").toString()));
            %>
            &nbsp;
            <a href="AlterarNome.jsp" style="border-radius: 4px; padding: 2px; text-decoration: none; color: black; background-color: orange;">Editar</a>
            <br><br>
            Email: 
            <%
            out.print(db.getEmailUser(session.getAttribute("usuario").toString()));
            %>
            &nbsp;
            <br><br>
            Membro desde: 
            <%
            out.print(db.getDataCadastro(session.getAttribute("usuario").toString()));
            %>
            <br><br>
            <a href="AlterarSenha.jsp" style="text-decoration: none; color: black; background-color: white;" id="cad">Alterar senha</a>
            <a href="Opcoes.jsp" style="text-decoration: none; color: black; background-color: white;" id="cad">Voltar</a>
            <br><br>
        </div>
    </div>

</body>
</html>