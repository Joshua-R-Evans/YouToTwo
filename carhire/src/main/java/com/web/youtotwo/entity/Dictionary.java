package com.web.youtotwo.entity;

import java.util.Arrays;

import javax.persistence.*;

@Entity
@Table(name="dictionary")
public class Dictionary {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private int id;
	private String term;
	private String[] definition;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String[] getDefinition() {
		return definition;
	}
	public void setDefinition(String[] definition) {
		this.definition = definition;
	}
	public Dictionary(int id, String term, String[] definition) {
		super();
		this.id = id;
		this.term = term;
		this.definition = definition;
	}
	@Override
	public String toString() {
		return "Dictionary [id=" + id + ", term=" + term + ", definition=" + Arrays.toString(definition) + "]";
	}
	

}
