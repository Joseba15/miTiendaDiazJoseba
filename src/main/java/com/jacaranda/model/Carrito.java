package com.jacaranda.model;

import java.time.LocalDateTime;
import java.util.ArrayList;



public class Carrito {
private ArrayList<MedicineCarrito> listaCarrito= new ArrayList<>();
	

	public Carrito(ArrayList<MedicineCarrito> listaCarrito) {
		this.listaCarrito=listaCarrito;
	}
	
	public Carrito() {}

	
	
	
	public void addArticle(Medicine idMedicamento, Integer cantidad, LocalDateTime fechaCompra, Double precio) {
		listaCarrito.add(new MedicineCarrito(idMedicamento, cantidad, precio, fechaCompra));

	}
	
	
	public void delArticle(Medicine idMedicamento) {

		for (MedicineCarrito medicamentoCarrito : listaCarrito) {
			if (medicamentoCarrito.getIdMedicamento()==idMedicamento) {			
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

	public void setListaCarrito(ArrayList<MedicineCarrito> listaCarrito) {
		this.listaCarrito = listaCarrito;
	}
	
}
