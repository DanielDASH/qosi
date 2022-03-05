<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.queroquest.bean.*"%>
<%@page import="com.queroquest.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cadastro Questões</title>
<link rel="stylesheet" href="css/nav.css">
</head>
<body style="background-image: url(img/backgroundQQ.png); background-size:1140px; background-repeat:no-repeat">
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
<%
if (session.getAttribute("usuario") == null) {
	response.sendRedirect("Login.jsp");
}
%>
	<div style="padding-top: 20px; display: flex; flex-direction: row; justify-content: center;">
		<form action="type" >
			<h2 style="background-color:rgba(5,124,196,255); color:white; width:300px; border-radius: 8px; text-align:center;">Cadastro de questão</h2>
			<table align="center">
				<tr >
					<td>
						<p>
							<b>Tipo de questão:</b>
						</p> 
						<input type="radio" name="tipo" value="Multipla escolha" required>Multipla escolha<br>
						<input type="radio" name="tipo" value="Verdadeiro ou falso" required>Verdadeiro ou falso
					</td>
				</tr>
				<tr >
					<td>
						<p>
							<b>Área da questão:</b>
						</p> 
						<input type="radio" name="area" value="Informatica" required>Informática<br>
						<input type="radio" name="area" value="Lingua Portuguesa" required>Lingua Portuguesa<br>
						<input type="radio" name="area" value="Matematica" required>Matemática<br>
						<input type="radio" name="area" value="Fisica" required>Física<br>
						<input type="radio" name="area" value="Lingua Inglesa" required>Lingua Inglesa<br>
						<input type="radio" name="area" value="Direito" required>Direito
					</td>
				</tr>
				<tr>
					<td>
					<br> 
					<input type="submit" name="enviar" value="Avançar" id="cad">
					<a href="Bemvindo.jsp" id="cad" style="font-size:13px">Voltar</a>
					</td>
				
				</tr>
			</table>
		</form>

	</div>
</body>
</html>