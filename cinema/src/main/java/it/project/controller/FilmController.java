package it.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import it.project.model.Film;
import it.project.service.FilmService;


@Controller
@RequestMapping("/film")
public class FilmController {

	@Autowired
	private FilmService serv;
	
	@GetMapping
	public String getPage(Model model) {
		model.addAttribute("film", serv.readAll());
		return "film";
	}
	
	@PostMapping("/save")
	public String filmReg(
			@RequestParam("titolo") String titolo, 
			@RequestParam("descrizione") String descrizione,
			@RequestParam("regista") String regista,
			@RequestParam("genere") String genere,
			@RequestParam("anno") int anno,
			@RequestParam("durata") int durata) {
		Film film = new Film();
		film.setTitolo(titolo);
		film.setDescrizione(descrizione);
		film.setRegista(regista);
		film.setGenere(genere);
		film.setAnno(anno);
		film.setDurata(durata);
		serv.create(film);
		return "redirect:/film";

	}
}
