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
			<h2>Cadastro de Locacao</h2>
		</div>
		
		<form action="/">
			<button type="submit" class="btn btn-link">Home</button>
		</form>
		
		<form action="/locacao/incluir" method="post">
		
		<div class="form-group">
			<label>Informe a descricao da Locacao</label>
			<input type="text" name="descricao" class="form-control">
		</div>
		
		
		<button type="submit" class="btn btn-primary">Gravar</button>
		</form>
		
		<c:if test="${not empty lista}">
		
			  <h2>Listagem de Locacao</h2>          
			  <table class="table">
			    <thead>
			      <tr>
			        <th>Descricao</th>
			        <th></th>
			      </tr>
			    </thead>
			    <tbody>
			    <c:forEach var="l" items="${lista}">
			      <tr>
			        <td>${l.descricao}</td>
			        <td><a style="color:red;" fontfont-weight=bold href="/locacao/${l.id}/excluir">excluir</a></td>
			      </tr>
			    </c:forEach>
			    </tbody>
			  </table>
		 </c:if>
		 
		 
		 <c:if test="${empty lista}">
		 	<h2>Nenhuma Locacao cadastrada</h2> 
		 </c:if>
	</div>
</body>
</html>