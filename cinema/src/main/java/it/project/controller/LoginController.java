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

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	private UtenteService serv;
	
	@GetMapping
	public String getPage(Model model) {
		model.addAttribute("login", serv.readAll());
		return "login";
	}
	
	@PostMapping("/save")
	public String userReg(@RequestParam("username") String username, @RequestParam("pass") String pass) {
		String risultato;

		Utente utente = new Utente();
		utente.setUsername(username);
		utente.setPassword(pass);
		
		if (serv.login(utente)) {
		System.out.println("L'utente " + utente.getUsername() + " login effettuato correttamente");			
		risultato = "redirect:/login";// da cambiare->homepage
		} else {
			System.out.println("L'utente " + utente.getUsername() + " login effettuato NON correttamente");
			risultato = "redirect:/login";
		}
		return risultato;
	}

}
