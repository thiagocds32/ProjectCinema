<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="row mt-4">
	<div class="col-10 text-center">
		<h5>Gestione Ordini</h5>
	</div>
	<div class="col-2 text-end">
		<a href='<spring:url value="/orderform" />' class="btn btn-success">
			Nuovo Ordine
		</a>
	</div>
</div>

<div class="row justify-content-center">
	<div class="col-6">
		<table class="table table-striped table-responsive">
			<thead>
				<tr>
					<th>Nome Cliente</th>
					<th class="text-center">Data Ordine</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orders}" var="order">
					<tr>
						<td>${order.customerName}</td>
						<td class="text-center">
							<fmt:formatDate value="${order.orderDate}" pattern="dd-MM-yyyy"/>
						</td>
						<td class="text-end">
							<a href='<spring:url value="orders/delete?id=${order.id}" />' class="btn btn-danger btn-sm">
								Elimina
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>