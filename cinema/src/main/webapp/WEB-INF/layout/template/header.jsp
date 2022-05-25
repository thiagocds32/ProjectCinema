<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="<c:url value="/static/javascript/loginPopUpJS.js" />"></script>


<!-- --------------------------------- CSS FOR NAVBAR ------------------------------------------>
<script src="https://kit.fontawesome.com/afd6aa68df.js"></script>
<link rel="stylesheet"
	href='<c:url value="/static/css/headerStyle/headerStyle.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/static/css/headerStyle/headerMenuHamburguerStyle.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/static/css/headerStyle/headerSearchBarStyle.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/static/css/headerStyle/headerPopUpLoginStyle.css"/>'>
<!-- --------------------------------- CSS FOR NAVBAR ------------------------------------------>

</head>
<body>
	<header>
		<!-- --------------------POP UP LOGIN------------------------ --->
		<div class="pop-up-container"></div>
		<div class="pop-up-login">

			<div class="closeButtonPopUp"></div>
			<div class="accediContainer">
				<p id="accedi">Accedi</p>
			</div>

			<div class="formLogin">
				<form action="">

					<input type="text" name="username" class="formLoginContent"
						id="formLogin" placeholder="Username">> <input type="text"
						name="password" class="formLoginContent" id="formPassword"
						placeholder="Password">
				</form>
			</div>
			<div class="loginRequestButtonContainer">
				<button name="loginRequest" id="loginRequestButton">Login</button>
			</div>

		</div>

		<!-- --------------------POP UP LOGIN------------------------ --->


		<!--- Div nascosto per menu mobile--->


		<div class="collapse" id="navbarToggleExternalContent">
			<div class="p-4" id="menumobileNascosto">
				<ul>
					<li><a class="nav-link menumobileNascosto" href="#"
						role="button" aria-expanded="false"> Area Riservata </a></li>
					<li><a class="nav-link menumobileNascosto" href="#"
						role="button" aria-expanded="false"> Login </a></li>


				</ul>
			</div>
		</div>

		<!--- Div nascosto per menu mobile--->


		<nav class="navbar navbar-expand-md navbar-1 " id="mainMenu">

			<div class="container-fluid">


				<!--- Logo brand del sito--->
				<a class="navbar-brand logoCinema" href="#">Cinema</a>
				<!--- Logo brand del sito--->




				<!--- --------------------- SEARCH BAR ------------------------------- --->

				<ul class="navbar-nav">
					<li>
						<div class="box">
							<form name="search">
								<input type="text" class="barSearch" name="txt">
							</form>
							<i class="fas fa-search" id="icon-magnifier"></i>
						</div>
					</li>
					<!--- --------------------- SEARCH BAR ------------------------------- --->




					<!--- Menu Hamburguer Nascosto. Appare soltanto quando collapsano altre cose--->
					<li class="nav-item">
						<div class="menu-btn toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarToggleExternalContent"
							aria-controls="navbarToggleExternalContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<div class="menu-btn_burger"></div>
						</div>
					</li>

					<!--- Menu Hamburguer Nascosto. Appare soltanto quando colapsano altre cose--->





					<!--- Tasto Area Riservata che collapsa quando lo schermo diventa piu piccolo di md--->
					<li class="nav-item collapse navbar-collapse menuButtons"
						id="areaClient">
						<button class="nav-link linkMenuButtons" aria-expanded="false"
							name="Area Riservata">Area Riservata</button>
					</li>
					<!--- Tasto Area Riservata che collapsa quando lo schermo diventa piu piccolo di md--->




					<!--- Tasto Login che collapsa quando lo schermo diventa piu piccolo di md--->
					<li class="nav-item dropdown collapse navbar-collapse menuButtons">
						<button class="nav-link linkMenuButtons" role="button"
							data-bs-toggle="dropdown" aria-expanded="false">Login</button> <!--- Tasto Login che collapsa quando lo schermo diventa piu piccolo di md--->




						<!--- Menu Dropdown Compreso dentro il tasto login--->
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="navbarDarkDropdownMenuLink" id="menudrop">
							<li><button class="dropdown-item" name="loginDropdown"
									id="loginButtonDropdown">Login</button></li>
							<li><button class="dropdown-item" name="registrati">Registrati</button></li>
						</ul>
					</li>
				</ul>

			</div>


		</nav>

	</header>
	<script src="../javascript/hamburguer.js"></script>
	<script src="../javascript/loginPopUpJS.js"></script>
</body>
</html>
