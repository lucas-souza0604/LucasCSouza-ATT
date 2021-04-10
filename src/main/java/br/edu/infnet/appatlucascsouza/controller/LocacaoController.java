package br.edu.infnet.appatlucascsouza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appatlucascsouza.model.negocio.Locacao;
import br.edu.infnet.appatlucascsouza.model.negocio.Usuario;
import br.edu.infnet.appatlucascsouza.model.service.ClienteService;
import br.edu.infnet.appatlucascsouza.model.service.LocacaoService;

@Controller
public class LocacaoController {
	
	@Autowired
	private LocacaoService locacaoService;
	@Autowired
	private ClienteService clienteService;
	
	@GetMapping(value = "/locacao")
	public String chamaDetalhe (Model model, @SessionAttribute("user") Usuario usuario) {
		model.addAttribute("lista", locacaoService.obterLista(usuario));
		model.addAttribute("clientes", clienteService.obterLista(usuario));
		return "locacao/detalhe";	
	}
	
	@PostMapping(value = "/locacao/incluir")
	public String incluir(Locacao locacao, @SessionAttribute("user") Usuario usuario) {
		locacao.setUsuario(usuario);
		locacaoService.incluir(locacao);
		return "redirect:/locacao";
	}
	
	@GetMapping(value = "/locacao/{id}/excluir")
	public String excluir(@PathVariable Integer id) {
		locacaoService.excluir(id);
		return "redirect:/locacao";
	}

}
