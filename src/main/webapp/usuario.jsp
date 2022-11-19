<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import='com.productos.negocio.*'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro Usuario</title>
</head>
<body>
	<header>
		<title>"TECNO-GOD"</title>
		<link href="css/estilos.css" rel="stylesheet" type="text/css">
		<h1>"TECNO-GOD"</h1>
	</header>
		<nav>
			<a href="index.jsp">Principio</a> 
			<a href="consulta.jsp">Catalogo</a> 
			<a href="registrar.jsp">Todos los Producto</a>
			<a href="nuevoProducto.jsp">Registrar Producto</a>
			<a href="usuario.jsp">Registrar Usuario</a>
		</nav>

	<section>
		<form action="imprUsu.jsp" method="post">

			<table border="12">

				<tr>
					<td>id</td>

					<td><input type="text" name="txtCedula" /></td>
				</tr>
				
				<tr>
					<td>Nombre</td>

					<td><input type="text" name="txtNombre" /></td>
				</tr>

				<tr>				
					<td>Contraseña<input type="text" name="txtContra"  /> </td>
				</tr>
				<tr>
				<td>Color Favorito <input type="color" name="color"/></td>
				</tr>
				<tr>
				<td>Estado Civil
				<select name="cmbCivil">
					<option value="Soltero">Soltero</option>
					<option value="Casado">Casado</option>
					<option value="Divorciado">Divorciado</option>
					<option value="Viudo">Viudo</option>
				</td>
				</select>
				
			</table>
			<input type="submit" value="enviar" /> <input type="reset"
				value="borrar" />
		</form>
	</section>
</body>
</html>