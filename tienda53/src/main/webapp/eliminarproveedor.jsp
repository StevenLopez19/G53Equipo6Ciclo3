<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tamaño de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pestaña -->
<title>Eliminar proveedor</title>
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
						<li><a href="listaclientes.jsp">Clientes</a></li>
						<i class="fas fa-truck"></i>
						<li class="active"><a href="listaproveedor.jsp">Proveedores</a></li>
						<i class="fas fa-apple-alt"></i>
						<li><a href="insertarproducto.jsp">Productos</a></li>
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
							<li class="test-a"><a href="insertarproveedor.jsp"><i
									class="fas fa-plus-circle"></i> Agregar proveedores</a></li>
							<li class="active"><a href="eliminarproveedor.jsp"><i
									class="fas fa-trash"></i>Eliminar proveedores</a></li>
							<li><a href="actualizarproveedor.jsp"><i
									class="fas fa-pen-alt"></i>Actualizar proveedores</a></li>
							<li><a href="buscarproveedor.jsp"><i
									class="fas fa-search"></i>Buscar proveedores</a></li>
							<br>
							<br>
							<li><a href="listaproveedor.jsp"><i
									class="fas fa-search"></i>Listar todos los proveedores</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="col-md-8 col-md-offset-2 gtco-heading text-center">
		<h2>
			<i class="fas fa-minus-circle"></i> Datos del proveedor a
			eliminar
		</h2>
	</div>
	<div class="container">
		<div id="error" class="alert alert-danger visually-hidden"
			role="alert">Error al eliminar el proveedor, verifique que el
			proveedor existe</div>

		<div id="correcto" class="alert alert-success visually-hidden"
			role="alert">Proveedor eliminado con exito</div>
		<!-- form -->
		<form>
			<div class="form-group col-md-6">
				<label for="exampleInputEmail1">Nit</label> <input type="text"
					class="form-control" id="nit_proveedor"
					placeholder="Inserte nit aqui..." required>
			</div>

			<button type="submit" class="btn btn-default btn-lg btn-block"
				onclick="eliminar_proveedor()">
				<i class="fas fa-check"></i> Eliminar proveedor
			</button>
		</form>
		<!-- form end -->
	</div>
	<footer>
		<div
			class="gtco-footer container gtco-copyright bg-dark  fixed-bottom">
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
	<script>
		function eliminar_proveedor() {
			var y = document.getElementById("nit_proveedor").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarproveedores', false);
			req.send(null);
			var proveedores = null;
			if (req.status == 200)
				proveedores = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < proveedores.length; i++) {

				console.log(proveedores[i].nit_proveedor);
				if (proveedores[i].nit_proveedor == y) {
					console.log(proveedores[i].nit_proveedor + " " + y);
					coincidencia = true;
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				var nit = document.getElementById("nit_proveedor").value;

				var xhr = new XMLHttpRequest();
				xhr.open("DELETE",
						"http://localhost:8080/eliminarproveedor?nit_proveedor="
								+ nit);

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");

				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("nit_proveedor").value = "";
				xhr.send();

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");

				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");

				document.getElementById("nit_proveedor").value = "";
				;
			}
		}
	</script>

</body>
</html>