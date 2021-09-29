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
<title>Lista de usuarios</title>
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

<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">


<script>
	var baseurl = "http://localhost:8080/listarusuarios";
	function loadusuarios() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseurl, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var usuarios = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-dark table-striped'><tr><th>Cedula</th><th>Email</th><th>Nombre</th><th>Password</th><th>Usuario</th></tr>";
				var main = "";
				for (i = 0; i < usuarios.length; i++) {
					main += "<tr><td>" + usuarios[i].cedula_usuario
							+ "</td><td>" + usuarios[i].email_usuario
							+ "</td><td>" + usuarios[i].nombre_usuario
							+ "</td><td>" + usuarios[i].password + "</td><td>"
							+ usuarios[i].usuario + "</td></tr>";
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("usuariosinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loadusuarios();
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
						<a class="navbar-brand links" href="index.html" ><img src="images/logotipoizquierda.png"  class="logo" /></a>
					</div>
						<ul>
							<i class="fas fa-users"></i><li class="active"><a href="listausuarios.jsp">Usuarios</a></li>
							<i class="fas fa-address-book"></i><li><a href="listaclientes.jsp">Clientes</a></li>
							<i class="fas fa-truck"></i><li><a href="listausuarios.jsp">Proveedores</a></li>
							<i class="fas fa-apple-alt"></i><li><a href="listausuarios.jsp">Productos</a></li>
							<i class="fas fa-money-check-alt"></i><li><a href="listausuarios.jsp">Ventas</a></li>
							<i class="fas fa-clipboard-list"></i><li><a href="about.html">Reportes</a></li>
							
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
							<li class="test-a"><a href="insertarusuario.jsp"><i class="fas fa-plus-circle"></i> Agregar usuario</a></li>
							<li><a href="eliminarusuario.jsp"><i class="fas fa-trash"></i>Eliminar usuario</a></li>
							<li><a href="actualizarusuario.jsp"><i class="fas fa-pen-alt"></i>Actualizar usuario</a></li>
							<li><a href="buscarusuario.jsp"><i class="fas fa-search"></i>Buscar usuario</a></li>
							<li><a href="listausuarios.jsp"><i class="fas fa-search"></i>Listar todos los usuarios</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- footer  -->
	
	<div class="gtco-nav col-md-8 col-md-offset-2 gtco-heading text-center">
		<h2>Tabla de usuarios</h2>
			<div class="container ">
				<div class="row">
					<!--  Aqui es donde se autogenera la tabla basado en el script -->
					<div class="col align-self-center table-hover" id="usuariosinfo">
					</div>
				</div>
			</div>
	</div>
	


<footer>
	<div class="container gtco-footer gtco-copyright bg-dark  fixed-bottom">
				<div class="gtco-container">
					<div class="row">
						<div class="col-md-6 text-left">
							<p><small>&copy; 2021. All Rights Reserved. </small></p>
						</div>
						<div class="col-md-6 text-right">
							<p><small>Programado por el maravilloso grupo 6.</small> </p>
						</div>
					</div>
				</div>
			</div>

</footer>


</body>
</html>