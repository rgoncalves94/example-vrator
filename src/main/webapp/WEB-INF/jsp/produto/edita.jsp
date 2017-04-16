<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Novo Produto</title>
	<link rel="stylesheet" href="/produtos/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/produtos/bootstrap/css/bootstrap-theme.min.css" />
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
	<script src="/produtos/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="text-center jumbotron">
		  	<h1>Produtos</h1>
		  	<p>Sistema de cadastros de produtos</p>
		</div>
		<c:import url="../mensagens.jsp" />
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="">Formulário de Produto</h3>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<form id="form-produto" action="/produtos/altera" method="post" class="form-horizontal">
							<input type="hidden" id="id" name="id" value="${produto.id }" />
							<div class="form-group">
				                <label for="nome" class="col-md-2 control-label">Nome</label>
				
				                <div class="col-md-10">
				                  	<input type="text" class="form-control" name="nome" id="nome" placeholder="Nome" value="${produto.nome }">
				                </div>
				            </div>
				            <div class="form-group">
				                <label for="descricao" class="col-md-2 control-label">Descrição</label>
				
				                <div class="col-md-10">
				                  	<textarea class="form-control" id="descricao" name="descricao" placeholder="Descricao">${produto.descricao }</textarea>
				                </div>
				            </div>
				            
				            <div class="form-group">
				                <label for="valor" class="col-md-2 control-label">Valor</label>
				
				                <div class="col-md-10">
				                  	<input type="text" class="form-control" id="valor" name="valor" placeholder="Valor" value="${produto.valor }">
				                </div>
				            </div>
				            
				            <div class="form-group">
				            	<div class="col-sm-2"></div>
				            	<div class="col-sm-10">
				            		<button type="submit" class="btn btn-success">
				            			<i class="fa fa-save"></i> Salvar
				            		</button>
				            		
				            		<a href="/produtos" class="btn btn-default">
				            			<i class="fa fa-reply"></i> Voltar
				            		</a>
				            	</div>
				            </div>
				    	</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>