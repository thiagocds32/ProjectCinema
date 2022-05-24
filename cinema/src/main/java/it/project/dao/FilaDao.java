package it.project.dao;

import java.util.List;

import it.project.model.Fila;

public interface FilaDao {
	
	void create(Fila f);
	List<Fila> readAll();
	Fila getById(int id);
	}
