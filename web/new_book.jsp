<%-- 
    Document   : new_book
    Created on : Sep 15, 2015, 6:04:59 PM
    Author     : zopp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Book</title>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <div class="content_home">
            <h3>New Book</h3>
            <form action="insert_book.jsp" method="post">
                <div>
                    <input type="text" name="name" id="name" placeholder="Name Book">
                </div>
                <div>
                    <input type="text" name="author" id="author" placeholder="Author Book">
                </div>
                <div>
                    <input type="text" name="pages" id="pages" placeholder="Number Pages Book">
                </div>
                <div>
                    <br><input type="submit" value="Register" id="registrar">
                </div>
            </form>
            <div>
                <br><a href="index.jsp">Home</a>
            </div>
        </div>
    </body>
</html>
