package it.project.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import it.project.service.FilaService;
import it.project.service.PoltronaService;
import it.project.service.PostoService;

@Controller
@RequestMapping("")
public class PoltronaController {

	@Autowired
	private PoltronaService pServ;

	@Autowired
	private FilaService fServ;

	@Autowired
	private PostoService ptServ;

	
	/************************NON TOCCAREEE**********************/
//	@GetMapping("/poltrone")  
//	public String getPage() {
//
//		Poltrona poltrona;
//		for (int i = 1; i < 11; i++) {			
//			for (int j = 1; j < 16 ; j++) {
//				poltrona = new Poltrona(); 
//				poltrona.setFila(fServ.getById(i));
//				poltrona.setPosto(ptServ.getById(j));
//				pServ.create(poltrona);
//			}
//		}
//		
//		return "poltrone";
//	}
}
