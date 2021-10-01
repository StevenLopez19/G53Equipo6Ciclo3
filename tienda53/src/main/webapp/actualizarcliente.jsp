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
<title>Actualizar cliente</title>
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
						<li ><a href="listausuarios.jsp">Usuarios</a></li>
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


		<div class="col-md-8 col-md-offset-2 gtco-heading text-center">
			<h2>
				<i class="fas fa-sync"></i> Datos a actualizar del cliente
			</h2>
		</div>

		<div class="container">
			<div id="error" class="alert alert-danger visually-hidden col-md-4"
				role="alert">Error al actualizar el cliente</div>

			<div id="correcto" class="alert alert-success visually-hidden col-md-4"
				role="alert">Cliente actualizado con exito</div>

			<!-- form -->
			<form>
				<div class="form-group col-md-6">
					<label for="exampleInputEmail1">Cedula</label> <input type="number"
						class="form-control" id="cedula_cliente" placeholder="cedula"
						required>
				</div>
				<div class="form-group col-md-6">
					<label for="exampleInputPassword1">Email</label> <input
						type="email" class="form-control" id="correo_cliente"
						placeholder="Email" required>
				</div>
				<div class="form-group col-md-12">
					<label for="exampleInputEmail1">Nombre completo</label> <input
						type="text" class="form-control" id="nombre_cliente"
						placeholder="Nombre completo" required>
				</div>
				<div class="form-group col-md-6">
					<label for="exampleInputPassword1">Telefono cliente</label> <input
						type="number" class="form-control" id="telefono_cliente"
						placeholder="telefono" required>
				</div>
				<div class="form-group col-md-6">
					<label for="exampleInputEmail1">Dirección</label> <input
						type="text" class="form-control" id="direccion_cliente"
						placeholder="Dirección" required>
				</div>

				<button type="submit" class="btn btn-default btn-lg btn-block"
					onclick="actualizar()">
					<i class="fas fa-check"></i> Actualizar cliente
				</button>
			</form>
			<!-- form end -->
		</div>

	<!-- footer -->
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
	<!-- footer END-->
	<script>
		function actualizar() {

			var x = document.getElementById("cedula_cliente").value;
			var y = document.getElementById("nombre_cliente").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarclientes', false);
			req.send(null);
			var clientes = null;
			if (req.status == 200)
				clientes = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < clientes.length; i++) {
				console.log(clientes[i].cedula_cliente);
				console.log(clientes[i].nombre_cliente);
				if (clientes[i].cedula_cliente === x) {
					console.log(clientes[i].cedula_cliente + " " + x);
					coincidencia = true
					break;
				}

				if (clientes[i].nombre_cliente === y) {
					console.log(clientes[i].nombre_cliente + " " + y);
					coincidencia = true
					break;
				}

			}
			console.log(coincidencia);

			if (coincidencia != false) {
				var formData = new FormData();
				formData.append("cedula_cliente", document
						.getElementById("cedula_cliente").value);
				formData.append("nombre_cliente", document
						.getElementById("nombre_cliente").value);
				formData.append("direccion_cliente", document
						.getElementById("direccion_cliente").value);
				formData.append("telefono_cliente", document
						.getElementById("telefono_cliente").value);
				formData.append("correo_cliente", document
						.getElementById("correo_cliente").value);
				var xhr = new XMLHttpRequest();
				xhr.open("PUT", "http://localhost:8080/actualizarclientes");

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("cedula_cliente").value = "";
				document.getElementById("nombre_cliente").value = "";
				document.getElementById("direccion_cliente").value = "";
				document.getElementById("telefono_cliente").value = "";
				document.getElementById("correo_cliente").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("cedula_cliente").value = "";
				document.getElementById("nombre_cliente").value = "";
				document.getElementById("direccion_cliente").value = "";
				document.getElementById("telefono_cliente").value = "";
				document.getElementById("correo_cliente").value = "";
			}

		}
	</script>

</body>
</html>