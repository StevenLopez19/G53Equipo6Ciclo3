<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tama?o de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pesta?a -->
<title>Lista de clientes</title>
<link rel="icon" href="images/IconOnly.png" />
<!-- bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">

<!-- Cargando mi hoja de estilo -->
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">

<script>
	var baseurl = "http://localhost:8080/listarclientes";
	function loadclientes() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseurl, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var clientes = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-dark table-striped'><tr><th>Cedula</th><th>Nombre</th><th>Direcci?n</th><th>Tel?fono</th><th>Email</th></tr>";
				var main = "";
				for (i = 0; i < clientes.length; i++) {
					main += "<tr><td>" + clientes[i].cedula_cliente
							+ "</td><td>" + clientes[i].nombre_cliente
							+ "</td><td>" + clientes[i].direccion_cliente
							+ "</td><td>" + clientes[i].telefono_cliente
							+ "</td><td>" + clientes[i].correo_cliente
							+ "</td></tr>";
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("clientesinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loadclientes();
	}
</script>

</head>


<body>
	<!-- Navbar-->
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			<div class="row">
				<div class="col-xs-12 text-right menu-1">
					<div class="col-xs-12">
						<a class="navbar-brand links" href="index.html"><img
							src="images/logotipoizquierda.png" class="logo" /></a>
					</div>
					<ul>
						<i class="fas fa-users"></i>
						<li><a href="listausuarios.jsp">Usuarios</a></li>
						<i class="fas fa-address-book"></i>
						<li class="active"><a href="listaclientes.jsp">Clientes</a></li>
						<i class="fas fa-truck"></i>
						<li><a href="listausuarios.jsp">Proveedores</a></li>
						<i class="fas fa-apple-alt"></i>
						<li><a href="listausuarios.jsp">Productos</a></li>
						<i class="fas fa-money-check-alt"></i>
						<li><a href="listausuarios.jsp">Ventas</a></li>
						<i class="fas fa-clipboard-list"></i>
						<li><a href="about.html">Reportes</a></li>

					</ul>
				</div>
			</div>

		</div>
	</nav>


	<!-- contenido  -->
	<div class="gtco-nav" role="navigation">
		<div class="col-md-8 col-md-offset-2 gtco-heading text-center">
			<h2>Operaciones</h2>

			<div class="gtco-container">
				<div class="row">
					<div class=" text-center menu-1">
						<ul>
							<li class="test-a"><a href="insertarcliente.jsp"><i
									class="fas fa-plus-circle"></i> Agregar cliente</a></li>
							<li><a href="eliminarcliente.jsp"><i
									class="fas fa-trash"></i>Eliminar cliente</a></li>
							<li><a href="actualizarcliente.jsp"><i
									class="fas fa-pen-alt"></i>Actualizar cliente</a></li>
							<li><a href="buscarcliente.jsp"><i class="fas fa-search"></i>Buscar
									un cliente</a></li>
							<li><a href="listaclientes.jsp"><i class="fas fa-search"></i>Listar
									todos los clientes</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="gtco-nav col-md-8 col-md-offset-2 gtco-heading text-center">
		<h2>Tabla de clientes</h2>
		<div class="container ">
			<div class="row">
				<!--  Aqui es donde se autogenera la tabla basado en el script -->
				<div class="col align-self-center table-hover" id="clientesinfo">
				</div>
			</div>
		</div>
	</div>

	<footer>
		<div
			class="container gtco-footer gtco-copyright bg-dark  fixed-bottom">
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-6 text-left">
						<p>
							<small>&copy; 2021. MinTic 2022. </small>
						</p>
					</div>
					<div class="col-md-6 text-right">
						<p>
							<small>Programado por el maravilloso grupo 6.</small>
						</p>
					</div>
				</div>
			</div>
		</div>

	</footer>
</body>
</html>