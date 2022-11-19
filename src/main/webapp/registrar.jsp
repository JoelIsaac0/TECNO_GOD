<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.productos.negocio.*"%>
<html>
<head>
<title>REGISTRAR</title>
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
	<section>
		<form action="resultado.jsp" method="post">
			ESCOJA LA OPCION
			<% 
			Categoria categoria=new Categoria();
			String combo=categoria.mostrarCategoria();
			out.print(combo);
			%>
		<INPUT TYPE="submit"/>
		</form>
	</section>
	
</body>
</html>