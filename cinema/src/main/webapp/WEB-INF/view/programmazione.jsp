<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!-- --------------------------------- CSS FOR RICERCA FILMS ------------------------------------------>
<link rel="stylesheet"
	href='<c:url value="/static/css/generalStyle/cardFilmRicerca.css"/>'>
<!-- --------------------------------- CSS FOR RICERCA FILMS ------------------------------------------>

</head>
<body>
	<div class="container-fluid">
		<div class="section" id="allMovieCards">
			<c:forEach items="${filmList}" var="film">
				<div class="movie_card">
					<div class="info_section">
						<div class="movie_header">
							<img class="locandina"
								src="<c:url value="/static/image/${film.id}c.jpg" />">
							<h1 class="filmTitleCard">${film.titolo}</h1>
							<h4 class="filmRegiaCard">${film.anno},by${film.regista}</h4>
							<span class="filmDuration">${film.durata} min</span>
							<p class="filmGenre">${film.genere}</p>
						</div>
						<div class="movie_desc">
							<p class="filmDescription">${film.descrizione}</p>
						</div>
						<div class="movie_info">
							<ul>
								<li><button name="" class="moreInfoButton">
										<p class="scopriDiuPiu">Scopri di più</p>
									</button></li>
							</ul>
						</div>
					</div>
					<div class="blur_back">
						<img src="<c:url value="/static/image/${film.id}b.jpg" />">
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>