<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Hibernate - ${title}</title>
</head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="<%=request.getContextPath()%>/home">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath()%>/products">Product</a></li>
				</ul>
			</div>
		</nav>
		<br>
		<div class="card">
			<div class="card-header">${title}</div>
			<div class="card-body">
				<div class="row">
					<div class="col-3">Id:</div>
					<div class="col-9">${product.getId()}</div>
				</div>
				<div class="row">
					<div class="col-3">Code:</div>
					<div class="col-9">${product.getCode()}</div>
				</div>
				<div class="row">
					<div class="col-3">Name:</div>
					<div class="col-9">${product.getName()}</div>
				</div>
				<div class="row">
					<div class="col-3">Price:</div>
					<div class="col-9">${product.getPrice()}</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>