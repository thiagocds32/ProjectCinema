<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Test due</title>
	</head>
	<body>
		<h1>Pagina Test 2</h1>
		<h4>Ciao ${requestScope.nome}</h4>
		<h4>Il tuo browser è ${requestScope.agent}</h4>
		<h4>Il linguaggio è ${language}</h4>
		<h5>Ciao ${requestScope.hello}</h5>
		<h5>Secondo request hai vistato questa pagina ${requestScope.visite} volte</h5>
		<h5>Secondo session hai vistato questa pagina ${sessionScope.visite} volte</h5>
	</body>
</html>