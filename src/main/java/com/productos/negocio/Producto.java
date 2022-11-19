package com.productos.negocio;

import java.io.File;
import java.io.FileInputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.Conexion;

public class Producto {
	
	private int id_pr;
	private int id_cat;
	private String nombre_pr;
	private int cantidad_pr;
	private double precio_pr;

	public Producto() {
		setId_pr(0);
		setNombre_pr("");
		setPrecio_pr(0);
		setCantidad_pr(0);
	}
	public Producto (int cod, String nom, float pre, int can) {
		setId_pr(cod);
		setNombre_pr(nom);
		setPrecio_pr(pre);
		setCantidad_pr(can);
	}
	public int getId_pr() {
		return id_pr;
	}

	public void setId_pr(int id_pr) {
		this.id_pr = id_pr;
	}

	public int getId_cat() {
		return id_cat;
	}

	public void setId_cat(int id_cat) {
		this.id_cat = id_cat;
	}

	public String getNombre_pr() {
		return nombre_pr;
	}

	public void setNombre_pr(String nombre_pr) {
		this.nombre_pr = nombre_pr;
	}

	public int getCantidad_pr() {
		return cantidad_pr;
	}

	public void setCantidad_pr(int cantidad_pr) {
		this.cantidad_pr = cantidad_pr;
	}

	public double getPrecio_pr() {
		return precio_pr;
	}

	public void setPrecio_pr(double precio_pr) {
		this.precio_pr = precio_pr;
	}

	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr"; Conexion con=new Conexion();
		String tabla="<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>"; 
		ResultSet rs=null;
		rs=con.Consulta(sql); 
		try 
		{
			while(rs.next()) {
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(2)+"</td>"
						+ "<td>"+rs.getDouble(3)+"</td>"
						+ "<td>"+rs.getInt(4)+"</td>"
						+ "<td>"+rs.getInt(5)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block e.printStackTrace(); 
			System.out.print(e.getMessage());
		} tabla+="</table>"; 
		return tabla;
	}



	public String buscarProductoCategoria(int cat) {
		String sentencia="SELECT descripcion_pr, precio_pr FROM tb_producto WHERE id_cat="+cat; 
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3>";
		try
		{
			{
				rs=con.Consulta(sentencia); 
				while(rs.next())
					resultado+="<tr><td>"+ rs.getString(1)+"</td>"
							+ "<td>"+rs.getDouble(2)+"</td></tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e) {
			System.out.print(e.getMessage()); 
		}
		return resultado;
	}

	public String ingresarProducto(int id, int cat, String nombre, int cantidad, double precio)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_producto (id_pr,descripcion_pr,"
				+ "precio_pr,cantidad_pr,id_cat) "
				+ "VALUES(?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setString(2, nombre);
			pr.setDouble(3, precio);
			pr.setInt(4, cantidad);
			pr.setInt(5,cat);
			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}

	public String consultarProducto(int cod) {
		String tabla = "<table border=1>";
		String sql = "select id_pr,descripcion_pr,precio_pr,cantidad_pr from public.tb_producto where id_cat ='" + cod +"'" + "ORDER BY id_pr";
		ResultSet rs = null;
		tabla += "<tr>"
				+ "<th>Codigo</th>"
				+ "<th>Descripcion</th>"
				+ "<th>Precio</th>"
				+ "<th>Cantidad</th>"
				+ "</tr>";
		Conexion con = new Conexion();
		try {
			rs = con.Consulta(sql);
			while(rs.next()) {
				tabla += "<tr>"
						+ "<td><pre style=\"text-align: center\">" + rs.getInt(1) + "</pre></td>"
						+ "<td><pre style=\"text-align: center\">" + rs.getString(2) + "</pre></td>"
						+ "<td><pre style=\"text-align: center\">" + rs.getFloat(3) + "</pre></td>"
						+ "<td><pre style=\"text-align: center\">" + rs.getInt(4) + "</pre></td>"
						+ "<td> <a href= modificar.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"
						+ "<td> <a href= eliminarProductos.jsp?cod=" + rs.getInt(1) + " onclick=\"return confirm('Estás seguro que deseas eliminar el registro?');\"><pre style=\"textalign: center\">Eliminar</pre></a></td>"
						+ "</tr>";
			}
			tabla += "</table>";
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return tabla;
	}

	public void ConsulEditarProductos(int cod) {
		Conexion obj = new Conexion();
		ResultSet rs = null;

		String sql ="SELECT id_pr,descripcion_pr,precio_pr,cantidad_pr,id_cat FROM tb_producto where id_pr = '" + cod + "'";
		try {
			rs = obj.Consulta(sql);
			while (rs.next()) {
				setId_pr(rs.getInt(1));
				setNombre_pr(rs.getString(2));
				setPrecio_pr(rs.getFloat(3));
				setCantidad_pr(rs.getInt(4));
				setId_cat(rs.getInt(5));
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
	}
	
	public boolean ModificarProducto(Producto mp) {
		boolean agregado = false;
		Conexion obj = new Conexion();
		String sql = "UPDATE tb_producto SET descripcion_pr ='" + mp.getNombre_pr() + "', precio_pr = '" + mp.getPrecio_pr() + "', "
				+ "cantidad_pr = '" + mp.getCantidad_pr() + "' WHERE \"id_pr\"='" + mp.getId_pr() + "'"; 
		try {
		obj.Ejecutar(sql);
		agregado = true;
		} catch (Exception e) {
			agregado = false;
		}
		return agregado;
	}
	
	public boolean EliminarProducto(int cod) {
		boolean f = false;
		Conexion con = new Conexion();
		String sql = "delete from tb_producto where id_pr='" + cod + "'";
		try {
			con.Ejecutar(sql);
			f = true;
		} catch (Exception e) {
			f = false;
		}
		return f;
	}
}
