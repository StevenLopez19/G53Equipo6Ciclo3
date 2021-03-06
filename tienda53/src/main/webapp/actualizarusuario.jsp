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
<title>Actualizar usuario</title>
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
						<li class="active"><a href="listausuarios.jsp">Usuarios</a></li>
						<i class="fas fa-address-book"></i>
						<li><a href="listaclientes.jsp">Clientes</a></li>
						<i class="fas fa-truck"></i>
						<li><a href="listaproveedor.jsp">Proveedores</a></li>
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
							<li class="test-a"><a href="insertarusuario.jsp"><i
									class="fas fa-plus-circle"></i> Agregar usuario</a></li>
							<li><a href="eliminarusuario.jsp"><i
									class="fas fa-trash"></i>Eliminar usuario</a></li>
							<li class="active"><a href="actualizarusuario.jsp"><i
									class="fas fa-pen-alt"></i>Actualizar usuario</a></li>
							<li><a href="buscarusuario.jsp"><i class="fas fa-search"></i>Buscar
									usuario</a></li>
							<li><a href="listausuarios.jsp"><i class="fas fa-search"></i>Listar
									todos los usuarios</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="col-md-8 col-md-offset-2 gtco-heading text-center">
		<h2>
			<i class="fas fa-sync"></i> Datos a actualizar del usuario
		</h2>
		<div id="error" class="alert alert-danger visually-hidden col-md-4"
			role="alert">Error al actualizar el usuario, verifique que la
			cedula y usuario dados sean validos</div>
		<div id="correcto"
			class="alert alert-success visually-hidden col-md-4" role="alert">Usuario
			actualizado con exito</div>
	</div>

	<div class="container">
	

		<!-- form -->
		<form>
			<div class="form-group col-md-6">
				<label for="exampleInputEmail1">Cedula</label> <input type="number"
					class="form-control" id="cedula_usuario" placeholder="Cedula"
					required>
			</div>
			<div class="form-group col-md-6">
				<label for="exampleInputPassword1">Email</label> <input type="email"
					class="form-control" id="email_usuario" placeholder="Email"
					required>
			</div>
			<div class="form-group col-md-12">
				<label for="exampleInputEmail1">Nombre completo</label> <input
					type="text" class="form-control" id="nombre_usuario"
					placeholder="Nombre completo" required>
			</div>
			<div class="form-group col-md-6">
				<label for="exampleInputPassword1">Username</label> <input
					type="text" class="form-control" id="user" placeholder="Username"
					required>
			</div>
			<div class="form-group col-md-6">
				<label for="exampleInputEmail1">Password</label> <input
					type="password" class="form-control" id="password"
					placeholder="Password" required>
			</div>

			<button type="submit" class="btn btn-default btn-lg btn-block"
				onclick="actualizar()">
				<i class="fas fa-check"></i> Actualizar nuevo usuario
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
		function actualizar() {
			var x = document.getElementById("user").value;
			var y = document.getElementById("cedula_usuario").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarusuarios', false);
			req.send(null);
			var usuarios = null;
			if (req.status == 200)
				usuarios = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < usuarios.length; i++) {
				console.log(usuarios[i].usuario);
				console.log(usuarios[i].cedula_usuario);
				if (usuarios[i].usuario === x) {
					console.log(usuarios[i].usuario + " " + x);
					coincidencia = true
					break;
				}

				if (usuarios[i].cedula_usuario === y) {
					console.log(usuarios[i].cedula_usuario + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				var formData = new FormData();
				formData.append("cedula_usuario", document
						.getElementById("cedula_usuario").value);
				formData.append("email_usuario", document
						.getElementById("email_usuario").value);
				formData.append("nombre_usuario", document
						.getElementById("nombre_usuario").value);
				formData.append("password",
						document.getElementById("password").value);
				formData.append("usuario",
						document.getElementById("user").value);
				var xhr = new XMLHttpRequest();
				xhr.open("PUT", "http://localhost:8080/actualizarusuarios");

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
			}
		}
	</script>

</body>
</html>