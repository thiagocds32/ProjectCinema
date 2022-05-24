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
@Table(name = "posti")
public class Posto implements Serializable{
	
	
	private static final long serialVersionUID = 5617137191384791052L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "descrizione", nullable = false )
	private int descrizione;
	@OneToMany(
			mappedBy = "posto",
			cascade = CascadeType.ALL,
			fetch = FetchType.EAGER,
			orphanRemoval = true
			)
	private List<Poltrona> poltrone = new ArrayList<>(); //NUMERI DA 1 A 15
		
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(int descrizione) {
		this.descrizione = descrizione;
	}
	public List<Poltrona> getPoltrone() {
		return poltrone;
	}
	public void setPoltrone(List<Poltrona> poltrone) {
		this.poltrone = poltrone;
	}
	


}
