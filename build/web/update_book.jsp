<%@page import="modelo.Conection"%>
<% 

    try{
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String author = request.getParameter("author");
        String pages = request.getParameter("pages");
        
        if(id.equals(""))
            out.println("the id is required!");
        else if(name.equals(""))
            out.println("the name is required!");
        else if(author.equals(""))
            out.println("the author is required!");
        else if(pages.equals(""))
            out.println("the pages is required!");
        else{
            Conection c = new Conection("jdbc:mysql://localhost/library", "root", "");

            c.conectar();

            String result = c.update(id, name, author, pages);

            out.println(result);
        }
        
    }catch(NumberFormatException e){
        out.println(e.getMessage());
    }catch(Exception e){
        out.println(e.getMessage());
    }
    
    
%>
<script>
    setTimeout(function (){ 
        //window.location = "index.jsp";
    }, 1500);
    
</script>