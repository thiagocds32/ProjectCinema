package it.project.service;
import java.util.List;



import it.project.model.Film;


public interface FilmService {
	
	void create(Film F);
	void update(Film F);
	void delete(Film F);
	List<Film> readAll();
	Film readById(int titolo);
}
