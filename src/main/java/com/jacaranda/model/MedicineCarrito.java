package com.jacaranda.model;

import java.time.LocalDateTime;
import java.util.Objects;


public class MedicineCarrito {

	private Medicine medicamento;
	private int cantidad;
	private Double precio; 
	private LocalDateTime fechaCompra ;
	
	public MedicineCarrito(Medicine idMedicamento, int cantidad, Double precio, LocalDateTime fechaCompra) {
		super();
		this.medicamento = idMedicamento;
		this.cantidad = cantidad;
		this.precio = precio;
		this.fechaCompra = fechaCompra;
	}

	public Medicine getMedicamento() {
		return medicamento;
	}

	public void setMedicamento(Medicine idMedicamento) {
		this.medicamento = idMedicamento;
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
		return Objects.hash(fechaCompra, medicamento);
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
		return Objects.equals(fechaCompra, other.fechaCompra) && Objects.equals(medicamento, other.medicamento);
	}
	
	
	
	
	
}
