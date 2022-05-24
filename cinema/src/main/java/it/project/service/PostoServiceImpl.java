package it.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.dao.PostoDao;
import it.project.model.Posto;

@Service
public class PostoServiceImpl implements PostoService{

	@Autowired
	private PostoDao dao;
	
	@Override
	public void create(Posto pt) {
		dao.create(pt);
	}

	@Override
	public List<Posto> readAll() {
		return dao.readAll();
	}

	@Override
	public Posto getById(int id) {
		return dao.getById(id);
	}

}
