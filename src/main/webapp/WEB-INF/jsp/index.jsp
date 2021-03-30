<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APP ATT LOCADORA DE AUTOMOVEIS</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
	<h2 style="font-family:Comic Sans MS;">Usuario</h2>
	<h3>${user.nome}</h3>
	<h2 style="font-family:Comic Sans MS;">Email</h2>
	<h3>${user.email}</h3>
	<h3><a href="${user.git}">GIT</a></h3>
	<br>
		
	<form action="/cliente" method="get">
		<button type="submit" class="btn btn-primary btn-block">Novo Cliente</button>
	</form>
	<br>
	<br>
	<form action="/locacao" method="get">
		<button type="submit" class="btn btn-primary btn-block">Nova Locacao</button>
	</form>
	<br>
	<br>
	<form action="/" method="get">
		<button type="submit" class="btn btn-danger btn-block">Sair</button>
	</form>
		
	</div>
</body>
</html>