package com.jacaranda.model;

import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;



	
@Entity (name="user_medicine")
@IdClass(UserMedicineJoin.class)
public class UserMedicine {

	@Id
	@ManyToOne
	@JoinColumn (name="id_medic", insertable=false, updatable=false)
	private Medicine id_medic;
	
	
	@Id
	@ManyToOne
	@JoinColumn (name="username", insertable=false, updatable=false)
	private User username;
		
	@Id
	@Column 
	private LocalDateTime buyDate;
	
	
	@Column 
	private Double price;
	
	
	@Column 
	private int amount;


	public UserMedicine(Medicine id_medic, User username, LocalDateTime buyDate, Double price, int amount) {
		super();
		this.id_medic = id_medic;
		this.username = username;
		this.buyDate = buyDate;
		this.price = price;
		this.amount = amount;
	}


	public Medicine getId_medic() {
		return id_medic;
	}


	public void setId_medic(Medicine id_medic) {
		this.id_medic = id_medic;
	}


	public User getUsername() {
		return username;
	}


	public void setUsername(User username) {
		this.username = username;
	}


	public LocalDateTime getBuyDate() {
		return buyDate;
	}


	public void setBuyDate(LocalDateTime buyDate) {
		this.buyDate = buyDate;
	}


	public Double getPrice() {
		return price;
	}


	public void setPrice(Double price) {
		this.price = price;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	@Override
	public int hashCode() {
		return Objects.hash(buyDate, id_medic, username);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserMedicine other = (UserMedicine) obj;
		return Objects.equals(buyDate, other.buyDate) && Objects.equals(id_medic, other.id_medic)
				&& Objects.equals(username, other.username);
	}
	
	
	
}
