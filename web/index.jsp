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
    <body class="body_animate">
        <div class="content_home">
            <h2>Library</h2>
            <span>
                <a href="new_book.jsp" data-color="yellow">New</a><br>
                <a href="update.jsp" data-color="blue">Update</a><br>
                <a href="all.jsp" data-color="green">All</a><br>
            </span>
        </div>
        
        <script>
            window.onload = function(){
                console.log("Page Load!");
                
                var links = document.querySelectorAll(".content_home a");
                var title = document.querySelector(".content_home h2");
                var body = document.querySelector(".body_animate");
                var content = document.querySelector(".content_home");
                
                content.onmouseenter = hover;
                
                title.onmouseenter = hover;
                
                content.onmouseout = leave;
                
                for (var i = 0; i < links.length; i++) {
                    links[i].onmouseenter = function(){
                        var color = this.getAttribute("data-color");
                        
                        body.className = "body_animate active "+ color;
                    }
                }
                
                function hover(){
                    body.className = "body_animate active";
                }
                
                function leave(){
                    body.className = "body_animate";
                }
                
            }
        </script>
        
    </body>
</html>
