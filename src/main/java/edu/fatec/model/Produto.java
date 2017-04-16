package edu.fatec.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Produto {

	private long id;
	private Date dtCadastro;
	private String nome;
	private String descricao;
	private double valor;
	
	@Id
	@TableGenerator(table="jpa_seq",
		pkColumnName="entidade", 
		pkColumnValue="produto", 
		name="seq", 
		initialValue=1, 
		valueColumnName="value", 
		allocationSize=1
	)
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seq")
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	@Temporal(TemporalType.DATE)
	public Date getDtCadastro() {
		return dtCadastro;
	}
	public void setDtCadastro(Date dtCadastro) {
		this.dtCadastro = dtCadastro;
	}
	
	@Column(length=100)
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Column(length=200)
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	@Column(precision=10, scale=2)
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}
	
	@Override
	public String toString() {
		return "id:" + this.id + " Nome:'" + this.nome + "' Descricao: '" + this.descricao
				+ "' Valor: " + this.valor;
	}
	
}
