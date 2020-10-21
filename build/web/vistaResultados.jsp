<%-- 
    Document   : vistaResultados
    Created on : 25-oct-2019, 13:19:52
    Author     : Dr.TROPUS
--%>

<%@page import="dao.Categoria"%>
<%@page import="modelo.Daocategoria"%>
<%@page import="dao.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Daoproducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Franccesca | Resultado </title>
        <link href="https://montillatelevision.com/wp-content/uploads/2017/01/ICONO-TECNOLOG%C3%8DA.png" rel="shortcut icon" type="image/x-icon" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <div class="container">
            <br>
            <% String accion = (String) request.getAttribute("accion");
                if ("Ingresar".equals(accion)) {%>

            <h4>${msj}</h4>

            <% } else if ("Buscar".equals(accion)) {
                Daoproducto daoproducto = new Daoproducto();
                Daocategoria daocategoria = new Daocategoria();

                List<Producto> datos = new ArrayList();
                List<Categoria> categoria = new ArrayList();
                String parametro;

                if (((List<Producto>) request.getSession().getAttribute("datos")).isEmpty()) {
            %>
            <h4>Producto no se encuentra</h4>
            <%} else {
                datos = (List<Producto>) request.getSession().getAttribute("datos");%>
            <h4>Detalle Producto:</h4>

            <%for (Producto p : datos) {
                    parametro = Integer.toString(p.getProd_cod_categoria());
                    categoria = (List<Categoria>) daocategoria.consultarP(parametro, null);

            %>
            <h5>--------------------------------------------------------------------------------</h5>
            <h6>ID Producto: <%= p.getProd_codigo()%></h6>
            <h6>Nombre Producto: <%= p.getProd_nombre()%></h6>
            <h6>Precio: <%= p.getProd_precio()%></h6>
            <% for (Categoria c : categoria) {%>
            <h6>Categoria: <%= c.getCat_nom_categoria()%></h6>
            <h5>--------------------------------------------------------------------------------</h5>
            <%}
                        }
                    }
                }%>     
            <a href="index.jsp">Volver al formulario</a>
        </div>
    </body>
</html>
