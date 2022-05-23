package it.project.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name = "spettacoli")
public class Spettacolo implements Serializable{
	
	private static final long serialVersionUID = 7100440113156748454L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "data", nullable = false)
	private String data;
	@Column(name = "ora_inizio", nullable = false)
	private String orario;
	
	@OneToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "id_sala")
	private Sala sala;
	@OneToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "id_film")
	private Film film;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getOrario() {
		return orario;
	}
	public void setOrario(String orario) {
		this.orario = orario;
	}
	public Sala getSala() {
		return sala;
	}
	public void setSala(Sala sala) {
		this.sala = sala;
	}
	public Film getFilm() {
		return film;
	}
	public void setFilm(Film film) {
		this.film = film;
	}
	
	
}
