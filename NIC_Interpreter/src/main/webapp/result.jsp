<%-- 
    Author     : Chamil
--%>

<%@page import="nicApp.nic"%>
<%@page import="nicApp.mavelException"%>
<%@page import="nicApp.nicInterpreter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Result of the Nic interpretation </h1>
    <%
	String nic = request.getParameter("nic");
		
	nicInterpreter NICI = new nicInterpreter();
	
	try {
		nic Nic = NICI.createNic(nic);
                String details = NICI.showDetails(Nic);
		
		out.println(details);
                
	} catch (mavelException ex) {
		out.println(ex.getMessage());
	}	
%>
    
        

    </body>
</html>
