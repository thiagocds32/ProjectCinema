package it.project.service;

import java.util.List;

import it.project.model.Poltrona;

public interface PoltronaService {
	void create(Poltrona p);
	List<Poltrona> readAll();
	Poltrona getPoltronaById(int id);

}
