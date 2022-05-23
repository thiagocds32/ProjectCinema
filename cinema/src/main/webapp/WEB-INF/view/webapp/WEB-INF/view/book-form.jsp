<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!-- FORM STANDARD -->
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
	<form action="bookform/savestandard" method="POST" accept-charset="ISO-8859-1">
		<div class="row">
			<div class="col-6">
				<label for="titleSt">Titolo:</label>
				<input type="text" id="titleSt" name="title" class="form-control" required="required">
			</div>
			<div class="col-6">
				<label for="authorSt">Autore:</label>
				<input type="text" id="authorSt" name="author" class="form-control" required="required">
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<label for="yearSt">Anno di Pubblicazione:</label>
				<input type="number" id="yearSt" name="year" class="form-control" required="required">
			</div>
			<div class="col-6">
				<label for="priceSt">Prezzo:</label>
				<input type="number" step="any" id="priceSt" name="price" class="form-control" required="required">
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<label for="descriptionSt">Descrizione:</label>
				<textarea id="descriptionSt" name="description" class="form-control" rows="3" style="resize:none;" required="required"></textarea>
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<label for="quantitySt">Quantità disponibile:</label>
				<input type="number" id="quantitySt" name="quantity" class="form-control" required="required">
			</div>
			<div class="col-6 text-center">
				<input type="submit" value="Registra Libro" class="btn btn-primary mt-4">
			</div>
		</div>
	</form>
	</div>
</div>
<hr>
<!-- FORM SPRING -->
<div class="row mt-4">
	<div class="col-12 text-center">
		<h5>Form Spring</h5>
	</div>
</div>
<div class="row justify-content-center">
	<div class="col-8">
		<form:form method="POST" modelAttribute="book" acceptCharset="ISO-8859-1">
			<form:errors path="*" cssClass="alert alert-danger" element="div" id="generalAlert"/>
			<div class="row">
				<div class="col-6">
					<label for="titleSp">Titolo:</label>
					<form:input path="title" id="titleSp" type="text" cssClass="form-control" required="required" />
					<form:errors path="title" id="titleSpError" cssClass="text-danger"/>
				</div>
				<div class="col-6">
					<label for="authorSp">Autore:</label>
					<form:input path="author" id="authorSp" type="text" cssClass="form-control" required="required" />
					<form:errors path="author" id="authorSpError" cssClass="text-danger"/>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label for="yearSp">Anno di Pubblicazione:</label>
					<form:input path="publicYear" id="yearSp" type="number" cssClass="form-control" required="required" />
					<form:errors path="publicYear" id="yearSpError" cssClass="text-danger"/>
				</div>
				<div class="col-6">
					<label for="priceSp">Prezzo:</label>
					<form:input path="price" id="priceSp" type="number" step="any" cssClass="form-control" required="required" />
					<form:errors path="price" id="priceSpError" cssClass="text-danger"/>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<label for="descriptionSp">Descrizione:</label>
					<form:textarea path="description" id="descriptionSp" 
						cssClass="form-control" rows="3" style="resize:none;" required="required" />
					<form:errors path="description" id="descriptionSpError" cssClass="text-danger"/>
				</div>
			</div>
				<div class="row">
				<div class="col-6">
					<label for="quantitySp">Quantità disponibile:</label>
					<form:input path="quantity" id="quantitySp" type="number" cssClass="form-control" required="required" />
					<form:errors path="quantity" id="quantitySpError" cssClass="text-danger"/>
				</div>
				<div class="col-6 text-center">
					<input type="submit" value="Registra Libro" class="btn btn-primary mt-4">
				</div>
			</div>
		</form:form>
	</div>
</div>
<hr>
<!-- FORM CLIENT -->
<script src="<c:url value="/static/javascript/book_form_script.js" />"></script>
<div>
	<div id="errorAlert" class="alert alert-danger alert-dismissible mt-4" 
		role="alert" style="display:none;" >
		Operazione impossibile! Riprova più tardi
		<button type="button" class="btn-close" data-bs-dismiss="alert" 
			aria-label="Close"></button>
	</div>
</div>

<div class="row mt-4">
	<div class="col-12 text-center">
		<h5>Form Client</h5>
	</div>
</div>
<div class="row justify-content-center">
	<div class="col-8">
		<div class="row">
			<div class="col-6">
				<label for="titleCl">Titolo:</label>
				<input type="text" id="titleCl" class="form-control" required="required">
				<div id="titleClError" style="color:red;display:none">
					Campo non corretto
	    		</div>
			</div>
			<div class="col-6">
				<label for="authorCl">Autore:</label>
				<input type="text" id="authorCl" class="form-control" required="required">
				<div id="authorClError" style="color:red;display:none">
					Campo non corretto
	    		</div>
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<label for="yearCl">Anno di Pubblicazione:</label>
				<input type="number" id="yearCl"class="form-control" required="required">
				<div id="yearClError" style="color:red;display:none">
					Campo non corretto
	    		</div>
			</div>
			<div class="col-6">
				<label for="priceCl">Prezzo:</label>
				<input type="number" step="any" id="priceCl" class="form-control" required="required">
				<div id="priceClError" style="color:red;display:none">
					Campo non corretto
	    		</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<label for="descriptionCl">Descrizione:</label>
				<textarea id="descriptionCl" class="form-control" rows="3" style="resize:none;" required="required"></textarea>
				<div id="descriptionClError" style="color:red;display:none">
					Campo non corretto
	    		</div>
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<label for="quantityCl">Quantità disponibile:</label>
				<input type="number" id="quantityCl" class="form-control" required="required">
				<div id="quantityClError" style="color:red;display:none">
					Campo non corretto
	    		</div>
			</div>
			<div class="col-6 text-center">
				<button id="btnSave" class="btn btn-primary mt-4">
					Registra Libro
				</button>
			</div>
		</div>
	</div>
</div>