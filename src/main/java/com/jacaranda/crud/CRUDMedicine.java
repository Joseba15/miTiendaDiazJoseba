package com.jacaranda.crud;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.bbdd.ConnectionBD;
import com.jacaranda.model.Medicine;



public class CRUDMedicine {
	
	public CRUDMedicine() {}
	
	private static Session session = ConnectionBD.getSession();

	
	public static Medicine getMedicine(int idMedicamento) {
//		Session session =  ConnectionBD.getSession();
		
		Medicine medicamento = (Medicine) session.get(Medicine.class,idMedicamento);
		return medicamento;
	}
	
	
	public  static List<Medicine> getMedicines() {
//		ConnectionBD co = new ConnectionBD();
//		Session session= co.getSession();

		Query<Medicine> query = session.createQuery("SELECT p FROM medicine p");
		ArrayList<Medicine> listMedicina = (ArrayList<Medicine>) query.getResultList();
		
		return listMedicina;
		
		}
		

}
