package it.project.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import it.project.model.Film;

@RequestMapping
public class FilmDaoImpl implements FilmDao {

	@PersistenceContext
	private EntityManager manager;

	@Override
	@Transactional
	public void create(Film f) {
		manager.persist(f);
	}

	@Override
	@Transactional
	public void update(Film f) {
		manager.merge(f);

	}

	@Override
	@Transactional
	public void delete(Film f) {
		manager.remove(manager.merge(f));

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Film> readAll() {
		return manager.createQuery("SELECT f FROM Film f").getResultList();
	}

}
