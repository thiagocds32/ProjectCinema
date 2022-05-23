<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<%
			/*String saluto = "Benvenuto in questa pagina";
			Date data = new Date();
			double credito = 1234565.4562;
			List<String> acquisti = new ArrayList<>();
			acquisti.add("acquisto 1");
			acquisti.add("acquisto 2");
			acquisti.add("acquisto 3");*/
		%>
		
		<h1>Questa è la prima Java Server Page</h1>
		<h2>${saluto}</h2>
		<h3>
		Oggi è il 
		<fmt:formatDate value="${data}" pattern="dd-MM-yyyy"/>
		</h3>
		<h4>
		Il tuo credito ammonta a 
		<fmt:formatNumber 
			value="${credito}" 
			type="currency" 
			currencyCode="EUR" 
			currencySymbol="€" 
			maxFractionDigits="2" 
			minFractionDigits="2"
		/>
		</h4>
		
		<ul>
			<c:forEach items="${acquisti}" var="acquisto">
				<li>${acquisto}</li>
			</c:forEach>
		</ul>
	</body>
</html>