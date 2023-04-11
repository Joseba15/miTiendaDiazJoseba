package com.jacaranda.crud;

import java.time.LocalDate;

import org.apache.commons.codec.digest.DigestUtils;
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
	
	
	public static void saveUser(String username, String password, String nombre, String apellido, LocalDate fechaNacimiento, String genero) {
        User usuario = new User(username, password, nombre, apellido, fechaNacimiento, genero);
        session.getTransaction().begin();
        session.save(usuario);
        session.getTransaction().commit();
    }
	
	
	public static String getMD5(String input) {
		String pass="";
		if (input!=null) {
			 pass = DigestUtils.md5Hex(input);
			
		}
        return pass;
    }
	
	
}
