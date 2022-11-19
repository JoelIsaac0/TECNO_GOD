<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Categoria1</title>
</head>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<body>
	<header>
		<title>"TECNO-GOD"</title>
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
int cat=Integer.parseInt(request.getParameter("cmbCategoria"));
Producto productos=new Producto();
out.print(productos.consultarProducto(cat));


%>

</body>
</html>