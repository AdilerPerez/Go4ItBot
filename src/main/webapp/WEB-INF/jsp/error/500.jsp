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

<title>500 - Página de erro</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<link href="${contextPath}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/fonts/font-awesome.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/ionicons.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/typicons.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/fontawesome5-overrides.min.css" rel="stylesheet">
<link href="${contextPath}/css/Styles.min.css" rel="stylesheet">

</head>

<body style="margin: 0;">
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
	<div class="jumbotron-circular-addon-wrapper">
		<div
			class="jumbotron-addon jumbotron-addon-top jumbotron-addon-circle">
			<span class="bg-warning"> <i class="fa fa-arrow-down"></i></span>
		</div>
		<div class="jumbotron">
			<h1 style="font-size: 30px;">Não é possível excluir um bot
				com segmento associado!</h1>
			<p>
				<a class="btn btn-light" role="button" href="${contextPath}/bot">Listar Chatbots</a>
			</p>
		</div>
		<div
			class="jumbotron-addon jumbotron-addon-bottom jumbotron-addon-circle">
			<span class="bg-warning"><i class="fa fa-arrow-up"></i></span>
		</div>
	</div>
	<div class="footer-basic" style = "margin-top:350px">
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
	<script src="${contextPath}/js/Profile-Edit-Form.js"></script>
</body>

</html>