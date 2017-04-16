package edu.fatec.producers;

import javax.enterprise.inject.Produces;
import javax.persistence.EntityManager;

import edu.fatec.util.JPAUtil;

public class EntityManagerProducer {
	
	@Produces
	public EntityManager criaEntityManager() {
		return JPAUtil.criaEntityManager();
	}
	
}
