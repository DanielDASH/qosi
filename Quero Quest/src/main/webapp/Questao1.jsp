<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Múltipla Escolha</title>
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
       </div>
    </nav>

	<div align="center" style="padding-top: 20px;">
		<form action="enunciado">
			<div style="color: rgba(5,124,196,255)">
			<h2 style="background-color:rgba(5,124,196,255); color:white; width:300px; border-radius: 8px; text-align:center;">Cadastro de questão</h2>
			</div>
			<h3>Multipla Escolha</h3>
			<table>
				<tr align="left">
					<td>
						<p>
							<b>Enunciado da questão:</b>
						</p> 
						<textarea name="enunciado" rows="5" cols="50"
							placeholder="Enunciado da questão" required>
						</textarea>
					</td>
				</tr>
				<tr align="left">
					<td>
						<p>
							<b>Alternativas da questão:</b>
						</p> <textarea name="A" rows="1" cols="50"
							placeholder="Alternativa Correta" required></textarea><br> <textarea
							name="B" rows="1" cols="50" placeholder="Alternativa Incorreta"
							required></textarea><br> <textarea name="C" rows="1"
							cols="50" placeholder="Alternativa Incorreta" required></textarea><br>
						<textarea name="D" rows="1" cols="50"
							placeholder="Alternativa Incorreta" required></textarea><br>
						<textarea name="E" rows="1" cols="50"
							placeholder="Alternativa Incorreta" required></textarea><br>


					</td>
				</tr>
				<tr align="left">
					<td><br> <input type="submit" name="enviar"
						value="Cadastrar" id="cad"></td>
				</tr>
			</table>
		</form>

	</div>
</body>
</html>