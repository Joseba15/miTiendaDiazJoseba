package com.jacaranda.model;

import javax.persistence.Entity;
import javax.persistence.IdClass;

	
@Entity (name="usuario_medicamentos")
@IdClass(UserMedicineJoin.class)
public class UserMedicine {

	public UserMedicine() {
		// TODO Auto-generated constructor stub
	}

}
