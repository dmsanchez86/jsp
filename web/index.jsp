<%-- 
    Document   : index.jsp
    Created on : Sep 15, 2015, 5:50:17 PM
    Author     : zopp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.Conection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My First JSP Page</title>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <div class="content_home">
            <h2>Library</h2>
            <span>
                <a href="new_book.jsp">Nuevo</a>
                <a href="update.jsp">Modificar</a>
                <a href="all.jsp">Todos</a>
            </span>
        </div>
        
    </body>
</html>
