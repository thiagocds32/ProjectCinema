<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="row mt-4">
	<div class="col-12 text-center">
		<h5>Form Standard</h5>
	</div>
</div>
<c:if test="${formError}">
		<div>
		<div class="alert alert-danger alert-dismissible mt-4" role="alert">
			spettacolo esistente
			<button type="button" class="btn-close" data-bs-dismiss="alert"
				aria-label="Close"></button>
		</div>
	</div>
</c:if>
<c:if test="${formSuccess}">
		<div>
		<div class="alert alert-success alert-dismissible mt-4" role="alert">
			spettacolo immesso correttamente
			<button type="button" class="btn-close" data-bs-dismiss="alert"
				aria-label="Close"></button>
		</div>
	</div>
</c:if>
<div class="row justify-content-center">
	<div class="col-8">
		<form action="spettacoli/save" method="POST"
			accept-charset="ISO-8859-1">
			<div class="row">
				<div class="col-6">
					<label for="film">Film:</label> <select id="film" name="film">
						<c:forEach items="${filmList}" var="film">
							<option value="${film.id}">${film.titolo}</option>
						</c:forEach>
					</select>
				</div>
				<div class="col-6">
					<label for="authorSt">Sala:</label> <select name="sala">
						<c:forEach items="${saleList}" var="sala">
							<option value="${sala.id}">${sala.descrizione}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label for="yearSt">Data:</label> <input type="date" id="yearSt"
						name="data" class="form-control" required="required">
				</div>
				<div class="col-6">
					<label for="priceSt">Orario:</label> <input type="time" step="any"
						id="priceSt" name="oraInizio" class="form-control"
						required="required">
				</div>
			</div>
			<div class="col-6 text-center">
				<input type="submit" value="Registra Film"
					class="btn btn-primary mt-4">
			</div>
		</form>
	</div>
</div>
<hr>
