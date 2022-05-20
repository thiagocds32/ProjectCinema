package it.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.project.model.Utente;
import it.project.service.UtenteService;
//http://localhost:8080/cinema/registration

@Controller
@RequestMapping("/registration")
public class RegistrationController {

	@Autowired
	private UtenteService service;
	
	@GetMapping
	public String getPage(Model model) {
		model.addAttribute("registration", service.readAll());
		return "registration";
	}

	@PostMapping("/save")
	public String userReg(@RequestParam("nome") String nome, @RequestParam("cognome") String cognome,
			@RequestParam("mail") String mail, @RequestParam("data") String data,
			@RequestParam("username") String username, @RequestParam("pass") String pass) {
		String risultato;

		Utente utente = new Utente();
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setEmail(mail);
		utente.setDataNascita(data);
		utente.setUsername(username);
		utente.setPassword(pass);
		
		if (service.checkUten(utente)) {
			service.create(utente);			
			risultato = "redirect:/registration";// da cambiare->homepage
		} else {
			risultato = "redirect:/registration";
		}
		return risultato;
	}

}
