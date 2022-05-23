package it.project.dao;

import java.util.List;
import it.project.model.Sala;

public interface SalaDao {
	void create(Sala s);
	void update(Sala s);
	void delete(Sala s);
	List<Sala> readAll();
	Sala readById(int titolo);
}
