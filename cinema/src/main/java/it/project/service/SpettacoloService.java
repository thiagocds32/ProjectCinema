package it.project.service;

import java.util.List;

import it.project.model.Film;
import it.project.model.Spettacolo;

public interface SpettacoloService {
	void create(Spettacolo s);
	void update(Spettacolo s);
	void delete(Spettacolo s);
	List<Spettacolo> readAll();
	List<Film> getProgrammazione();
	List<Film> getFilmsBy(String searchBy);
	boolean checkSpettacolo(Spettacolo s);
}
