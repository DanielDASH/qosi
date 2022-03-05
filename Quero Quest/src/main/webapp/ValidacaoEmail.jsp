<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Verificação</title>
<link rel="stylesheet" href="css/nav.css">
</head>
<body style="background-image: url(img/backgroundQQ.png); background-size:1140px; background-repeat:no-repeat">

	<nav align="right" >
       <div>
        <img  id="img" src="img/logo QQ.png">
        <a href="sobre.jsp">Sobre</a>
       </div>
    </nav>

	<div align="center" style="padding: 30px;">

		<div align="center"
			style="padding: 30px; width: 300px; border-radius: 10px">
			<img src="img/logo QQ.png" alt="logotipo" width="50px">
			<h2>Cadastro</h2>

			<form action="validar" id=codigo>
				<label><b><h3>Código de verificação:</h3></b></label><br>
				<table>	
					<tr>
						<td colspan="2">
						<input type="text" name="codigo"
							placeholder="Código" size="20px"
							style="border: none; background-color: rgba(45, 45, 48, 0.151); height:20px; border-radius: 5px" required>
						</td>
						<td></td>
					</tr>

					<tr>
						<td align="center"><input type="submit" name="validar" value="Validar Email" id="cad">
						<a href="Cadastro.jsp" id="cad" style="font-size:13px">Voltar</a></td>

					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>