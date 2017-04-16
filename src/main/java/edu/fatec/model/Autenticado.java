package edu.fatec.model;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

@SessionScoped
@Named
public class Autenticado implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String nome = "Administrador";
	private String email = "adm@fatec.edu";
	private boolean loginEfetuado = false;
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isLoginEfetuado() {
		return loginEfetuado;
	}
	public void setLoginEfetuado(boolean loginEfetuado) {
		this.loginEfetuado = loginEfetuado;
	}
}
