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
	
	public  void delCategory(int idCategory) {
		Category category = (Category) session.get(Category.class,idCategory);
		
		session.getTransaction().begin();
		session.delete(category);
		session.getTransaction().commit();
	}
	
	
	public  void updateCategory(Category ca) {
        Session session = ConnectionBD.getSession();
        
        try {
        	session.getTransaction().begin();
        	session.update(ca);
        	session.getTransaction().commit();
		} catch (Exception e) {

			e.printStackTrace();
			session.getTransaction().rollback();
		}
        
        
    }
	
	public void addCategory(Category ca) {
        Session session = ConnectionBD.getSession();
        
        try {
        	session.getTransaction().begin();
        	session.save(ca);
        	session.getTransaction().commit();
			
		} catch (Exception e) {

			e.printStackTrace();
			session.getTransaction().rollback();
		}
        
	}
	
	/**
	 * Metodo que nos comprueba que exista una categoria por el nombre
	 * @param nombre
	 * @return si el medicamento no existe nos devuelve true, si existe, nos devuelve false
	 */
	public boolean existCategory(String nombre ) {
		
		boolean res = false;

        Session session = ConnectionBD.getSession();
        List<Category> listCategory= new ArrayList<>();
        Query query=session.createQuery("SELECT m FROM category m WHERE name like '"+nombre+"'");
        
        listCategory = query.getResultList();
        if(listCategory.size()==0) {
            res=true;
        }
        return res;
		
    }
	
	
	
}
