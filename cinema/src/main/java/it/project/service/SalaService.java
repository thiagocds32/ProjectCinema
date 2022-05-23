package it.project.service;

import java.util.List;

import it.project.model.Sala;

public interface SalaService {

	void create(Sala s);
	void update(Sala s);
	void delete(Sala s);
	List<Sala> readAll();
	Sala readById(int titolo);
}
