package com.jacaranda.model;

import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
;

public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	@OneToMany (mappedBy="categoria", cascade = CascadeType.ALL, orphanRemoval = true)
	private List <Medicine> listaMedicamentos; 
	
	public Category() {}

	public Category( String name, String description, List<Medicine> listaMedicamentos) {
		super();
		this.name = name;
		this.description = description;
		this.listaMedicamentos = listaMedicamentos;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Medicine> getListaMedicamentos() {
		return listaMedicamentos;
	}

	public void setListaMedicamentos(List<Medicine> listaMedicamentos) {
		this.listaMedicamentos = listaMedicamentos;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Category other = (Category) obj;
		return id == other.id;
	}
	
	
	
	

}
