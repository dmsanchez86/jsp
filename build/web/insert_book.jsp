<%@page import="modelo.Conection"%>
<% 
    
    String name = request.getParameter("name");
    String author = request.getParameter("author");
    String pages = request.getParameter("pages");

    Conection c = new Conection("jdbc:mysql://localhost/library", "root", "");

    c.conectar();

    String result = c.insert(name, author, pages);

    out.println(result);
    
%>
<script>
    setTimeout(function (){ 
        window.location = "index.jsp";
    }, 1500);
    
</script>