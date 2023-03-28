package com.jacaranda.crud;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.bbdd.ConnectionBD;
import com.jacaranda.model.Category;


public class CRUDCategory {
	
	public CRUDCategory () {}
	
	private  Session session = ConnectionBD.getSession();


	public  List<Category> getCategories() {
	
		Query<Category> query = session.createQuery("SELECT p FROM category p");
		ArrayList<Category> listCategorias = (ArrayList<Category>) query.getResultList();
		
		return listCategorias;
	}
	
	
	public  Category getCategoria(Integer id) {

		Category categoria = (Category) session.get(Category.class,id);
	
		return categoria;
		
		
	}
	
	
	
}
