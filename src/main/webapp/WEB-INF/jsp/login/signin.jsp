<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Autenticação</title>
	<link rel="stylesheet" href="/produtos/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/produtos/bootstrap/css/bootstrap-theme.min.css" />
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
	<script src="/produtos/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<c:import url="../mensagens.jsp" />
		<div style="padding-top:10%" class="row">
			<div class="col-sm-offset-4 col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="">Identifique-se</h3>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<form id="form-produto" action="/produtos/login/auth" method="post" class="form-horizontal">
							<div class="form-group">
				                <label for="usuario" class="col-md-2 control-label">Usuario</label>
				
				                <div class="col-md-10">
				                  	<input type="text" class="form-control" id="usuario" name="usuario" placeholder="Usuario">
				                </div>
				            </div>
				            <div class="form-group">
				                <label for="senha" class="col-md-2 control-label">Senha</label>
				
				                <div class="col-md-10">
				                  	<input type="text" class="form-control" id="senha" name="senha" placeholder="Senha">
				                </div>
				            </div>
				            
				            <div class="form-group">
				            	<div class="col-sm-2"></div>
				            	<div class="col-sm-10">
				            		<button type="submit" class="btn btn-success btn-lg">
				            			<i class="fa fa-check"></i> Entrar
				            		</button>
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