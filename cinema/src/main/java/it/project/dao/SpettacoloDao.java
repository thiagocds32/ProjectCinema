package it.project.dao;

import java.util.List;

import it.project.model.Film;
import it.project.model.Spettacolo;

public interface SpettacoloDao {
	void create(Spettacolo s);
	void update(Spettacolo s);
	void delete(Spettacolo s);
	List<Spettacolo> readAll();
	List<Film> getFilmsBy(String searchBy);
}
