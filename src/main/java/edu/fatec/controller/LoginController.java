package edu.fatec.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import edu.fatec.annotations.AreaPublica;
import edu.fatec.model.Autenticado;

@Controller
public class LoginController {
	
	private final Result result;
	private Autenticado autenticado;
	
	@Inject
	public LoginController(Result result, Autenticado autenticado) {
		this.result = result;
		this.autenticado = autenticado;
	}
	
	public LoginController() {
		this(null, null);
	}

	@Get 
	@AreaPublica
	public void signin() {
		
	}
	
	@Post
	@AreaPublica
	public void auth(String usuario, String senha) {
		if(usuario.equals("admin") && senha.equals("admin")) {
			autenticado.setLoginEfetuado(true);
			result.redirectTo("/");
			return ;
		}
			
		result.include("danger", "Usuário ou senha inválidos.").forwardTo(this).signin();
	}
	
	@Get
	public void logout() {
		autenticado.setLoginEfetuado(false);
		result.redirectTo("/login/signin");
	}
	
}
