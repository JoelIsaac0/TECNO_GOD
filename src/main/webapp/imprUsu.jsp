<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<body>
	<header>
		<title>"TECNO-GOD"</title>
		<h1>"TECNO-GOD"</h1>
	</header>
<section>
		<nav>
			<a href="index.jsp">Principio</a> 
			<a href="consulta.jsp">Catalogo</a> 
			<a href="registrar.jsp">Todos los Producto</a>
			<a href="nuevoProducto.jsp">Registrar Producto</a>
			<a href="modificar.jsp">Modificar</a>
			<a href="usuario.jsp">Registrar Usuario</a>
		</nav>
</section>
<section>
		<%
		
		String cedula=request.getParameter("txtCedula");
		String nombre=request.getParameter("txtNombre");
		String contra=request.getParameter("txtContra");
		String est=request.getParameter("cmbCivil");
		String color=request.getParameter("color");


		Usuario user= new Usuario();
		out.print(user.ingresarUsuario(nombre,cedula,contra,est,color));
		
		%>
		<%
	out.print(user.consultarUsuarios());
	%>
	</section>
</body>
</html>