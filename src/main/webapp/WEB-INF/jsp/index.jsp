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
	<h2>${nome}</h2>
	<h3>${email}</h3>
	<h3><a href="${git}">GIT</a></h3>
		
		<form action="/cliente" method="get">
			<button type="submit" class="btn btn-primary">Novo Cliente</button>
		</form>
		
		<form action="/locacao" method="get">
			<button type="submit" class="btn btn-primary">Nova Locacao</button>
		</form>
		
	</div>
</body>
</html>