<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="row mt-4">
	<div class="col-10 text-center">
		<h5><spring:message code="books.title" /></h5>
	</div>
	<div class="col-2 text-end">
		<a href='<spring:url value="/bookform"/>' class="btn btn-success"><spring:message code="books.button.newbook" /></a>
	</div>
</div>

<div class="row">
	<div class="col-12">
		<table class="table table-striped table-responsive">
			<thead>
				<tr>
					<th><spring:message code="books.table.header1" /></th>
					<th><spring:message code="books.table.header2" /></th>
					<th class="text-center"><spring:message code="books.table.header3" /></th>
					<th class="text-center"><spring:message code="books.table.header4" /></th>
					<th class="text-center"><spring:message code="books.table.header5" /></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${books}" var="book">
					<tr>
						<td>${book.title}</td>
						<td>${book.author}</td>
						<td class="text-center">${book.publicYear}</td>
						<td class="text-center">
							<fmt:formatNumber 
								value="${book.price}" 
								maxFractionDigits="2" 
								minFractionDigits="2"
								type="currency"
								currencyCode="EUR"
								currencySymbol="€"
							/>
						</td>
						<c:choose>
							<c:when test="${book.quantity > 0}">
								<td class="text-center text-success"><spring:message code="books.table.available.yes" /></td>
							</c:when>
							<c:otherwise>
								<td class="text-center text-danger"><spring:message code="books.table.available.no" /></td>
							</c:otherwise>
						</c:choose>
						<td class="text-end">
							<a href='<spring:url value="/bookcard?id=${book.id}"/>' class="btn btn-primary btn-sm"><spring:message code="books.button.bookcard" /></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>