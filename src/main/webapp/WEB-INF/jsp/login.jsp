<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App AT</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
	
		<div class="painel-heading">
			<h2 style="text-align: center;font-family:Comic Sans MS;">Sistema de Locacao de Automoveis</h2>
		</div>
		
		<form action="/usuario">
			<button type="submit" class="btn btn-primary btn-block">Novo Usuario</button>
		</form>
		<br>
		
		
		<c:if test="${not empty mensagem}">
			<div class="alert alert-warning">
	    		<strong>Aviso: </strong> ${mensagem}
	  		</div>
  		</c:if>
		
		<form action="/usuario/login" method="post">
		
		<div class="form-group">
			<label>Informe o e-mail</label>
			<input type="email" name="email" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Informe a senha</label>
			<input type="password" name="senha" class="form-control">
		</div>
		
		
		<button type="submit" class="btn btn-primary btn-block">Login</button>
		</form>
	</div>

</body>
</html>