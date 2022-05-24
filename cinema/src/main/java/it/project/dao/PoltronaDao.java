package it.project.dao;

import java.util.List;

import it.project.model.Poltrona;

public interface PoltronaDao {
	
	void create(Poltrona p);
	List<Poltrona> readAll();
	Poltrona getPoltronaById(int id);

}
