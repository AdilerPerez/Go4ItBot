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

<title>Listagem de seguimentos</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<link href="${contextPath}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/fonts/font-awesome.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/fontawesome-all.min.css"
	rel="stylesheet">
<link href="${contextPath}/fonts/font-awesome.min" rel="stylesheet">
<link href="${contextPath}/fonts/ionicons.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/typicons.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/fontawesome5-overrides.min.css"
	rel="stylesheet">
<link href="${contextPath}/css/Styles.min.css" rel="stylesheet">

</head>

<body style = "margin:0">
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



	<a href="${contextPath}/bot/form?page=bot-novo"
		style="position: relative; left: 1350px">
		<button class="btn btn-primary" data-toggle="modal"
			data-target="#modal1" type="button">Adicionar ChatBot</button>
	</a>
	<div class="container">
		<h2 style="width: 343px;">Lista de ChatBots</h2>

		<div class="row product-list dev">

			<c:forEach items="${bots}" var="bot">
				<div
					class="col-sm-6 col-md-4 product-item animation-element slide-top-left">
					<div class="product-container">
						<div class="row">
							<div class="col-md-12">
								<a class="product-image" href="#"><img
									src="${contextPath}/img/chatbot-bgimage.jpg"></a>
							</div>
						</div>
						<div class="row">
							<div class="col-8">
								<h2>${bot.name}</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<p class="product-description">
									<b>Mensagem de boas vindas:</b>${bot.welcome_msg}
								</p>
								<p class="product-description">
									<b>Mensagem de despedida:</b> ${bot.farewell_msg}
								</p>
								<p class="product-description">
									<b>Tempo de espera:</b> ${bot.downtime}
								</p>
								<p class="product-description">
									<b>Resposta padrão:</b>${bot.default_answer}
								</p>
								<p class="product-description">
									<b>Segmentos: ${bot.segments}</b>
								</p>

							</div>
						</div>
						<form:form action="${contextPath}/bot/${bot.id}" method="delete">
							<a class="btn btn-success btn-xs"
								href="${contextPath}/bot/${bot.id}"> Detalhes </a>
							<a class="btn btn-warning btn-xs"
								href="${contextPath}/bot/form?page=bot-editar&id=${bot.id}">
								Editar </a>
							<input type="submit" value="Excluir"
								class="btn btn-danger btn-xs">
						</form:form>
					</div>


				</div>
			</c:forEach>
		</div>
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
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/Profile-Edit-Form.js"></script>
</body>
</html>