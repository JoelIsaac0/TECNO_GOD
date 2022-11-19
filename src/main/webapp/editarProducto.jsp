<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Producto</title>
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
<%
		int cod = Integer.parseInt(request.getParameter("editarcod"));
		String nom = request.getParameter("editardesc");
		float pre = Float.parseFloat(request.getParameter("editarprec"));
		int can = Integer.parseInt(request.getParameter("editarcant"));
		Producto mp = new Producto(cod, nom, pre, can);
		boolean actualizado = mp.ModificarProducto(mp);
		if (actualizado == true){
			out.println("Modificacion Exitosa");
		} else {
			out.println("algo salio mal");
		}
		%>
</body>
</html>