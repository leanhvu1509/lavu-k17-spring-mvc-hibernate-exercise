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
		<p>
			<c:if test="${message != null}">
				<span class="message alert alert-success" >${message}</span>
			</c:if>
		</p>
				
		<div class="card">
			<div class="card-header">${title}</div>
			<div class="card-body">
				<form:form action="new" modelAttribute="product"
					method="post">

					<div class="form-group row">
						<label for="code" class="col-sm-2 col-form-label">Code</label>
						<div class="col-sm-7">
							<form:input type="text" class="form-control" path="code"
								placeholder="Enter code"></form:input>
						</div>
					</div>
					<div class="form-group row">
						<label for="name" class="col-sm-2 col-form-label">Name</label>
						<div class="col-sm-7">
							<form:input type="text" class="form-control" path="name"
								placeholder="Enter name"></form:input>
						</div>
					</div>
					<div class="form-group row">
						<label for="product" class="col-sm-2 col-form-label">Price</label>
						<div class="col-sm-7">
							<form:input type="number" class="form-control" path="price"
								placeholder="Enter price"></form:input>
						</div>
					</div>
					<button type="submit" class="btn btn-primary">Save</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>