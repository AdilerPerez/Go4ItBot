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

<title>Listagem de segmentos</title>

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
			data-target="#modal1" type="button">Adicionar Segmento</button>
	</a>
	<div class="container">
		<h2 style="width: 343px;">Lista de Segmentos</h2>
		<div class="row product-list dev">

			<c:forEach items="${segments}" var="segment">
				<div
					class="col-sm-6 col-md-4 product-item animation-element slide-top-left">
					<div class="product-container">
						<div class="row">
							<div class="col-md-12">
								<a class="product-image" href="#"><img
									src="${contextPath}/img/segment-bgimage.jpg"></a>
							</div>
						</div>

						<div class="row">
							<div class="col-8">
								<h2>${segment.name}</h2>
							</div>
						</div>
						<form:form action="${contextPath}/segment/${segment.id}"
							method="delete">
							<a class="btn btn-success btn-xs"
								href="${contextPath}/segment/${segment.id}"> Detalhes </a>
							<a class="btn btn-warning btn-xs"
								href="${contextPath}/segment/form?page=segment-editar&id=${segment.id}">
								Editar </a>
							<input type="submit" value="Excluir"
								class="btn btn-danger btn-xs">
						</form:form>


					</div>
				</div>
			</c:forEach>
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