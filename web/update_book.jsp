<%@page import="modelo.Conection"%>
<% 
    
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String author = request.getParameter("author");
    String pages = request.getParameter("pages");

    Conection c = new Conection("jdbc:mysql://localhost/library", "root", "");

    c.conectar();

    String result = c.update(id, name, author, pages);

    out.println(result);
    
%>
<script>
    setTimeout(function (){ 
        window.location = "new_book.jsp";
    }, 1500);
    
</script>