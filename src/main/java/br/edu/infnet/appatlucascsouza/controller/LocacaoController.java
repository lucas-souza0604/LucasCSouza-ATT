package br.edu.infnet.appatlucascsouza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appatlucascsouza.model.negocio.Locacao;
import br.edu.infnet.appatlucascsouza.model.service.LocacaoService;

@Controller
public class LocacaoController {
	
	@Autowired
	private LocacaoService locacaoService;
	
	@GetMapping(value = "/locacao")
	public String chamaDetalhe (Model model) {
		
		model.addAttribute("lista", locacaoService.obterLista());
		
		return "locacao/detalhe";	
	}
	
	@PostMapping(value = "/locacao/incluir")
	public String incluir(Locacao locacao) {
		
		locacaoService.incluir(locacao);
		
		return "redirect:/locacao";
	}

}
