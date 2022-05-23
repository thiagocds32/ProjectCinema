<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="<c:url value="/static/javascript/order_form_script.js" />"></script>

<div class="row mt-4">
	<div class="col-12 text-center">
		<h5>Nuovo Ordine</h5>
	</div>
</div>

<div class="row justify-content-center">
	<div class="col-4">
		<div class="row">
			<div class="col-12">
				<label for="customerName">Nome Cliente:</label>
				<input id="customerName" type="text" class="form-control" />
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<label for="orderDate">Data Ordine:</label>
				<input id="orderDate" type="date" class="form-control" />
			</div>
		</div>
		<div class="row mt-2">
			<div class="col-12">
				<label><strong>Prodotti Disponibili:</strong></label>
				<br>
				<c:forEach items="${availableProducts}" var="prod">
					<input type="checkbox" name="orderProducts" class="form-check-input" value="${prod.id}">
  					<label class="form-check-label">
 						${prod.description}
					</label>
    				<br>
				</c:forEach>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-12 text-center">
				<button id="saveButton" class="btn btn-primary">
					Registra Ordine
				</button>
			</div>
		</div>
	</div>
</div>