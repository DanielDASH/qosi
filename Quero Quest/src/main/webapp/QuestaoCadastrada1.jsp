<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="Questao2.jsp" %>
<%@page import="com.queroquest.model.*"%>    
<%    
Database ld = new Database();
if (session.getAttribute("usuario") == null) {
	response.sendRedirect("Login.jsp");
} else {
ld.copyTableQAM(session.getAttribute("usuario").toString());
}
%>
<p align="center" style="padding:0; margin:0; color: green;">Questão cadastrada com sucesso.</p>
<p align="center" style="padding:0; margin:0; font-size:14px;" id="cad"><a href="Bemvindo.jsp" >Inicio</a></p>