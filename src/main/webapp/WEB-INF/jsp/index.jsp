<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Home Page</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<link href="${contextPath}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/fonts/font-awesome.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/ionicons.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/typicons.min.css" rel="stylesheet">
<link href="${contextPath}/css/Styles.min.css" rel="stylesheet">
</head>

<body style="margin: 0;">
<body>
	<nav
		class="navbar navbar-light navbar-expand d-flex justify-content-xl-start align-items-xl-end">
		<div class="container-fluid">
			<img id="logo" src="${contextPath}/img/chatbot-icon.jpg"><a
				class="navbar-brand" href="${contextPath}/"><strong>Go4IT
			</strong>Bot Creator</a>
			<button data-toggle="collapse" class="navbar-toggler"
				data-target="#navcol-1">
				<span class="sr-only">Toggle navigation</span><span
					class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navcol-1">
				<ul class="nav navbar-nav ml-auto">
					<li class="nav-item" role="presentation"><a
						class="nav-link active"
						href="${contextPath}/bot/form?page=bot-novo">Criar ChatBot</a></li>
					<li class="nav-item" role="presentation"><a class="nav-link"
						href="${contextPath}/segment/form?page=segment-novo">Criar
							Segmento</a></li>
					<li class="nav-item" role="presentation"><a class="nav-link"
						href="${contextPath}/bot">Listar Bots</a></li>
					<li class="nav-item" role="presentation"><a class="nav-link"
						href="${contextPath}/segment">Listar Segmentos</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div id="botinfo">
		<div class="jumbotron jumbotron-fluid jumbotron-main"
			id="presentation">
			<script
				src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
			<script src="https://threejs.org/examples/js/libs/stats.min.js"></script>
			<div id="particles-js">
				<canvas class="particles-js-canvas-el" width="1409" height="319"
					style="width: 100%; height: 100%;"></canvas>
			</div>
			<div class="container center-vertically-holder"
				style="margin-top: -20px;">
				<div class="row center-vertically">
					<div class="col-md-8 offset-sm-0 offset-md-2 text-center"
						style="margin-top: 100px; margin-bottom: 100px;">
						<h1 style="color: rgb(0, 0, 0); font-size: 50px;">
							<strong>Go4IT Bot</strong><br> <br>
						</h1>
						<hr
							style="border-top: 1px; color: rgba(255, 255, 255, 0.9); width: 60%; margin: 0px; margin-top: -50px; margin-bottom: 10px; margin-left: 20%;">
						<p style="color: rgba(255, 255, 255, 0.86); font-size: 25px;">
							<strong>Ferramenta de criação e edição de chatbots
								disruptivos</strong>
						</p>
						<p></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="menbros">
		<section class="card-section-imagia">
			<i class="typcn typcn-arrow-down" id="icon"
				style="width: 298px; height: 100px; color: rgb(47, 164, 231);"></i>
			<h1 style="color: rgb(39, 186, 201);">Nosso Time</h1>
			<h2 style="color: rgb(98, 88, 163);">Fiap - Sistemas de
				informação</h2>
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-4 col-xl-3">
						<div class="card-container-imagia">
							<div class="card-imagia">
								<div class="front-imagia">
									<div class="cover-imagia">
										<img alt="" src="${contextPath}/img/fiapbg.jpg">
									</div>
									<div class="user-imagia">
										<img class="img-circle" alt=""
											src="${contextPath}/img/adler.jpg">
									</div>
									<div class="content-imagia">
										<h3 class="name-imagia">Adler Perez</h3>
										<p class="subtitle-imagia">Spring - Developer</p>
									</div>
								</div>
								<div class="back-imagia">
									<div class="content-imagia content-back-imagia">
									</div>
									<div class="footer-imagia">
										<div class="social-imagia text-center">
											<a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i
												class="fa fa-linkedin"></i></a><a href="#"><i
												class="fa fa-twitter"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 col-xl-3">
						<div class="card-container-imagia">
							<div class="card-imagia">

								<div class="front-imagia">
									<div class="cover-imagia">
										<img alt="" src="${contextPath}/img/fiapbg.jpg">
									</div>
									<div class="user-imagia">
										<img class="img-circle" alt=""
											src="${contextPath}/img/fernando.jpg">
									</div>
									<div class="content-imagia">
										<h3 class="name-imagia">Fernando Oliveira</h3>
										<p class="subtitle-imagia">ChatBot - Creator</p>
									</div>
								</div>
								<div class="back-imagia">
									<div class="footer-imagia">
										<div class="social-imagia text-center">
											<a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i
												class="fa fa-linkedin"></i></a><a href="#"><i
												class="fa fa-twitter"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 col-xl-3">
						<div class="card-container-imagia">
							<div class="card-imagia">
								<div class="front-imagia">
									<div class="cover-imagia">
										<img alt="" src="${contextPath}/img/fiapbg.jpg">
									</div>
									<div class="user-imagia">
										<img class="img-circle" alt=""
											src="${contextPath}/img/scappini.jpg">
									</div>
									<div class="content-imagia">
										<h3 class="name-imagia">Gabriel Scappini</h3>
										<p class="subtitle-imagia">Security - Provider</p>
									</div>
								</div>
								<div class="back-imagia">
									<div class="footer-imagia">
										<div class="float-none social-imagia text-center">
											<a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i
												class="fa fa-linkedin"></i></a><a href="#"><i
												class="fa fa-twitter"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card-container-imagia">
							<div class="card-imagia">
								<div class="front-imagia">
									<div class="cover-imagia">
										<img alt="" src="${contextPath}/img/fiapbg.jpg">
									</div>
									<div class="user-imagia">
										<img class="img-circle" alt=""
											src="${contextPath}/img/muller.jpg">
									</div>
									<div class="content-imagia">
										<h3 class="name-imagia">Matheus Muller</h3>
										<p class="subtitle-imagia">Flutter - Developer</p>
									</div>
								</div>
								<div class="back-imagia">
									<div class="footer-imagia">
										<div class="social-imagia text-center">
											<a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i
												class="fa fa-linkedin"></i></a><a href="#"><i
												class="fa fa-twitter"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<div class="footer-basic">
		<footer>
			<div class="social">
				<a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i
					class="icon ion-social-snapchat"></i></a><a href="#"><i
					class="icon ion-social-twitter"></i></a><a href="#"><i
					class="icon ion-social-facebook"></i></a>
			</div>
			<p class="copyright">Grupo Go4It © 2020</p>
		</footer>
	</div>
	
	
	<script src="${contextPath}/js/jquery.min.js"></script>
	<script src="${contextPath}/bootstrap/js/bootstrap.min.js"></script>
	<script src="${contextPath}/js/Bold-BS4-Jumbotron-with-Particles-js.js"></script>
	<script src="${contextPath}/js/Profile-Edit-Form.js"></script>
</body>
</html>