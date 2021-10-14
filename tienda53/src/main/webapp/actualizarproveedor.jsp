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
<title>Actualizar proveedor</title>
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
							<li><a href="eliminarproveedor.jsp"><i
									class="fas fa-trash"></i>Eliminar proveedores</a></li>
							<li class="active"><a href="actualizarproveedor.jsp"><i
									class="fas fa-pen-alt"></i>Actualizar proveedores</a></li>
							<li><a href="buscarproveedor.jsp"><i
									class="fas fa-search"></i>Buscar proveedores</a></li>
							<br>
							<br>
							<li><a href="listaproveedor.jsp"><i class="fas fa-search"></i>Listar
									todos los proveedores</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="col-md-8 col-md-offset-2 gtco-heading text-center">
		<h2>
			<i class="fas fa-sync"></i> Datos a actualizar del proveedor
		</h2>
	</div>


	<div class="container">
		<div id="error" class="alert alert-danger visually-hidden"
			role="alert">Error al actualizar el proveedor</div>

		<div id="correcto" class="alert alert-success visually-hidden"
			role="alert">Proveedor actualizado con exito</div>

		<!-- form -->
		<form>
			<div class="form-group col-md-6">
				<label for="exampleInputEmail1">Nit</label> <input type="text"
					class="form-control" id="nit_proveedor"
					placeholder="Inserte nit aqui..." required>
			</div>
			<div class="form-group col-md-6">
				<label for="exampleInputPassword1">Ciudad</label> <input type="text"
					class="form-control" id="ciudad_proveedor"
					placeholder="Inserte ciudad aqui..." required>
			</div>
			<div class="form-group col-md-12">
				<label for="exampleInputEmail1">Dirección</label> <input type="text"
					class="form-control" id="direccion_proveedor"
					placeholder="Inserte dirección aqui..." required>
			</div>
			<div class="form-group col-md-6">
				<label for="exampleInputPassword1">Nombre</label> <input type="text"
					class="form-control" id="nombre_proveedor"
					placeholder="Inserte nombre aqui..." required>
			</div>
			<div class="form-group col-md-6">
				<label for="exampleInputEmail1">Teléfono</label> <input type="text"
					class="form-control" id="telefono_proveedor"
					placeholder="Inserte teléfono aqui..." required>
			</div>

			<button type="submit" class="btn btn-default btn-lg btn-block"
				onclick="actualizar()">
				<i class="fas fa-check"></i> Actualizar proveedor
			</button>
		</form>
		<!-- form end -->
	</div>

	<!-- footer -->
	<footer class="mu-5">
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
					<button type="button" class="btn btn-success"
						onclick="window.location.href='<%=request.getContextPath()%>/insertarproveedor.jsp'">
						<i class="fas fa-plus-circle"></i> Agregar proveedor
					</button>
					<button type="button" class="btn btn-danger"
						onclick="window.location.href='<%=request.getContextPath()%>/eliminarproveedor.jsp'">
						<i class="fas fa-trash"></i> Eliminar proveedor
					</button>
					<button type="button" class="btn btn-warning"
						onclick="window.location.href='<%=request.getContextPath()%>/actualizarproveedor.jsp'">
						<i class="fas fa-pen-alt"></i> Actualizar proveedor
					</button>
					<button type="button" class="btn btn-primary"
						onclick="window.location.href='<%=request.getContextPath()%>/buscarproveedor.jsp'">
						<i class="fas fa-search"></i> Buscar un proveedor
					</button>
					<button type="button" class="btn btn-primary"
						onclick="window.location.href='<%=request.getContextPath()%>/listaproveedor.jsp'">
						<i class="fas fa-search"></i> Listar todos los proveedores
					</button>
				</div>
			</div>
		</div>

	</footer>
	<!-- footer END-->
	<script>
		function actualizar() {
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
			var x = document.getElementById("nit_proveedor").value;
			var y = document.getElementById("ciudad_proveedor").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'/listarproveedores', false);
			req.send(null);
			var proveedores = null;
			if (req.status == 200)
				proveedores = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < proveedores.length; i++) {
				console.log(proveedores[i].nit_proveedor);
				console.log(proveedores[i].ciudad_proveedor);
				if (proveedores[i].nit_proveedor === x) {
					console.log(proveedores[i].nit_proveedor + " " + x);
					coincidencia = true
					break;
				}

				if (proveedores[i].ciudad_proveedor === y) {
					console.log(proveedores[i].ciudad_proveedor + " " + y);
					coincidencia = true
					break;
				}

			}
			console.log(coincidencia);

			if (coincidencia != false) {
				var formData = new FormData();
				formData.append("nit_proveedor", document
						.getElementById("nit_proveedor").value);
				formData.append("ciudad_proveedor", document
						.getElementById("ciudad_proveedor").value);
				formData.append("direccion_proveedor", document
						.getElementById("direccion_proveedor").value);
				formData.append("nombre_proveedor", document
						.getElementById("nombre_proveedor").value);
				formData.append("telefono_proveedor", document
						.getElementById("telefono_proveedor").value);
				var xhr = new XMLHttpRequest();
				xhr.open("PUT", baseUrl+"/actualizarproveedor");

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("nit_proveedor").value = "";
				document.getElementById("ciudad_proveedor").value = "";
				document.getElementById("direccion_proveedor").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_proveedor").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("nit_proveedor").value = "";
				document.getElementById("ciudad_proveedor").value = "";
				document.getElementById("direccion_proveedor").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_proveedor").value = "";
			}

		}
	</script>

</body>
</html>