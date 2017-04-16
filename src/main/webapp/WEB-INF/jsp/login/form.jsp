<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="/produtos/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/produtos/bootstrap/css/bootstrap-material-design.min.css" />
	<link rel="stylesheet" href="/produtos/bootstrap/css/ripples.min.css" />
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
	<script src="/produtos/bootstrap/js/bootstrap.min.js"></script>
	<script src="/produtos/bootstrap/js/material.min.js"></script>
	<script src="/produtos/bootstrap/js/ripples.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="text-center jumbotron">
		  	<h1>Produtos: Listagem</h1>
		  	<p>Confira abaixo a listagem dos produtos já cadastrados no sistema.</p>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6">
								<h3 class="">Lista de produtos</h3>
							</div>
							<div class="col-sm-6 text-right">
								<a href="/produtos/novo" class="btn btn-success btn-raised">
									<i class="fa fa-plus"></i> Novo produto
								</a>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<table class="table table-stripped table-active">
							<thead>
								<tr>
									<th class="text-center">#</th>
									<th class="text-center">Dt. Cadastro</th>
									<th class="text-center">Produto</th>
									<th class="text-center">Descrição</th>
									<th class="text-center">Valor</th>
									<th class="text-center">Ações</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${produtoList}" var="produto">
								<tr>
									<td class="text-center">${produto.id }</td>
									<td class="text-center">${produto.dtCadastro}</td>
									<td class="text-center">${produto.nome}</td>
									<td class="text-center">${produto.descricao}</td>
									<td class="text-center">${produto.valor}</td>
									<td class="text-center">
										<a href="/produtos/edita/${produto.id}" class="btn btn-primary btn-raised">
											<i class="fa fa-pencil"></i> Editar
										</a>
										<a href="/produtos/remove/${produto.id}" class="btn btn-danger btn-raised">
											<i class="fa fa-trash"></i> Remover
										</a>
									</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>					
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>