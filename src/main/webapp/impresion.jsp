<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "com.productos.negocio.*"%>
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
 <%


    int id=Integer.parseInt(request.getParameter("txtid"));
    int cat=Integer.parseInt(request.getParameter("cmbCategoria"));
    String desc=request.getParameter("txtname");
    int cant=Integer.parseInt(request.getParameter("txtcant"));
    Double precio=Double.parseDouble(request.getParameter("txtprecio"));
    Producto producto=new Producto();
    out.print(producto.ingresarProducto(id, cat, desc, cant, precio));
    %>
        </section>
</body>
</html>