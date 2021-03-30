package br.edu.infnet.appatlucascsouza.model.negocio;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TLocacao")
public class Locacao {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String descricao;
	@OneToOne(cascade = CascadeType.DETACH)
	@JoinColumn(name = "IdCliente")
	private Cliente cliente;
	@ManyToOne
	@JoinColumn(name = "IdUsuario")
	private Usuario usuario;
	private String automovel;
	private String modelo;
	private int dias;
	private float valor_diaria;
	
	public int getId() {
		return id;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getAutomovel() {
		return automovel;
	}
	public void setAutomovel(String automovel) {
		this.automovel = automovel;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public int getDias() {
		return dias;
	}
	public void setDias(int dias) {
		this.dias = dias;
	}
	public float getValor_diaria() {
		return valor_diaria;
	}
	public void setValor_diaria(float valor_diaria) {
		this.valor_diaria = valor_diaria;
	}
	
}
