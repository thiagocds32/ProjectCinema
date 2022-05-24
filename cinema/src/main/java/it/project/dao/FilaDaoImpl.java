package it.project.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import it.project.model.Fila;

@Repository
public class FilaDaoImpl implements FilaDao{

	@PersistenceContext
	private EntityManager manager;
	
	@Override
	@Transactional
	public void create(Fila f) {
		manager.persist(f);		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Fila> readAll() {
		return manager.createQuery("SELECT f FROM Fila f").getResultList();
	}

	@Override
	public Fila getById(int id) { 
	    return (Fila) manager.createQuery("SELECT f FROM Fila f WHERE f.id LIKE :x")
	            .setParameter("x", id)
	            .getSingleResult();	
	}
	
}
