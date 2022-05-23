<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row mt-4">
	<div class="col-6">
		<div class="row">
			<div class="col-12 text-center">
				<h5>Scheda Libro</h5>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<form:form method="POST" modelAttribute="book" acceptCharset="ISO-8859-1">
					<form:errors path="*" cssClass="alert alert-danger" element="div" id="generalAlert"/>
					<div class="row">
						<div class="col-6">
							<form:hidden path="id"/>
							<label for="title">Titolo:</label>
							<form:input path="title" id="title" type="text" cssClass="form-control" required="required" />
							<form:errors path="title" id="titleError" cssClass="text-danger"/>
						</div>
						<div class="col-6">
							<label for="author">Autore:</label>
							<form:input path="author" id="author" type="text" cssClass="form-control" required="required" />
							<form:errors path="author" id="authorError" cssClass="text-danger"/>
						</div>
					</div>
					<div class="row">
						<div class="col-6">
							<label for="publicYear">Anno di Pubblicazione:</label>
							<form:input path="publicYear" id="publicYear" type="number" cssClass="form-control" required="required" />
							<form:errors path="publicYear" id="publicYearError" cssClass="text-danger"/>
						</div>
						<div class="col-6">
							<label for="price">Prezzo:</label>
							<form:input path="price" id="price" type="number" step="any" cssClass="form-control" required="required" />
							<form:errors path="price" id="priceError" cssClass="text-danger"/>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<label for="description">Descrizione:</label>
							<form:textarea path="description" id="description" cssClass="form-control" rows="3" style="resize:none;" required="required" />
							<form:errors path="description" id="descriptionError" cssClass="text-danger"/>
						</div>
					</div>
					<div class="row">
						<div class="col-6">
							<label for="quantity">Quantità disponibile:</label>
							<form:input path="quantity" id="quantity" type="number" cssClass="form-control" required="required" />
							<form:errors path="quantity" id="quantityError" cssClass="text-danger"/>
						</div>
						<div class="col-6 text-center">
							<input type="submit" value="Aggiorna Libro" class="btn btn-primary mt-4">
							<a href='<spring:url value="bookcard/delete/${book.id}" />' class="btn btn-danger mt-4">
								Elimina Libro
							</a>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	
	<div class="col-2"></div>
	<div class="col-4">
		<div class="row mt-4">
			<div class="col-12 text-center">
				<form action="bookcard/upload" method="POST" enctype="multipart/form-data">
					<h6>Seleziona e salva copertina</h6>
					<input type="hidden" id="fileName" name="fileName" value="${bookId}">
					<input type="file" class="form-control mt-2" id="image" name="image">
					<input type="submit" class="btn btn-primary mt-3" value="Salva Immagine">
				</form>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-12 text-center ms-2">
				<c:choose>
					<c:when test="${hasImage}">
						<img class="img-thumbnail" style="width: 180px; height: 250px;max-width: 180px; max-height: 250px;" 
							alt="Book Image" src="<c:url value="/static/books/${bookId}.png" />">
					</c:when>
					<c:otherwise>
						<img class="img-thumbnail" style="width: 180px; height: 250px;max-width: 180px; max-height: 250px;" 
							alt="Book Image" src="<c:url value="/static/image/markerImage.png" />">
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-12 text-center">
				<a href='<spring:url value="bookcard/deleteimage?name=${bookId}"></spring:url>'>
					<img class="img-thumbnail ms-4" alt="Delete" src="<c:url value="/static/image/deleteIcon.png" />">
				</a>
			</div>
		</div>
	</div>
</div>