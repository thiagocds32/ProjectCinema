package it.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import it.project.service.SpettacoloService;

@Controller
@RequestMapping("/programmazione")
public class ProgrammazioneController {
    
    @Autowired
    private SpettacoloService spetServ;

    @GetMapping
    public String getPage(Model model)
    {
        model.addAttribute("filmList", spetServ.getProgrammazione());
        return "programmazione";
    }
    
}