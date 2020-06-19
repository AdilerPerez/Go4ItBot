<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

<title>ChatBot-Editar</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<link href="${contextPath}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/fonts/font-awesome.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/ionicons.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/typicons.min.css" rel="stylesheet">
<link href="${contextPath}/css/styles.min.css" rel="stylesheet">



</head>

<body style = "margin:0">
	<div class="collapse navbar-collapse" id="navcol-1"></div>
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
	<div class="register-photo" style="background-color: #ffffff;">
		<div class="form-container">
			<div class="image-holder"
				style="background-image: url(${contextPath}/img/chatbot-bgimage.png)"></div>

			<form>
				<h2 class="text-center">
					<strong>Descrição do Segmento</strong>
				</h2>
				<div class="form-group">
					<label>Nome:</label> <label class="label label-default">${segment.name}</label>
				</div>
				<a href="${contextPath}/segment">
					<button class="btn btn-primary" 
						type="button" style="margin-top: 20px; margin-left: 250px;">Voltar</button>
				</a>
			</form>
		</div>
	</div>
	<div class="footer-basic" style = "margin-top:200px">
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