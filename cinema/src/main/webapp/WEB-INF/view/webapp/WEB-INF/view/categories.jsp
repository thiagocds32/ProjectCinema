<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="row mt-4">
	<div class="col-12 text-center">
		<h5>Gestione Categorie</h5>
	</div>
</div>

<div class="row mt-4">

	<div class="col-8 ps-4 pe-4">
		<c:if test="${categories.size() > 0}">
			<table class="table table-striped table-responsive">
				<thead>
					<tr>
						<th class="text-center">Id</th>
						<th>Descrizione</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${categories}" var="cat">
						<tr>
							<td class="text-center">${cat.id}</td>
							<td>${cat.description}</td>
							<td class="text-end">
							
								<a href='<spring:url value="categories/detail?id=${cat.id}" />' class="btn btn-primary btn-sm">
									Dettaglio
								</a>&emsp;
								<a href='<spring:url value="categories/delete?id=${cat.id}" />' class="btn btn-danger btn-sm">
									Elimina
								</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</div>
	
	<div class="col-4 text-center ps-4 pe-4">
		<h6 class="mt-3">Aggiungi Categoria</h6>
		<form:form method="POST" modelAttribute="category">
			<div class="row">
				<div class="col-12">
					<form:input path="description" id="description" cssClass="form-control" type="text" placeholder="Inserire Descrizione" required="required"/>
					<form:errors path="description" id="descriptionError" cssClass="text-danger"/>
				</div>
			</div>
			<div class="row mt-4">
				<div class="col-12">
					<input type="submit" value="Registra Categoria" class="btn btn-primary">
				</div>
			</div>
		</form:form>
	</div>
</div>