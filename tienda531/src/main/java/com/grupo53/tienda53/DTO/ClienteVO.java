package com.grupo53.tienda53.DTO;

import java.io.Serializable;

public class ClienteVO implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer cedula_cliente;
	private String nombre_cliente;
	private String direccion_cliente;
	private String telefono_cliente;
	private String correo_cliente;
	/**
	 * @return the cedula_cliente
	 */
	public Integer getCedula_cliente() {
		return cedula_cliente;
	}
	/**
	 * @param cedula_cliente the cedula_cliente to set
	 */
	public void setCedula_cliente(Integer cedula_cliente) {
		this.cedula_cliente = cedula_cliente;
	}
	/**
	 * @return the nombre_cliente
	 */
	public String getNombre_cliente() {
		return nombre_cliente;
	}
	/**
	 * @param nombre_cliente the nombre_cliente to set
	 */
	public void setNombre_cliente(String nombre_cliente) {
		this.nombre_cliente = nombre_cliente;
	}
	/**
	 * @return the direccion_cliente
	 */
	public String getDireccion_cliente() {
		return direccion_cliente;
	}
	/**
	 * @param direccion_cliente the direccion_cliente to set
	 */
	public void setDireccion_cliente(String direccion_cliente) {
		this.direccion_cliente = direccion_cliente;
	}
	/**
	 * @return the telefono_cliente
	 */
	public String getTelefono_cliente() {
		return telefono_cliente;
	}
	/**
	 * @param telefono_cliente the telefono_cliente to set
	 */
	public void setTelefono_cliente(String telefono_cliente) {
		this.telefono_cliente = telefono_cliente;
	}
	/**
	 * @return the correo_cliente
	 */
	public String getCorreo_cliente() {
		return correo_cliente;
	}
	/**
	 * @param correo_cliente the correo_cliente to set
	 */
	public void setCorreo_cliente(String correo_cliente) {
		this.correo_cliente = correo_cliente;
	}
	
	
}
