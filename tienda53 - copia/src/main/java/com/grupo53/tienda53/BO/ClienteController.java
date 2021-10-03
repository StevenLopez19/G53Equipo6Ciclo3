package com.grupo53.tienda53.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo53.tienda53.DAO.ClientesDAO;

import com.grupo53.tienda53.DTO.ClienteVO;

@RestController
public class ClienteController {

	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrarcliente")
	public void registrarCliente(ClienteVO cliente) {
		ClientesDAO Dao = new ClientesDAO();
		Dao.registrarCliente(cliente);
	}

	@GetMapping("/consultarcliente")
	public ArrayList<ClienteVO> consultarCliente(int cedula_cliente) {
		ClientesDAO Dao = new ClientesDAO();
		return Dao.consultarCliente(cedula_cliente);
	}

	@GetMapping("/listarclientes")
	public ArrayList<ClienteVO> listaDeClientes() {
		ClientesDAO Dao = new ClientesDAO();
		return Dao.listaDeClientes();
	}
	@DeleteMapping("/eliminarcliente")
	public void eliminarCliente(Integer cedula_cliente) {
		ClientesDAO Dao = new ClientesDAO();
		Dao.eliminarCliente(cedula_cliente);
	}
	
	@PutMapping("/actualizarclientes")
	public void actualizarCliente(ClienteVO cliente) {
		ClientesDAO Dao = new ClientesDAO();
		Dao.actualizarCliente(cliente);
	}
	
	
	
	
	
	
}
