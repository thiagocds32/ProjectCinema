<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- --------------------------------- CSS FOOTER--------------------------------------------------->

<link rel="stylesheet"
	href='<c:url value="/static/css/footerStyle/footerStyle.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/static/css/footerStyle/footerSocialMediaIconsStyle.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/static/css/footerStyle/footerStyle.css"/>'>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">


<!-- --------------------------------- CSS FOOTER---------------------------------------------------->


</head>

<body>
	<footer>

		<hr id="linea-footer">
		<div class="collone row">

			<div class="column1 col-md-12 col-lg-4">
				<p class="titlesFooter">Cinema Aprile</p>
				<p>
					<a href="#"> Chi Siamo </a>
				</p>
				<p>
					<a href="#"> Lavora con noi </a>
				</p>

			</div>


			<div class="column2 col-md-12 col-lg-4">
				<p class="titlesFooter">Contatti</p>
				<p>
					<i class="fa fa-map-marker-alt"></i> <a href="#"> Via carlo
						alberto, Roma | Torino | Napoli, Italia </a>
				</p>

				<p>
					<i class="far fa-clock"></i> <a href="#"> Lunedi - Venerdi |
						9:00 - 20:00 </a>
				</p>

				<p>
					<i class="fa fa-phone-alt"></i> <a href="#"> +38806473892640 </a>
				</p>

				<p>
					<i class="fa fa-envelope"></i> <a href="#">
						info@cinemagrande.com </a>
				</p>

			</div>


			<div class="column3 col-md-12 col-lg-4 row">

				<div class="socialMediaIcons col-12">
					<ul class="wrapper">
						<li class="icon facebook"><span class="tooltip">Facebook</span>
							<span><i class="fab fa-facebook-f"></i></span></li>
						<li class="icon twitter"><span class="tooltip">Twitter</span>
							<span><i class="fab fa-twitter"></i></span></li>
						<li class="icon instagram"><span class="tooltip">Instagram</span>
							<span><i class="fab fa-instagram"></i></span></li>
						<li class="icon youtube"><span class="tooltip">Youtube</span>
							<span><i class="fab fa-youtube"></i></span></li>
					</ul>
				</div>

				<div class="copyrights col-12">
					<br> <br> &#169; Copy Rights 2022 | Cinema Aprile
				</div>

			</div>

		</div>
	</footer>

</body>
</html>
