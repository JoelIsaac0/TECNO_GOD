<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.productos.negocio.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>nuevoProducto</title>
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
	<form action="impresion.jsp" method="post">

		<table border="8">

			<tr>
				<td>id</td>

				<td><input type="number" name="txtid"
					required />*</td>
			</tr>
			<tr>
				<td>Categoria</td>
				<td>	<%
	Categoria categoria=new Categoria();
	String combo=categoria.mostrarCategoria();
	out.print(combo);
	
	%></td>
			</tr>
			<tr>
				<td>Nombre</td>

				<td><input type="text" name="txtname"/></td>
			</tr>
			<tr>
			<tr>
				<td>Cantidad</td>

				<td><input type="number" name="txtcant" pattern="{0-9}"
					required />*</td>
			</tr>
				<td>Precio</td>

				<td><input type="number" name="txtprecio" required />*</td>
			</tr>
		</table>
		<input type="submit" value="enviar" /> <input type="reset"
			value="borrar" />
	</form>
</section>
</body>
</html>