<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href='<spring:url value="/"/>'>
    	<img src='<c:url value="/static/image/homeIcon.png"/>' alt="Home">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href='<spring:url value="/books"/>'>Libri</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href='<spring:url value="/customers"/>'>Clienti</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href='<spring:url value="/categories"/>'>Categorie</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href='<spring:url value="/orders"/>'>Ordini</a>
        </li>
      </ul>
      <c:if test="${isBooks}">
      <form class="d-flex" action="books" method="GET">
        <input class="form-control me-2" type="search" placeholder="Search" name="searchText" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      </c:if>
    </div>
  </div>
</nav>

<div class="card bg-light text-white">
  <img src='<c:url value="/static/image/headerImage.png"/>' class="card-img" alt="Header">
  <div class="card-img-overlay">
    <h2 class="card-title">Bevenuto in Alphastore</h2>
    <h5 class="card-text">Qui puoi trovare tutto quello che cerchi</h5>
  </div>
</div>