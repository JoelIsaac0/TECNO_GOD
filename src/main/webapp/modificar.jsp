<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modificar</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
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

				<%	
	int cod=Integer.parseInt(request.getParameter("cod"));
	Producto producto = new Producto();
	producto.ConsulEditarProductos(cod);
	%>

			<form action="editarProducto.jsp" method="post">
				<table>
					<tr>
						<td>Codigo Producto:</td>
						<td><input type = "text" name="editarcod" value="<%=cod%>"/></td>
					</tr>
					
					<tr>
						<td>Categoria:</td>
						<td><output ><%=producto.getId_cat()%></output></td>
					</tr>
					
					<tr>
						<td>Descripcion:</td>
						<td><input type = "text" name="editardesc" value="<%=producto.getNombre_pr()%>"/></td>
					</tr>
					
					<tr>
						<td>Precio:</td>
						<td><input type = "text" name="editarprec" value="<%=producto.getPrecio_pr()%>"/></td>
					</tr>
					
					<tr>
						<td>Cantidad:</td>
						<td><input type = "text" name="editarcant" value="<%=producto.getCantidad_pr()%>"/></td>
					</tr>
				
				</table>
				<br />
				<br /><input type="submit" name="Actualizar"/>
				
				
			</form> 
	

			</section>
</body>
</html>