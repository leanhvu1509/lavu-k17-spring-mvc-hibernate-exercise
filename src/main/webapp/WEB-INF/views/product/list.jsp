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
					<li class="nav-item active"><a class="nav-link" href="<%=request.getContextPath()%>/home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/products">Product</a></li>
				</ul>
			</div>
		</nav>
		<br>
		<div class="card">
			<div class="card-header">${title}</div>
			<div class="card-body">
			<a href="products/new" class="btn btn-primary m-2">Add</a>
			
				<table class="table">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Code</th>
							<th scope="col">Price</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${products}">
							<tr>
								<th scope="row">${p.getId()}</th>
								<td><a href="<%=request.getContextPath()%>/products/${p.getId()}"> ${p.getName()}</a></td>
								<td>${p.getCode()}</td>
								<td>${p.getPrice()}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<a href="<%=request.getContextPath()%>/home" class="btn btn-primary">Go home</a>
			</div>
		</div>
		<div></div>
	</div>
</body>
</html>