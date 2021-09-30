package com.grupo53.tienda53.DAO;

import java.sql.*;

/**
 * Clase que permite conectar con la base de datos
 */
public class Conexion {
	
	/** Parametros de conexion */
	static String nombre_base_datos = "BLOCKSTORE";
	//root
	static String usuariobd = "root";
	//mintic
	static String clavebd = "mintic";
	//127.0.0.1 == localhost
	static String url = "jdbc:mysql://127.0.0.1/" + nombre_base_datos;
	
	//objeto sin inicializar de la conexión
	Connection connection = null;
	/** Constructor de DbConnection */
	public Conexion() {
		try {
			// obtenemos el driver de para mysql
			Class.forName("com.mysql.cj.jdbc.Driver");
			// obtenemos la conexión
			connection = DriverManager.getConnection(url, usuariobd, clavebd);
			//si hay conexión correcta mostrar información en consola
			if (connection != null) {
				System.out.println("Conexión a base de datos " 
			+ nombre_base_datos + " OK\n");
			}
		
		} catch (SQLException e) {
			//error de la base de datos
			System.out.println(e);
		} catch (ClassNotFoundException e) {
			//error en carga de clases
			System.out.println(e);
		} catch (Exception e) {
			//cualquier otro error
			System.out.println(e);
		}
	}

	/** Permite retornar la conexión */
	public Connection getConnection() {
		return connection;
	}
	
	//cerrando la conexión
	public void desconectar() {
		connection = null;
	}
}