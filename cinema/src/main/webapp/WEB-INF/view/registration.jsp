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
<body>

	<div class="container h-100 text-dark" id="corpo">


		<div class="row text-center align-items-center">
			<h1>Registrazione</h1>
		</div>

		<hr />
		<div class="row justify-content-center align-items-center h-100">
			<div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
				<form action="registration/save"  method="POST" accept-charset="ISO-8859-1"
							id="Registration">
					<div class="form-group">
						<label for="nome" class="form-label">Nome:</label> <input
							type="text" name="nome" class="form-control" id="nome">
					</div>
					<div class="form-group">
						<label for="cognome" class="form-label">Cognome:</label> <input
							type="text" name="cognome" class="form-control" id="cognome">
					</div>

					<div class="form-group">
						<label for="mail" class="form-label">Email address</label> <input
							type="email" name="mail" class="form-control" id="mail"
							aria-describedby="emailHelp">
						<div id="emailHelp" class="form-text">We'll never share your
							email with anyone else.</div>
					</div>

					<div class="form-group">
						<label for="data" class="form-label">Data di Nascita:</label> <input
							type="date" name="data" class="form-control" id="data">
					</div>

					<div class="form-group">
						<label for="username" class="form-label">Username: </label> <input
							type="text" name="username" class="form-control" id="username">
					</div>

					<div class="form-group">
						<label for="pass" class="form-label">Password:</label> <input
							type="password" name="pass" class="form-control" id="pass">
					</div>

					<div class="form-group form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
						<label class="form-check-label" for="exampleCheck1">Autorizzo
							il trattamento dei miei dati personali presenti nel curriculum
							vitae ai sensi del Decreto Legislativo 30 giugno 2003, n. 196 e
							del GDPR (Regolamento UE 2016/679).</label>
					</div>

					<div class="row justify-content-center align-items-center">
						<button type="submit" class="btn btn-primary">Prega Carla</button>
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>