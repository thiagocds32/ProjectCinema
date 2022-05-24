package it.project.service;

import java.util.List;

import it.project.model.Posto;

public interface PostoService {
	void create(Posto pt);
	List<Posto> readAll();
	Posto getById(int id);

}
