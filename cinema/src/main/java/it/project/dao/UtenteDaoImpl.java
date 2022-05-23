package it.project.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import it.project.model.Utente;

@Repository
public class UtenteDaoImpl implements UtenteDao{
	
	@PersistenceContext
	private EntityManager manager;

	@Override
	@Transactional
	public void create(Utente u) {
		manager.persist(u);
	}

	@Override
	@Transactional
	public void update(Utente u) {
		manager.merge(u);
		
	}

	@Override
	@Transactional
	public void delete(Utente u) {
		manager.remove(manager.merge(u));
	
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Utente> readAll() {
		return manager.createQuery("SELECT u FROM Utente u").getResultList();
	}

	@Override
	public boolean checkUten(Utente u) {
		return ((UtenteDaoImpl) manager).checkUten(u);
	}

	@Override
	public boolean login(Utente u) {
		return ((UtenteDaoImpl) manager).login(u);
	}

}
