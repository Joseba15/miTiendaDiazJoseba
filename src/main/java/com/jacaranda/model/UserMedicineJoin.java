package com.jacaranda.model;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Objects;

public class UserMedicineJoin implements Serializable{
	
	private String username;
	private Integer id_medic;
	private LocalDateTime buyDate;

	public UserMedicineJoin() {}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getId_medic() {
		return id_medic;
	}

	public void setId_medic(Integer id_medic) {
		this.id_medic = id_medic;
	}

	public LocalDateTime getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(LocalDateTime buyDate) {
		this.buyDate = buyDate;
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
		UserMedicineJoin other = (UserMedicineJoin) obj;
		return Objects.equals(buyDate, other.buyDate) && Objects.equals(id_medic, other.id_medic)
				&& Objects.equals(username, other.username);
	}



	
	
}
