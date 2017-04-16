package edu.fatec.interceptors;

import javax.inject.Inject;

import br.com.caelum.vraptor.Accepts;
import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;
import edu.fatec.annotations.AreaPublica;
import edu.fatec.controller.LoginController;
import edu.fatec.model.Autenticado;

@Intercepts
public class AutenticadoInterceptor {

	@Inject 
	private Autenticado autenticado;
	@Inject 
	private Result result;
	@Inject
	private ControllerMethod cm;
	
	@Accepts
	public boolean accepts() {
		return !cm.containsAnnotation(AreaPublica.class);
	}
	
	@AroundCall
	public void intercept(SimpleInterceptorStack stack)
	{
		System.out.println(autenticado.isLoginEfetuado());
		if(!autenticado.isLoginEfetuado()) {
			result.redirectTo(LoginController.class).signin();
			return;
		}
		
		stack.next();
	}
	
}
