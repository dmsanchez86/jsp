<%-- 
    Document   : update
    Created on : Sep 16, 2015, 4:33:30 PM
    Author     : zopp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.Conection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Book</title>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <%         
        
            Conection conection = new Conection("jdbc:mysql://localhost/library", "root", "");
            conection.conectar();
            ResultSet data;
            
            data = conection.query("SELECT * FROM book WHERE id = '"+ request.getParameter("id") +"'");
            Object[] obj = new Object[4];
            
            while(data.next()){
                obj[0] = data.getInt(1);
                obj[1] = data.getString(2);
                obj[2] = data.getString(3);
                obj[3] = data.getInt(4);
            }
            conection.logout();
        
        %>
        
        <div class="content_home">
            <h3>Update Book</h3>
            <form action="update_book.jsp" method="post">
                <div>
                    <input type="hidden" name="id" id="id" value="<%= obj[0].toString() %>">
                </div>
                <div>
                    <input type="text" name="name" id="name" placeholder="Name Book" value="<%= obj[1].toString() %>">
                </div>
                <div>
                    <input type="text" name="author" id="author" placeholder="Author Book"  value="<%= obj[2].toString() %>">
                </div>
                <div>
                    <input type="text" name="pages" id="pages" placeholder="Number Pages Book"  value="<%= obj[3].toString() %>">
                </div>
                <div>
                    <br><input type="submit" value="Actualizar" id="update">
                </div>
            </form>
        </div>
        
    </body>
</html>
