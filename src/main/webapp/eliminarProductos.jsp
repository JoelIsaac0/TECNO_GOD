<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
		<nav>
			<a href="index.jsp">Principio</a> 
			<a href="consulta.jsp">Catalogo</a> 
			<a href="registrar.jsp">Todos los Producto</a>
			<a href="nuevoProducto.jsp">Registrar Producto</a>
			<a href="usuario.jsp">Registrar Usuario</a>
		</nav>
	<section>

		<%

		int cod = Integer.parseInt(request.getParameter("cod"));
		Producto producto = new Producto();
		boolean f = producto.EliminarProducto(cod);
		if (f == true) {
			response.sendRedirect("registrar.jsp");
		}
		%>




	</section>
</body>
</html>