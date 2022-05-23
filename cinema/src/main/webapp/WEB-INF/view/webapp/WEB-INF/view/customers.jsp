<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="row mt-4">
	<div class="col-10 text-center">
		<h5>Registro Clienti</h5>
	</div>
	<div class="col-2 text-end">
		<a href='<spring:url value="/customerform?id=0" />' class="btn btn-success">
			Nuovo Cliente
		</a>
	</div>
</div>
<div class="row">
	<div class="col-12">
		<table class="table table-striped table-responsive">
			<thead>
				<tr>
					<th>Nome</th>
					<th>Cognome</th>
					<th>Mail</th>
					<th class="text-center">Sesso</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${customers}" var="customer">
					<tr>
						<td>${customer.name}</td>
						<td>${customer.surname}</td>
						<td>${customer.mail}</td>
						<c:choose>
							<c:when test='${customer.sex.equals("male")}' >
								<td class="text-center text-primary">MASCHIO</td>
							</c:when>
							<c:otherwise>
								<td class="text-center text-danger">FEMMINA</td>
							</c:otherwise>
						</c:choose>
						<td class="text-end">
							<a href='<spring:url value="/customerform?id=${customer.id}"/>' class="btn btn-primary btn-sm">
								Modifica
							</a>&emsp;
							<a href='<spring:url value="customers/delete?id=${customer.id}"/>' class="btn btn-danger btn-sm">
								Elimina
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>