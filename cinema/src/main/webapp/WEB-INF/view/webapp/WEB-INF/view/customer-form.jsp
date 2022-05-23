<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="row mt-4">
	<div class="col-12 text-center">
		<c:choose>
			<c:when test="${mode}">
				<h5>Registrazione Cliente</h5>
			</c:when>
			<c:otherwise>
				<h5>Aggiornamento Cliente</h5>
			</c:otherwise>
		</c:choose>
	</div>
</div>

<div class="row justify-content-center">
	<div class="col-6">
		<form:form method="POST" modelAttribute="customer" acceptCharset="ISO-8859-1">
			<div class="row">
				<div class="col-6">
					<label for="name">Nome:</label>
					<form:input path="name" id="name" type="text" cssClass="form-control" required="required" />
					<form:errors path="name" id="nameError" cssClass="text-danger"/>
				</div>
				<div class="col-6">
					<label for="surname">Cognome:</label>
					<form:input path="surname" id="surname" type="text" cssClass="form-control" required="required" />
					<form:errors path="surname" id="surnameError" cssClass="text-danger"/>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label for="mail">Indirizzo Mail:</label>
					<form:input path="mail" id="mail" type="mail" cssClass="form-control" required="required" />
					<form:errors path="mail" id="mailError" cssClass="text-danger"/>
				</div>
				<div class="col-6 pt-1 text-center">
					<c:choose>
						<c:when test='${mode || !mode && customer.sex.equals("male")}'>
							<label class="mt-radio mt-4">
								<form:radiobutton path="sex" id="sex" value="male" cssClass="form-check-input" checked="true"/>
								Maschio
							</label>&emsp;
							<label class="mt-radio mt-4">
								<form:radiobutton path="sex" id="sex" value="female" cssClass="form-check-input"/>
								Femmina
							</label>
						</c:when>
						<c:otherwise>
						<label class="mt-radio mt-4">
							<form:radiobutton path="sex" id="sex" value="male" cssClass="form-check-input"/>
								Maschio
							</label>&emsp;
							<label class="mt-radio mt-4">
								<form:radiobutton path="sex" id="sex" value="female" cssClass="form-check-input" checked="true"/>
								Femmina
							</label>
						</c:otherwise>
					</c:choose>					
				</div>
			</div>
			<div class="row">
				<div class="col-8">
					<label for="street">Via/Piazza:</label>
					<form:input path="address.street" id="street" type="text" cssClass="form-control" required="required" />
					<form:errors path="address.street" id="streetError" cssClass="text-danger"/>
				</div>
				<div class="col-4">
					<label for="civicNumber">Numero Civico:</label>
					<form:input path="address.civicNumber" id="civicNumber" type="text" cssClass="form-control" required="required" />
					<form:errors path="address.civicNumber" id="civicNumberError" cssClass="text-danger"/>
				</div>
			</div>
			<div class="row">
				<div class="col-4">
					<label for="cap">Cap:</label>
					<form:input path="address.cap" id="cap" type="text" cssClass="form-control" required="required" />
					<form:errors path="address.cap" id="capError" cssClass="text-danger"/>
				</div>
				<div class="col-8">
					<label for="town">Città:</label>
					<form:input path="address.town" id="town" type="text" cssClass="form-control" required="required" />
					<form:errors path="address.town" id="townError" cssClass="text-danger"/>
				</div>
			</div>
			<div class="row mt-4">
				<div class="col-12 text-center">
					<a href='<spring:url value="/customers" />' class="btn btn-secondary btn-lg">Torna indietro</a>&emsp;
					<input type="submit" value="Registra Cliente" class="btn btn-primary btn-lg">
				</div>
			</div>
		</form:form>
	</div>
</div>
