<%-- 
    Document   : all
    Created on : Sep 15, 2015, 5:56:14 PM
    Author     : zopp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.Conection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All books</title>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <%
            
            Conection conection = new Conection("jdbc:mysql://localhost/library", "root", "");
            conection.conectar();
            
            try{
                ResultSet data = conection.query("SELECT * FROM book");
        %>
        <div class="content_home">
            <h3>All Books</h3>
            <table>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>AUTHOR</th>
                    <th>PAGES</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                </tr>
            <%      while(data.next()){ %>
                        <tr>
                            <td><% out.println(data.getString("id")); %></td>
                            <td><% out.println(data.getString("name")); %></td>
                            <td><% out.println(data.getString("author")); %></td>
                            <td><% out.println(data.getString("pages")); %></td>
                            <td><a href="update.jsp?id=<% out.println(data.getString("id")); %>">Editar</a></td>
                            <td><a href="delete.jsp?id=<% out.println(data.getString("id")); %>">Eliminar</a></td>
                        </tr>
                <%  } %>
            <%    }catch(Exception e){
                    out.print("Error:<br>");
                    out.print(e);
                }

            %>
            </table>

            <div>
                <br><a href="index.jsp">Home</a>
            </div>
        </div>
    </body>
</html>
