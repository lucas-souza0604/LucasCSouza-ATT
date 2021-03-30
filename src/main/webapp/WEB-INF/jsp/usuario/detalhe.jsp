<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App AT</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

	<div class="container">
	
		<div class="painel-heading">
			<h2 style="text-align: center;font-family:Comic Sans MS;">Cadastro de Usuario</h2>
		</div>
		<br>
		
		<form action="/">
			<button type="submit" class="btn btn-primary btn-block">Login</button>
		</form>		
		<br>
		
		<form action="/usuario/incluir" method="post">
		
		<div class="form-group">
			<label>Nome</label>
			<input type="text" name="nome" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Email</label>
			<input type="email" name="email" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Senha</label>
			<input type="password" name="senha" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Github</label>
			<input type="text" name="git" class="form-control">
		</div>
		
		
		<button type="submit" class="btn btn-primary btn-block">Gravar</button>
		</form>
		
		<c:if test="${not empty lista}">
		
			  <h2 style="text-align: center;font-family:Comic Sans MS;">Listagem de Usuarios</h2>  
			  <br>        
			  <table class="w3-table-all">
			    <thead>
			      <tr class="w3-black">
			        <th>Nome</th>
			        <th>Email</th>
			        <th>Github</th>
			        <th></th>
			      </tr>
			    </thead>
			    <tbody>
			    <c:forEach var="u" items="${lista}">
			      <tr>
			        <td>${u.nome}</td>
			        <td>${u.email}</td>
			        <td>${u.git}</td>
			        <td><a style="color:red;" fontfont-weight=bold href="/usuario/${u.id}/excluir">excluir</a></td>
			      </tr>
			    </c:forEach>
			    </tbody>
			  </table>
		 </c:if>
		 
		 
		 <c:if test="${empty lista}">
		 	<h2>Nenhum usuario cadastrado</h2> 
		 </c:if>
		
	</div>
</body>
</html>