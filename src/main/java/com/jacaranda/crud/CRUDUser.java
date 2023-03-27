package com.jacaranda.crud;

import org.hibernate.Session;

import com.jacaranda.bbdd.ConnectionBD;
import com.jacaranda.model.User;

public class CRUDUser {

	public CRUDUser() {}
	
	private static Session session = ConnectionBD.getSession();

	public  User getUser(String username) {
		
		User user = (User) session.get(User.class,username);
		return user;
	}
	
}
