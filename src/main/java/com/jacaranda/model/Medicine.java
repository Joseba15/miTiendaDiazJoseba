package com.jacaranda.model;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity(name = "medicine")
public class Medicine {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	private int stock;
	private Double price;
	@ManyToOne
	@JoinColumn (name="id_categ")
	private Category categoria;
	
	
	public Medicine() {}


	public Medicine(String name, String description, int stock, Double price, Category categoria) {
		super();
		this.name = name;
		this.description = description;
		this.stock = stock;
		this.price = price;
		this.categoria = categoria;
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


	public int getStock() {
		return stock;
	}


	public void setStock(int stock) {
		this.stock = stock;
	}


	public Double getPrice() {
		return price;
	}


	public void setPrice(Double price) {
		this.price = price;
	}


	public Category getCategoria() {
		return categoria;
	}


	public void setCategoria(Category categoria) {
		this.categoria = categoria;
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
		Medicine other = (Medicine) obj;
		return id == other.id;
	}

	
	
	
	
}
