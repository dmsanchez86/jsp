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
            Object[] obj = {"","","",""};
            boolean select_display;
            
            if(request.getParameter("id") != null){
                data = conection.query("SELECT * FROM book WHERE id = '"+ request.getParameter("id") +"'");

                while(data.next()){
                    obj[0] = data.getInt(1);
                    obj[1] = data.getString(2);
                    obj[2] = data.getString(3);
                    obj[3] = data.getInt(4);
                }
                conection.logout();
                
                select_display = false;
            }else{
                select_display = true;
                
                data = conection.query("SELECT id FROM book");
            }
        %>
        
        <div class="content_home">
            <h3>Update Book</h3>
            <form action="update_book.jsp" method="post">
                
                <%
                if(select_display){ %>
                    <select id="id" name="id">
                        <option value="">Select Id</option>
                        <% 
                        
                        while(data.next())
                            out.print("<option value="+ data.getString(1) +">"+ data.getString(1) +"</option>");
                        
                        %>
                    </select>
                <%
                }else{
                %>
                
                    <div>
                        <input type="hidden" name="id" id="id" value="<%= obj[0].toString() %>">
                    </div>
                
                <% } %>
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
                    <br><input type="submit" value="Update" id="update">
                </div>
            </form>
            <div>
                <br><a href="index.jsp">Home</a>
            </div>
        </div>
        
        
    </body>
</html>
