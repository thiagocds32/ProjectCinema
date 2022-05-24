package it.project.service;

import java.util.List;

import it.project.model.Fila;

public interface FilaService {
	void create(Fila f);
	List<Fila> readAll();
	Fila getById(int id);

}
