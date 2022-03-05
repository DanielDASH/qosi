<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.queroquest.bean.*"%>
<%@page import="com.queroquest.model.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/nav.css">
</head>
<body>
	<nav>
		<div>
			<img id="img" src="img/logo QQ.png"> <a href="sobre.jsp">Sobre</a>
			<a href="logout.jsp">Sair</a>
			<a href="Bemvindo.jsp" id="cad" style="font-size:13px; font-size: 13pt;" >Voltar</a>
			<%
			Database nome = new Database();
			String user = session.getAttribute("usuario").toString();
			out.print("<label id='user'>Usuário: "+nome.getNome(user)+"</label>");
			%>
		</div>
	</nav>
	
	<div align="center" style="padding-top: 25px; display: flex; flex-direction: row; justify-content: center;">
		<div style="width: 800px; border-radius:12px; text-align: justify;">
			<h1>Questionário</h1>
			<%
			Dao dao = Dao.getDriver();
			QuestaoBean qb = new QuestaoBean();

			ArrayList<Object> questoes = new ArrayList<>();

			String tipo1 = request.getParameter("tipo1");
			String tipo2 = request.getParameter("tipo2");
			String area = request.getParameter("area");
			int qtd = Integer.parseInt(request.getParameter("qtd"));

			String[] aux = new String[6];

			int i = 0;
			int contador = qtd;

			try {
				Connection conn = dao.getConnection();

				Statement stt = conn.createStatement();

				ResultSet rs = null;

				//order by rand() - retorna a consulta aleatoreamente.
				if (tipo1 != null && tipo2 == null) {
					rs = stt.executeQuery("select tipo, enunciado, altA, altB, altC, altD, altE from questao where tipo like '"
					+ tipo1 + "' and areaQuestao like '" + area + "' order by rand();");
				} else if (tipo1 == null && tipo2 != null) {
					rs = stt.executeQuery("select tipo, enunciado, altA, altB, altC, altD, altE from questao where tipo like '"
					+ tipo2 + "' and areaQuestao like '" + area + "' order by rand();");
				} else if (tipo1 != null && tipo2 != null) {
					rs = stt.executeQuery("select tipo, enunciado, altA, altB, altC, altD, altE from questao where tipo like '"
					+ tipo1 + "' or tipo like '" + tipo2 + "' and areaQuestao like '" + area + "' order by rand();");
				}
				while (contador > 0 && rs.next()) {

					String tipo = rs.getString("tipo");
					String enunciado = rs.getString("enunciado");
					String A = rs.getString("altA");
					String B = rs.getString("altB");
					String C = rs.getString("altC");
					String D = rs.getString("altD");
					String E = rs.getString("altE");

					String[] array = { tipo, enunciado, A, B, C, D, E };

					questoes.add(i, array);
					/*Declarando um ArrayList... necessário importar "java.util.ArrayList"
					EX: ArrayList<Tipo_do_array> nome_variavel = new ArrayList<>();*/

					i++;
					contador--;
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}
			%>

			<%
			int q = 0;
			for (int j = 0; j < questoes.size(); j++) {
				String[] aux2 = (String[]) questoes.get(j);

				while (true) {

					String tipo = aux2[0];
					String questao = "<h3>Questão " + (j + 1) + ": " + aux2[1] + "</h3>";
					String A = "<input type='radio' name='Q" + (q + 1) + "' class='" + q + "' value='1'>" + aux2[2];
					String B = "<input type='radio' name='Q" + (q + 1) + "' class='" + q + "' value='0'>" + aux2[3];
					String C = "<input type='radio' name='Q" + (q + 1) + "' class='" + q + "' value='0'>" + aux2[4];
					String D = "<input type='radio' name='Q" + (q + 1) + "' class='" + q + "' value='0'>" + aux2[5];
					String E = "<input type='radio' name='Q" + (q + 1) + "' class='" + q + "' value='0'>" + aux2[6];

					if (tipo.equals("Multipla escolha")) {
				out.println(questao);
				out.println(A + "<br>");
				out.println(B + "<br>");
				out.println(C + "<br>");
				out.println(D + "<br>");
				out.println(E + "<br>");

					} else if (tipo.equals("Verdadeiro ou falso")) {
				out.println(questao);
				out.println(A + "<br>");
				out.println(B + "<br>");
					}

					q++;
					break;
				}

			}
			%>
			<br>
			<button onclick="corrigir()">Corrigir</button>
		</div>
	</div>
	

	<script type="text/javascript">
		function corrigir() {
			var erros = 0;
			var acertos = 0;
			var cont = 0;
						
			while(true){
				if(cont == <%=qtd%>){
					break;
				}
				var op = document.getElementsByClassName(""+cont);
				
				for(k=0; k<op.length; k++){
					if(op[k].value == "1" && op[k].checked){
						acertos++;
					} else if(op[k].value == "0" && op[k].checked){
						erros++;
					}
				}
				
				cont++;
			}
			if(acertos == 0 && erros == 0){
				alert("Você não resolveu nenhuma questão.")
			}else{
				alert("Acertos: "+acertos+"\nErros: "+erros);
			}
			
		}
	</script>
</body>
</html>