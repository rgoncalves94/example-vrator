package edu.fatec.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {

	public static EntityManager criaEntityManager() {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("bd");
		return factory.createEntityManager();
	}
}
