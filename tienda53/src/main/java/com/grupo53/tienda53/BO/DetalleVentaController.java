package com.grupo53.tienda53.BO;

import java.util.ArrayList;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo53.tienda53.DAO.DetalleVentaDAO;
import com.grupo53.tienda53.DTO.DetalleVentaVO;





@RestController
public class DetalleVentaController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrardetalleventa")
	public void registrarVenta(DetalleVentaVO venta) {
		DetalleVentaDAO Dao = new DetalleVentaDAO();
		Dao.registrarDetalleVenta(venta);
	}

	@GetMapping("/listardetalleventas")
	public ArrayList<DetalleVentaVO> listaDeVentas() {
		DetalleVentaDAO Dao = new DetalleVentaDAO();
		return Dao.listaDeDetalleVenta();
	}

	@DeleteMapping("/eliminardetalleventa")
	public void eliminarVenta(Integer codigo_venta) {
		DetalleVentaDAO Dao = new DetalleVentaDAO();
		Dao.eliminarDetalleVenta(codigo_venta);
	}

	@PutMapping("/actualizardetalleventa")
	public void actualizarVenta(DetalleVentaVO venta) {
		DetalleVentaDAO Dao = new DetalleVentaDAO();
		Dao.actualizarDetalleVenta(venta);
	}
	
	
	@GetMapping("/contadordetalleventa")
	public Integer contadorVentas() {
		DetalleVentaDAO Dao = new DetalleVentaDAO();
		return Dao.contadorDetalleVenta();
	}
	
	
}
