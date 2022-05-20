package it.project.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.dao.UtenteDao;
import it.project.model.Utente;

@Service
public class UtenteServiceImpl implements UtenteService {

	@Autowired
	private UtenteDao dao;

	@Override
	public void create(Utente u) {
		dao.create(u);
	}

	@Override
	public void update(Utente u) {
		dao.update(u);

	}

	@Override
	public void delete(Utente u) {
		dao.delete(u);

	}

	@Override
	public List<Utente> readAll() {
		return dao.readAll();
	}

	@Override
	public boolean checkUten(Utente u) {
		List<Utente> list = readAll();

		if (list.stream().filter(ut -> ut.getUsername().equals(u.getUsername())).toArray().length > 0) {
			return false;
		} else if (list.stream().filter(ue -> ue.getEmail().equals(u.getEmail())).toArray().length > 0) {
			return false;
		} else {
			return true;
		}
	}

}
