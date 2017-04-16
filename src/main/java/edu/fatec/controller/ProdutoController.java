package edu.fatec.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import edu.fatec.dao.ProdutoDAO;
import edu.fatec.model.Produto;

@Controller
public class ProdutoController {

	private final Result result;
	private ProdutoDAO dao;

	/**
	 * @deprecated CDI eyes only
	 */
	protected ProdutoController() {
		this(null, null);
	}
	
	@Inject
	public ProdutoController(Result result, ProdutoDAO dao) {
		this.result = result;
		this.dao = dao;
	}

	@Path("/")
	public List<Produto> lista() {
		return dao.selecionaTodos();
	}
	
	@Path("/novo")
	public void novo() {
		
	}
	
	@Get("/edita/{id}")
	public Produto edita(long id) {
		return dao.selecionaPor(id);
	}
	
	@Post("/salva")
	public void salva(long id, String nome, String descricao, double valor) {
		Produto p = new Produto();
		p.setId(id);
		p.setNome(nome);
		p.setDescricao(descricao);
		p.setValor(valor);
		
		dao.adiciona(p);
		
		result.include("success", "Produto salvo com sucesso.")
		.redirectTo(this).lista();
	}
	
	
	@Post("/altera")
	public void altera(long id, String nome, String descricao, double valor) {
		
		Produto prod = dao.selecionaPor(id);
		
		prod.setDescricao(descricao);
		prod.setNome(nome);
		prod.setValor(valor);
		
		dao.atualiza(prod);
		
		result.include("success", "Produto alterado com sucesso.")
		.redirectTo(this).lista();
	}
	
	@Path("/remove/{id}")
	public void remove(long id) {
		
		dao.remove(dao.selecionaPor(id));
		
		result.include("danger", "Produto removido com sucesso.")
		.redirectTo(this).lista();
	}
	
}