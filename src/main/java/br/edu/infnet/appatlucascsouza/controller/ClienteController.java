package br.edu.infnet.appatlucascsouza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appatlucascsouza.model.negocio.Cliente;
import br.edu.infnet.appatlucascsouza.model.negocio.Usuario;
import br.edu.infnet.appatlucascsouza.model.service.ClienteService;

@Controller
public class ClienteController {
	
	@Autowired
	private ClienteService clienteService;	
	
	@GetMapping(value = "/cliente")
	public String chamaDetalhe (Model model) {
		model.addAttribute("lista", clienteService.obterLista());
		return "cliente/detalhe";	
	}
	
	@PostMapping(value = "/cliente/incluir")
	public String incluir(Cliente cliente, @SessionAttribute("user") Usuario usuario) {
		cliente.setUsuario(usuario);
		clienteService.incluir(cliente);
		return "redirect:/cliente";
	}
	
	@GetMapping(value = "/cliente/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id) {
		try {
			clienteService.excluir(id);
		} catch (Exception e) {
			model.addAttribute("mensagem", "Nao foi possivel excluir o cliente selecionado");
			return chamaDetalhe(model);
		}
		return "redirect:/cliente";	
	}
	
}
