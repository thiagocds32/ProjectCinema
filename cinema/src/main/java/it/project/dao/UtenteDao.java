package it.project.dao;

import java.util.List;

import it.project.model.Utente;

public interface UtenteDao{
	void create(Utente u);
	void update(Utente u);
	void delete(Utente u);
	List<Utente> readAll();
	boolean checkUten(Utente u);
}

