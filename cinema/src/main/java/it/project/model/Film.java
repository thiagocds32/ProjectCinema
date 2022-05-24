package it.project.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name = "film")
public class Film implements Serializable{
	
	
	private static final long serialVersionUID = 8609094920898334870L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "titolo", length = 255, nullable = false)
	private String titolo;
	@Column(name = "descrizione", length = 255, nullable = false)
	private String descrizione;
	@Column(name = "regista", length = 255, nullable = false)
	private String regista;
	@Column(name = "genere", length = 255, nullable = false)
	private String genere;
	@Column(name = "anno", nullable = false)
	private int anno;
	@Column(name = "durata", nullable = false)
	private int durata;
	@OneToMany(mappedBy = "film", 
			cascade = CascadeType.ALL,
			fetch = FetchType.EAGER,
			orphanRemoval = true)

	private List<Spettacolo> spettacoli= new ArrayList<>();
	
	public int getDurata() {
		return durata;
	}
	public void setDurata(int durata) {
		this.durata = durata;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitolo() {
		return titolo;
	}
	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public String getRegista() {
		return regista;
	}
	public void setRegista(String regista) {
		this.regista = regista;
	}
	public String getGenere() {
		return genere;
	}
	public void setGenere(String genere) {
		this.genere = genere;
	}
	public int getAnno() {
		return anno;
	}
	public void setAnno(int anno) {
		this.anno = anno;
	}	

}
