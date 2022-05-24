package it.project.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import it.project.model.Poltrona;

@Repository
public class PoltronaDaoImpl implements PoltronaDao{

	@PersistenceContext
	private EntityManager manager;
		
	@Override
	@Transactional
	public void create(Poltrona p) {
		manager.persist(p);		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Poltrona> readAll() {
		return manager.createQuery("SELECT p FROM Poltrona p").getResultList();
	}

	@Override
	public Poltrona getPoltronaById(int id) {
		return null;
	}

}
