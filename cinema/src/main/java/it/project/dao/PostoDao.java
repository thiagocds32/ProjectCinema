package it.project.dao;

import java.util.List;
import it.project.model.Posto;

public interface PostoDao {
	void create(Posto pt);
	List<Posto> readAll();
	Posto getById(int id);
}
