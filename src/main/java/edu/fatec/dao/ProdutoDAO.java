package edu.fatec.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import edu.fatec.model.Produto;

public class ProdutoDAO {
	
	private EntityManager em;
	
	@Inject
	public ProdutoDAO(EntityManager em) {
		this.em = em; 
	}
	
	
	public boolean adiciona(Produto p) {
		em.getTransaction().begin();
		em.persist(p);
		em.getTransaction().commit();
		
		return true;
	}
	
	public boolean atualiza(Produto p) {
		em.getTransaction().begin();
		em.merge(p);
		em.getTransaction().commit();
		
		return true;
	}
	
	public boolean remove(Produto p) {
		em.getTransaction().begin();
		em.remove(p);
		em.getTransaction().commit();
		
		return true;
	}
	
	@SuppressWarnings("unchecked")
	public List<Produto> selecionaTodos() {
		return (List<Produto>) em.createQuery("select p from Produto p").getResultList();
	}
	
	public Produto selecionaPor(long id) {
		return em.find(Produto.class, id);
	}
	
}
