package it.project.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import it.project.model.Film;
import it.project.model.Sala;

@Repository
public class SalaDaoImpl implements SalaDao {

	@PersistenceContext
	private EntityManager manager;

	@Override
	@Transactional
	public void create(Sala s) {
		manager.persist(s);
	}

	@Override
	@Transactional
	public void update(Sala s) {
		manager.merge(s);

	}

	@Override
	@Transactional
	public void delete(Sala s) {
		manager.remove(manager.merge(s));

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Sala> readAll() {
		return manager.createQuery("SELECT s FROM Sala s").getResultList();
	}
	
	@Override
	public Sala readById(int titolo) { 
	return (Sala) manager.createQuery("SELECT s FROM Sala s WHERE s.id LIKE :sTitolo")
			.setParameter("sTitolo", titolo)
			.getSingleResult();
	}

}
