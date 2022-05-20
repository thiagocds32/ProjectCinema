package it.project.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "utenti")
public class Utente implements Serializable{
	
	
	private static final long serialVersionUID = 1203557850549124212L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "username", length = 255, nullable = false)
	private String username;
	@Column(name = "password", length = 255, nullable = false)
	private String password;
	@Column(name = "nome", length = 255, nullable = false)
	private String nome;
	@Column(name = "cognome", length = 255, nullable = false)
	private String cognome;
	@Column(name = "email", length = 255, nullable = false)
	private String mail;
	@Column(name = "data_nascita", nullable = false)
	private String dataNascita;
		
	
	public int getId() {
				return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getEmail() {
		return mail;
	}
	public void setEmail(String email) {
		this.mail = email;
	}
	public String getDataNascita() {
		return dataNascita;
	}
	public void setDataNascita(String dataNascita) {
		this.dataNascita = dataNascita;
	}

}
