package it.project.service;

import java.util.List;

import it.project.model.Utente;

public interface UtenteService {

	void create(Utente u);
	void update(Utente u);
	void delete(Utente u);
	List<Utente> readAll();
	boolean checkUten(Utente u);
}
