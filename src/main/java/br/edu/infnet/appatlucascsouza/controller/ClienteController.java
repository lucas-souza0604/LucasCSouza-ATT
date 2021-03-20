package br.edu.infnet.appatlucascsouza.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ClienteController {
	
	@GetMapping(value = "/cliente")
	public String chamaDetalhe () {
		return "cliente/detalhe";	
	}
}
