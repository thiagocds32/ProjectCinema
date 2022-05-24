package it.project.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.dao.PoltronaDao;
import it.project.model.Poltrona;

@Service
public class PoltronaServiceImpl implements PoltronaService{
	
	@Autowired
	private PoltronaDao dao;

	@Override
	public void create(Poltrona p) {
		dao.create(p);		
	}

	@Override
	public List<Poltrona> readAll() {
		return dao.readAll();
	}

	@Override
	public Poltrona getPoltronaById(int id) {
		return null;
	}
	

}
