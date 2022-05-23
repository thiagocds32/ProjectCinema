package it.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.dao.SalaDao;

import it.project.model.Sala;

@Service
public class SalaServiceImpl implements SalaService {

	@Autowired
	private SalaDao dao;

	@Override
	public void create(Sala s) {
		dao.create(s);
	}

	@Override
	public void update(Sala s) {
		dao.update(s);

	}

	@Override
	public void delete(Sala s) {
		dao.delete(s);

	}

	@Override
	public List<Sala> readAll() {
		return dao.readAll();
	}

	@Override
	public Sala readById(int titolo) {
		return dao.readById(titolo);
	}

}
