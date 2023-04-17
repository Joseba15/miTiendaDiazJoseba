package com.jacaranda.model;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;

import com.jacaranda.bbdd.ConnectionBD;




public class Carrito {
	
	private ArrayList<MedicineCarrito> listaCarrito= new ArrayList<>();


	public Carrito(ArrayList<MedicineCarrito> listaCarrito) {
		this.listaCarrito=listaCarrito;
	}
	
	public Carrito() {}

	
	public boolean addUserMedicine(UserMedicine um) {
		boolean resultado=false;
		Session session = ConnectionBD.getSession();
		try {
			session.getTransaction().begin();
			session.saveOrUpdate(um);
			session.getTransaction().commit();
			resultado=true;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resultado;
	}
	
	public void addArticle(Medicine idMedicamento, Integer cantidad, LocalDateTime fechaCompra, Double precio) {
		listaCarrito.add(new MedicineCarrito(idMedicamento, cantidad, precio, fechaCompra));

	}
	
	
	public void delArticle(Medicine idMedicamento) {

		for (MedicineCarrito medicamentoCarrito : listaCarrito) {
			if (medicamentoCarrito.getMedicamento()==idMedicamento) {			
				listaCarrito.remove(medicamentoCarrito);
			}
		}
		
	}
	
	
	public boolean vaciarLista() {
		boolean resultado=false;
		if(this.listaCarrito.size()>0) {
			resultado=true;
			this.listaCarrito.clear();
			
		}
		return resultado;
	}
	
	
	
	
	public ArrayList<MedicineCarrito> getListaCarrito() {
		return listaCarrito;
	}
	
	public static List<UserMedicine> loadList(){
		Session session =  ConnectionBD.getSession();
		List<UserMedicine> list= new ArrayList<>();
		Query query=session.createQuery("SELECT um FROM user_medicine um ORDER BY buyDate ASC");
		list= query.getResultList();
		return list;
		
	}
	

	public void setListaCarrito(ArrayList<MedicineCarrito> listaCarrito) {
		this.listaCarrito = listaCarrito;
	}
	
}
