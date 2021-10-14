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
<title>Insertando productos</title>
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
						<li><a href="listaproveedor.jsp">Proveedores</a></li>
						<i class="fas fa-apple-alt"></i>
						<li class="active"><a href="insertarproducto.jsp">Productos</a></li>
						<i class="fas fa-money-check-alt"></i>
						<li><a href="listausuarios.jsp">Ventas</a></li>
						<i class="fas fa-clipboard-list"></i>
						<li><a href="about.html">Reportes</a></li>

					</ul>
				</div>
			</div>

		</div>
	</nav>
	<br>
	<br>
	<div class="col-md-8 col-md-offset-2 gtco-heading text-center">
		<h2>
			<i class="fas fa-plus-circle"></i> Insertando archivo de productos
		</h2>
	</div>

	<div class="container">
		<div id="error" class="alert alert-danger visually-hidden"
			role="alert">Archivo vacío, extensión no valida o datos
			corruptos (El separador debe ser coma ",")</div>

		<div id="correcto" class="alert alert-success visually-hidden"
			role="alert">Productos importados de CSV con exito</div>


		<form>
			<div>
				<label for="formFileLg" class="form-label">Seleccionar
					archivo CSV con el inventario de productos</label> <input
					class="form-control form-control-lg" id="archivo" type="file"
					accept=".csv"><br>

				<button type="submit" class="btn btn-success btn-lg btn-block"
					onclick="subirArchivo()">
					<i class="fas fa-check"></i> Subir archivo
				</button>

			</div>
		</form>

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
					</div>
				</div>
			</div>

		</footer>
		<!-- footer END-->
		
	<script>
		function subirArchivo() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];

		<script>
			function subirArchivo() {

				try {

					var csvFile = document.getElementById("archivo");

					var input = csvFile.files[0];
					var reader = new FileReader();

					reader.onload = function(e) {

					var xhr = new XMLHttpRequest();
					xhr.open("DELETE",baseUrl+
							"/eliminartodoproducto", true);
					xhr.send();

						var arrayLineas = text.split("\n");

						var xhr = new XMLHttpRequest();
						xhr.open("DELETE",
								"http://localhost:8080/eliminartodoproducto",
								true);
						xhr.send();

						for (var i = 0; i < arrayLineas.length; i += 1) {
							var arraydatos = arrayLineas[i].split(",");

							if (arrayLineas[i] == "") {
								continue;
							}

							for (var j = 0; j < arraydatos.length; j += 1) {
								console.log(i + " " + j + "->" + arraydatos[j]);
							}

							var formData = new FormData();
							formData.append("codigo_producto", arraydatos[0]);
							formData.append("nombre_producto", arraydatos[1]);
							formData.append("nit_proveedor", arraydatos[2]);
							formData.append("precio_compra", arraydatos[3]);
							formData.append("iva_compra", arraydatos[4]);
							formData.append("precio_venta", arraydatos[5]);
							var xhr = new XMLHttpRequest();
							xhr.open("POST",
									"http://localhost:8080/registrarproducto");

							xhr.send(formData);
						}

						var element = document.getElementById("error");
						element.classList.add("visually-hidden");
						var element2 = document.getElementById("correcto");
						element2.classList.remove("visually-hidden");

						var formData = new FormData();
						formData.append("codigo_producto", arraydatos[0]);
						formData.append("nombre_producto", arraydatos[1]);
						formData.append("nit_proveedor", arraydatos[2]);
						formData.append("precio_compra", arraydatos[3]);
						formData.append("iva_compra", arraydatos[4]);
						formData.append("precio_venta", arraydatos[5]);
						var xhr = new XMLHttpRequest();
						xhr.open("POST",
								"/registrarproducto");
					};

					reader.readAsText(input);
				} catch (error) {
					var element = document.getElementById("error");
					element.classList.remove("visually-hidden");
					var element2 = document.getElementById("correcto");
					element2.classList.add("visually-hidden");

					document.getElementById("archivo").value = "";
				}
			}
		</script>
</html>