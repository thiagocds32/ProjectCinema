package it.project.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import it.project.model.Posto;

@Repository
public class PostoDaoImpl implements PostoDao {

	@PersistenceContext
	private EntityManager manager;

	@Override
	@Transactional
	public void create(Posto pt) {
		manager.persist(pt);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Posto> readAll() {
		return manager.createQuery("SELECT pt FROM Posto pt").getResultList();
	}
	
	@Override
    public Posto getById(int id) { 
    return (Posto) manager.createQuery("SELECT pt FROM Posto pt WHERE pt.id LIKE :x")
            .setParameter("x", id)
            .getSingleResult();
    }

}
