package br.edu.infnet.appatlucascsouza.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import br.edu.infnet.appatlucascsouza.model.negocio.Locacao;
import br.edu.infnet.appatlucascsouza.model.negocio.Usuario;
import br.edu.infnet.appatlucascsouza.model.repository.ILocacaoRepository;

@Service
public class LocacaoService {
	
	@Autowired
	private ILocacaoRepository locacaoRepository;
	
	public void incluir(Locacao locacao) {
		locacaoRepository.save(locacao);
	}
	
	public void excluir(Integer id) {
		locacaoRepository.deleteById(id);
	}
	
	public List<Locacao> obterLista(){
		return (List<Locacao>)locacaoRepository.findAll();
	}
	
	public List<Locacao> obterLista(Usuario usuario){
		return (List<Locacao>)locacaoRepository.obterLista(usuario.getId(), Sort.by(Sort.Direction.ASC, "descricao"));
	}
}
