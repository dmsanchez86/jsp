<%@page import="modelo.Conection"%>
<% 
    
    String id = request.getParameter("id");

    Conection c = new Conection("jdbc:mysql://localhost/library", "root", "");

    c.conectar();

    String result = c.delete(id);

    out.println(result);
    
%>
<script>
    setTimeout(function (){ 
        window.location = "new_book.jsp";
    }, 1500);
</script>