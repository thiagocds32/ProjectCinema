<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="row justify-content-center mt-4">
	<div class="col-6">
		<h5>Categoria Id ${category.id}</h5>
		<h6>${category.description}</h6>
		<ul class="list-group">
			<c:forEach items="${category.products}" var="product">
				<li class="list-group-item">
					Marca: ${product.brand} - 
					Descrizione: ${product.description} - 
					Prezzo: <fmt:formatNumber 
								value="${product.price}" 
								maxFractionDigits="2" 
								type="currency" 
								currencyCode="EUR" 
								currencySymbol="€" 
							/>
				</li>
			</c:forEach>
		</ul>
		<a href='<spring:url value="/categories" />' class="btn btn-secondary mt-4">
			Torna Indietro
		</a>
	</div>
</div>