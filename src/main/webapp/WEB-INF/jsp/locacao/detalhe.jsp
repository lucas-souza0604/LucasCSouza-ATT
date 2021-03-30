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
			<h2 style="text-align: center;font-family:Comic Sans MS;">Cadastro de Locacao</h2>
		</div>
		<br>
		
		<form action="/home">
			<button type="submit" class="btn btn-primary btn-block">Home</button>
		</form>		
		
		<form action="/locacao/incluir" method="post">
		
		<div class="form-group">
			<label>Informe a descricao da Locacao</label>
			<input type="text" name="descricao" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Informe o tipo de automovel</label>
			<br>
			<select class="form-control">
				<option value="automovel">Carro</option>
				<option value="automovel">Moto</option>
				<option value="automovel">Barco</option>
			</select>
		</div>
		
		<div class="form-group">
			<label>Informe o modelo de automovel</label>
			<input type="text" name="modelo" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Informe a quantidade de dias de locacao</label>
			<input type="text" name="dias" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Informe o valor da diaria do automovel</label>
			<input type="text" name="valor_diaria" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Informe o Cliente</label>
			<select class="form-control" name="cliente.id">
				<c:forEach var="c" items="${clientes}">
					<option value="${c.id}">${c.nome}</option>
			    </c:forEach>
			</select>
		</div>
		
		
		<button type="submit" class="btn btn-primary btn-block">Registrar</button>
		</form>
		
		<c:if test="${not empty lista}">
		
			  <h2 style="text-align: center;font-family:Comic Sans MS;">Listagem de Locacao</h2>    
			  <br>      
			  <table class="w3-table-all">
			    <thead>
			      <tr class="w3-black">
			        <th>Descricao</th>
			        <th>Automovel</th>
			        <th>Modelo</th>
			        <th>Dias</th>
			        <th>Valor da Diaria</th>
			        <th>Cliente</th>
			        <th></th>
			      </tr>
			    </thead>
			    <tbody>
			    <c:forEach var="l" items="${lista}">
			      <tr>
			        <td>${l.descricao}</td>
			        <td>${l.automovel}</td>
			        <td>${l.modelo}</td>
			        <td>${l.dias}</td>
			        <td>R$ ${l.valor_diaria}</td>
			        <td>${l.cliente.nome}</td>
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