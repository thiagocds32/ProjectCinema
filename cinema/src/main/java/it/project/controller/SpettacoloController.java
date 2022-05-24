package it.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import it.project.model.Spettacolo;
import it.project.service.FilmService;
import it.project.service.SalaService;
import it.project.service.SpettacoloService;

@Controller
@RequestMapping("/spettacoli")
public class SpettacoloController {

	@Autowired
	private SpettacoloService serv;

	@Autowired
	private FilmService filmServ;

	@Autowired
	private SalaService salaServ;

	private boolean formError;

	@GetMapping
	public String getPage(Model model) {
		model.addAttribute("formError", formError);
		model.addAttribute("spettacoli", serv.readAll());
		model.addAttribute("filmList", filmServ.readAll());
		model.addAttribute("saleList", salaServ.readAll());
		return "spettacoli";
	}

	@PostMapping("/save")
	public String spetReg(@RequestParam("film") int film, @RequestParam("sala") int sala,
			@RequestParam("data") String data, @RequestParam("oraInizio") String orario) {

		Spettacolo spettacolo = new Spettacolo();
		spettacolo.setFilm((filmServ.readById(film)));
		spettacolo.setSala((salaServ.readById(sala)));
		spettacolo.setData(data);
		spettacolo.setOrario(orario);

		if (serv.checkSpettacolo(spettacolo)) {
			serv.create(spettacolo);
		} else {
			formError = true;
		}
		return "redirect:/spettacoli";
	}
}
