package br.edu.infnet.appatlucascsouza.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AcessoController {

	@GetMapping(value = "/")
	public String init(Model model) {
		model.addAttribute("nome", "Lucas C Souza");
		model.addAttribute("email", "lucas@al.infnet.edu.br");
		model.addAttribute("git", "https://github.com/lucas-souza0604");
		return "index";
	}
}
