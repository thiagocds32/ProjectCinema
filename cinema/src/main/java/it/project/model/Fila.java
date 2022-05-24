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
@Table(name = "file")
public class Fila implements Serializable{

	private static final long serialVersionUID = 5118276219642585697L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "descrizione", length = 255, nullable = false )
	private String descrizione;
	@OneToMany(
			mappedBy = "fila",
			cascade = CascadeType.ALL,
			fetch = FetchType.EAGER,
			orphanRemoval = true
			)
	private List<Poltrona> poltroneF = new ArrayList<>();// FILE A-I
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public List<Poltrona> getPoltroneF() {
		return poltroneF;
	}
	public void setPoltroneF(List<Poltrona> poltroneF) {
		this.poltroneF = poltroneF;
	}
	
		
}
