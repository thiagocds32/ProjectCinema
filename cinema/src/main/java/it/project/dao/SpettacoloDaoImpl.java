package it.project.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import it.project.model.Film;
import it.project.model.Spettacolo;

@Repository
public class SpettacoloDaoImpl implements SpettacoloDao {

	@PersistenceContext
	private EntityManager manager;

	@Override
	@Transactional
	public void create(Spettacolo s) {
		manager.persist(s);
	}

	@Override
	@Transactional
	public void update(Spettacolo s) {
		manager.merge(s);

	}

	@Override
	@Transactional
	public void delete(Spettacolo s) {
		manager.remove(manager.merge(s));

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Spettacolo> readAll() {
		return manager.createQuery("SELECT s FROM Spettacolo s").getResultList();
	}
	
	@Override
	public List<Film> getFilmsBy(String searchBy) { 
		char[] confronto = searchBy.toCharArray();
	return manager.createQuery("SELECT f FROM Spettacolo s INNER JOIN s.film f WHERE f.titolo LIKE CONCAT('%',:x,'%')", Film.class)
			.setParameter("x", confronto)
			.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Film> getProgrammazione() { 
		return manager.createQuery("SELECT DISTINCT f FROM Spettacolo s INNER JOIN s.film f").getResultList();
	}

}
