package it.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.dao.FilaDao;
import it.project.model.Fila;

@Service
public class FilaServiceImpl implements FilaService{

	@Autowired
	private FilaDao dao;
	
	@Override
	public void create(Fila f) {
		dao.create(f);		
	}

	@Override
	public List<Fila> readAll() {
		return dao.readAll();
	}

	@Override
	public Fila getById(int id) {
		return dao.getById(id);
	}
	
	
	

}
