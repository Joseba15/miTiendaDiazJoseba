package com.jacaranda.crud;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.bbdd.ConnectionBD;
import com.jacaranda.model.Medicine;



public class CRUDMedicine {
	
	public CRUDMedicine() {}
	
	private Session session = ConnectionBD.getSession();

	
	public  Medicine getMedicine(int idMedicamento) {		
		Medicine medicamento = (Medicine) session.get(Medicine.class,idMedicamento);
		return medicamento;
	}
	
//	public  Medicine getMedicineByName(String name) {
//		
//		return null;
//	}
	
	
	public   List<Medicine> getMedicines() {


		Query<Medicine> query = session.createQuery("SELECT p FROM medicine p");
		ArrayList<Medicine> listMedicina = (ArrayList<Medicine>) query.getResultList();
		
		return listMedicina;
		
		}
		
	
	public  void delMedicine(int idMedicamento) {
		Medicine medicamento = (Medicine) session.get(Medicine.class,idMedicamento);
		
		session.getTransaction().begin();
		session.delete(medicamento);
		session.getTransaction().commit();
	}
	
	
	public  void updateMedicine(Medicine me) {
        Session session = ConnectionBD.getSession();
        
        try {
        	session.getTransaction().begin();
        	session.update(me);
        	session.getTransaction().commit();
		} catch (Exception e) {

			e.printStackTrace();
			session.getTransaction().rollback();
		}
        
        
    }
	
	public void addMedicine(Medicine me) {
        Session session = ConnectionBD.getSession();
        
        try {
        	session.getTransaction().begin();
        	session.save(me);
        	session.getTransaction().commit();
			
		} catch (Exception e) {

			e.printStackTrace();
			session.getTransaction().rollback();
		}
        
	}
	
	/**
	 * Metodo que nos comprueba que exista un medicamento por el nombre
	 * @param nombre
	 * @return si la medicina no existe nos devuelve true, si existe, nos devuelve false
	 */
	public boolean existMedicine(String nombre ) {
		
		boolean res = false;

        Session session = ConnectionBD.getSession();
        List<Medicine> listMedicamento= new ArrayList<>();
        Query query=session.createQuery("SELECT m FROM medicine m WHERE name like '"+nombre+"'");
        
        listMedicamento = query.getResultList();
        if(listMedicamento.size()==0) {
            res=true;
        }
        return res;
		
    }
	
	/**
	 * Metodo que nos permite actualizar el stock del articulo al añadirlo al carrito y al realizar la
	 * compra
	 * @param id, corresponde al id del medicamento
	 * @param stock , la cantidad que vamos a restar al stock inicial de cada articulo
	 */
	public  void updateArticleStock(int id, Integer stock) {
        Session session = ConnectionBD.getSession();
        Medicine m = (Medicine)session.get(Medicine.class, id);
        
        System.out.println(m.getStock() -stock);
        m.setStock(m.getStock() -stock);
        System.out.println(m.getStock()-stock);
        try {
            session.getTransaction().begin();
            session.save(m);
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }
    }

}
