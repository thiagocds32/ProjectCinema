<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  


<div class="row mt-4">
	<div class="col-12 text-center">
		<h5>Form Standard</h5>
	</div>
</div>
<c:if test="${formError}">
<div>
	<div class="alert alert-danger alert-dismissible mt-4" role="alert">
		<span>Alcuni campi presentano errori</span>
		<button class="btn-close" data-bs-dismiss="alert" aria-label="close"></button>
	</div>
</div>
</c:if>
<div class="row justify-content-center">
	<div class="col-8">
	<form action="film/save" method="POST" accept-charset="ISO-8859-1">
		<div class="row">
			<div class="col-6">
				<label for="titleSt">Titolo:</label>
				<input type="text" id="titleSt" name="titolo" class="form-control" required="required">
			</div>
			<div class="col-6">
				<label for="authorSt">Descrizione:</label>
				<input type="text" id="authorSt" name="descrizione" class="form-control" required="required">
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<label for="yearSt">Regista:</label>
				<input type="text" id="yearSt" name="regista" class="form-control" required="required">
			</div>
			<div class="col-6">
				<label for="priceSt">Genere:</label>
				<input type="text" step="any" id="priceSt" name="genere" class="form-control" required="required">
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<label for="descriptionSt">Anno:</label>
				<input type="number" id="descriptionSt" name="anno" class="form-control"  style="resize:none;" required="required">
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<label for="quantitySt">Durata:</label>
				<input type="number" id="quantitySt" name="durata" class="form-control" required="required">
			</div>
			<div class="col-6 text-center">
				<input type="submit" value="Registra Film" class="btn btn-primary mt-4">
			</div>
		</div>
	</form>
	</div>
</div>
<hr>
