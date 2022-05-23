package it.project.service;
import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import it.project.dao.FilmDao;
import it.project.model.Film;

@Service
public class FilmServiceImpl implements FilmService{


	@Autowired
	private FilmDao dao;

	@Override
	public void create(Film f) {
		dao.create(f);
	}

	@Override
	public void update(Film f) {
		dao.update(f);

	}

	@Override
	public void delete(Film f) {
		dao.delete(f);

	}

	@Override
	public List<Film> readAll() {
		return dao.readAll();
	}

	@Override
	public Film readById(int titolo) {
		return dao.readById(titolo);
	}

}
