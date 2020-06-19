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

<title>Segmento-Cadastro</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<link href="${contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/font-awesome.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/ionicons.min.css" rel="stylesheet">
<link href="${contextPath}/fonts/typicons.min.css" rel="stylesheet">
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
	<div style="margin: 80px;">
		<div class="container profile profile-view" id="profile">
			<form:form modelAttribute="segmentModel" action="${contextPath}/segment"
				method="post">

				<spring:hasBindErrors name="segmentModel">
					<div class="alert alert-danger" role="alert" style = "float:left">
						<form:errors path="*" class="has-error" />
					</div>
				</spring:hasBindErrors>

				<div class="form-row profile-row">
					<div class="col-md-4 relative">
						<div class="avatar-bg center"></div>
					</div>

					<div class="col-md-8">
						<h1>Cadastro de Segmento</h1>
						<hr>
						<div class="form-row">
							<div class="col-sm-12 col-md-6">
								<div class="form-group">
									<label>Nome do Segmento</label>
									<form:input type="text" path="name" id="name"
										class="form-control" />
								</div>
							</div>
						</div>
						<hr>
						<div class="form-row">
							<div class="col-md-12 content-right">
								<button class="btn btn-primary form-btn" type="submit">CADASTRAR</button>
							</div>
						</div>
					</div>
				</div>
			</form:form>
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