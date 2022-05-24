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
@Table(name = "sale")
public class Sala implements Serializable{
	

	private static final long serialVersionUID = 4042258545184690889L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "descrizione", length = 255, nullable = false)
	private String descrizione;
	
	@OneToMany(mappedBy = "sala", 
			cascade = CascadeType.ALL,
			fetch = FetchType.EAGER,
			orphanRemoval = true)

	private List<Spettacolo> spettacoli= new ArrayList<>();

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
}
