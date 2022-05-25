package it.project.service;

import java.util.Iterator;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import it.project.dao.SpettacoloDao;
import it.project.model.Film;
import it.project.model.Spettacolo;

@Service
public class SpettacoloServiceImpl implements SpettacoloService {

	@Autowired
	private SpettacoloDao dao;

	@Override
	public void create(Spettacolo s) {
		dao.create(s);
	}

	@Override
	public void update(Spettacolo s) {
		dao.update(s);

	}

	@Override
	public void delete(Spettacolo s) {
		dao.delete(s);

	}

	@Override
	public List<Spettacolo> readAll() {
		return dao.readAll();
	}

	@Override
	public List<Film> getProgrammazione() {
		return dao.getProgrammazione();
	}

	@Override
	public List<Film> getFilmsBy(String searchBy) {
		return dao.getFilmsBy(searchBy);
	}

	@Override
	public boolean checkSpettacolo(Spettacolo s) {
		boolean errore = false;
		List<Spettacolo> list = readAll();
//		if (list.stream().filter(sp ->sp.getSala().equals(sala))
//				//.filter(spe -> spe.getData().equals(s.getData()))
//				//.filter(spet -> spet.getOrario().equals(s.getOrario()))
//				.toArray().length> 0) {
//			return true;
//		}	
//		return false;

		for (Spettacolo sp : list) {
			if (sp.getSala().equals(s.getSala())) {
				errore = true;
				System.out.println("/////////////////////////////////////////" + s.getFilm().getTitolo()
						+ "//////////////////////////7");
				break;
			}
		}
		return errore;
	}

}
