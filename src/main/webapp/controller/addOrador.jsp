<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String nom=request.getParameter("nomAdd");
	String ape=request.getParameter("apeAdd");
	String email=request.getParameter("emailAdd");
	String dni=request.getParameter("dniAdd");
	String temas=request.getParameter("temasAdd");	
	String foto=request.getParameter("fotoAdd");
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try{
		Integer insertOk=st.executeUpdate("INSERT INTO oradores (nombre, apellido, email, dni,temas, fotoPerfil) VALUES ('" +nom+ "','"+ape+"','"+email+"',"+dni+",'"+temas+"','"+foto+"') ");
		
		if(insertOk==1) {
			response.sendRedirect("../view/listOra.jsp?mensaje=El%20usuario%20se%20agregó%20exitosamente");
		} else {
			response.sendRedirect("../view/listOra.jsp?mensaje=El%20usuario%20no%20se%20pudo%20agregar");
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/listOra.jsp?mensaje=El%20usuario%20no%20se%20pudo%20agregar");
		e.printStackTrace();
	}
	
	
	

%>