<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<title>Title</title>

<style>
#corpo {
	background-color: #9BAEBC;
}
</style>
</head>
<body>

	<div class="container h-100 text-dark" id="corpo">


		<div class="row text-center align-items-center">
			<h1>Registrazione</h1>
		</div>

		<hr />
		<div class="row justify-content-center align-items-center h-100">
			<div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
				<form action="login/save"  method="POST" accept-charset="ISO-8859-1"
							id="Registration">
					<div class="form-group">
						<label for="username" class="form-label">Username:</label> <input
							type="text" name="username" class="form-control" id="username">
					</div>
					<div class="form-group">
						<label for="password" class="form-label">Password:</label> <input
							type="password" name="pass" class="form-control" id="password">
					</div>
						<div class="row justify-content-center align-items-center">
						<button type="submit" class="btn btn-primary">Prega Carla</button>
					</div>
					
				</form>
				</div>
				</div>
				</div>
				</body>
