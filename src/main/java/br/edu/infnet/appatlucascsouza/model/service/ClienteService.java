package br.edu.infnet.appatlucascsouza.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import br.edu.infnet.appatlucascsouza.model.negocio.Cliente;
import br.edu.infnet.appatlucascsouza.model.negocio.Usuario;
import br.edu.infnet.appatlucascsouza.model.repository.IClienteRepository;

@Service
public class ClienteService {
	
	@Autowired
	private IClienteRepository clienteRepository;
	
	public void incluir(Cliente cliente) {
		clienteRepository.save(cliente);
	}
	
	public void excluir(Integer id) {
		clienteRepository.deleteById(id);
	}
	
	public List<Cliente> obterLista(){
		return (List<Cliente>)clienteRepository.findAll(Sort.by(Sort.Direction.ASC, "nome"));
	}
	
	public List<Cliente> obterLista(Usuario usuario){
		return (List<Cliente>)clienteRepository.obterLista(usuario.getId(),Sort.by(Sort.Direction.ASC, "nome"));
	}
}
