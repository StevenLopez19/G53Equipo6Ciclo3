package com.grupo53.tienda53.DTO;

import java.io.Serializable;

public class ProductoVO implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Integer codigo_producto;
	private Double iva_compra;
	private Integer nit_proveedor;
	private String nombre_producto;
	private Double precio_compra;
	private Double precio_venta;
	/**
	 * @return the codigo_producto
	 */
	public Integer getCodigo_producto() {
		return codigo_producto;
	}
	/**
	 * @param codigo_producto the codigo_producto to set
	 */
	public void setCodigo_producto(Integer codigo_producto) {
		this.codigo_producto = codigo_producto;
	}
	/**
	 * @return the iva_compra
	 */
	public Double getIva_compra() {
		return iva_compra;
	}
	/**
	 * @param iva_compra the iva_compra to set
	 */
	public void setIva_compra(Double iva_compra) {
		this.iva_compra = iva_compra;
	}
	/**
	 * @return the nit_proveedor
	 */
	public Integer getNit_proveedor() {
		return nit_proveedor;
	}
	/**
	 * @param nit_proveedor the nit_proveedor to set
	 */
	public void setNit_proveedor(Integer nit_proveedor) {
		this.nit_proveedor = nit_proveedor;
	}
	/**
	 * @return the nombre_producto
	 */
	public String getNombre_producto() {
		return nombre_producto;
	}
	/**
	 * @param nombre_producto the nombre_producto to set
	 */
	public void setNombre_producto(String nombre_producto) {
		this.nombre_producto = nombre_producto;
	}
	/**
	 * @return the precio_compra
	 */
	public Double getPrecio_compra() {
		return precio_compra;
	}
	/**
	 * @param precio_compra the precio_compra to set
	 */
	public void setPrecio_compra(Double precio_compra) {
		this.precio_compra = precio_compra;
	}
	/**
	 * @return the precio_venta
	 */
	public Double getPrecio_venta() {
		return precio_venta;
	}
	/**
	 * @param precio_venta the precio_venta to set
	 */
	public void setPrecio_venta(Double precio_venta) {
		this.precio_venta = precio_venta;
	}

	
}
