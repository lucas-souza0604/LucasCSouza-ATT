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
			<h2 style="text-align: center;font-family:Comic Sans MS;">Cadastro de Clientes</h2>
		</div>
		<br>
	
		<form action="/home">
			<button type="submit" class="btn btn-primary btn-block">Home</button>
		</form>
		
		<c:if test="${not empty mensagem}">
			<div class="alert alert-danger">
	    		<strong>Aviso: </strong> ${mensagem}
	  		</div>
  		</c:if>
		
		<form action="/cliente/incluir" method="post">
		
		<div class="form-group">
			<label>Informe a seu nome</label>
			<input type="text" name="nome" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Informe a seu CPF</label>
			<input type="text" name="cpf" maxlength="11" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Informe a sua CNH</label>
			<input type="text" name="cnh" maxlength="11" class="form-control">
		</div>
		
		
		<button type="submit" class="btn btn-primary btn-block">Registrar</button>
		</form>
		
		<c:if test="${not empty lista}">
		
			  <h2 style="text-align: center;font-family:Comic Sans MS;">Listagem de Clientes</h2>   
			  <br>       
			  <table class="w3-table-all">
			    <thead>
			      <tr class="w3-black">
			        <th>Nome</th>
			        <th>CPF</th>
			        <th>CNH</th>
			        <th></th>
			      </tr>
			    </thead>
			    <tbody>
			    <c:forEach var="c" items="${lista}">
			      <tr>
			        <td>${c.nome}</td>
			        <td>${c.cpf}</td>
			        <td>${c.cnh}</td>
			        <td><a style="color:red;" fontfont-weight=bold href="/cliente/${c.id}/excluir">excluir</a></td>
			      </tr>
			    </c:forEach>
			    </tbody>
			  </table>
		 </c:if>
		 
		 
		 <c:if test="${empty lista}">
		 	<h2>Nenhum cliente cadastrado</h2> 
		 </c:if>
	</div>
</body>
</html>