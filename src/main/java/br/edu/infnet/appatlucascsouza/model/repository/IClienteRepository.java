package br.edu.infnet.appatlucascsouza.model.repository;

import org.springframework.data.repository.CrudRepository;

import br.edu.infnet.appatlucascsouza.model.negocio.Cliente;

public interface IClienteRepository extends CrudRepository<Cliente, Integer>{

}
