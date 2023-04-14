package com.jacaranda.model;

import java.time.LocalDateTime;
import java.util.Objects;


public class MedicineCarrito {

	private Medicine idMedicamento;
	private int cantidad;
	private Double precio; 
	private LocalDateTime fechaCompra ;
	
	public MedicineCarrito(Medicine idMedicamento, int cantidad, Double precio, LocalDateTime fechaCompra) {
		super();
		this.idMedicamento = idMedicamento;
		this.cantidad = cantidad;
		this.precio = precio;
		this.fechaCompra = fechaCompra;
	}

	public Medicine getIdMedicamento() {
		return idMedicamento;
	}

	public void setIdMedicamento(Medicine idMedicamento) {
		this.idMedicamento = idMedicamento;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public Double getPrecio() {
		return precio;
	}

	public void setPrecio(Double precio) {
		this.precio = precio;
	}

	public LocalDateTime getFechaCompra() {
		return fechaCompra;
	}

	public void setFechaCompra(LocalDateTime fechaCompra) {
		this.fechaCompra = fechaCompra;
	}

	@Override
	public int hashCode() {
		return Objects.hash(fechaCompra, idMedicamento);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MedicineCarrito other = (MedicineCarrito) obj;
		return Objects.equals(fechaCompra, other.fechaCompra) && Objects.equals(idMedicamento, other.idMedicamento);
	}
	
	
	
	
	
}
