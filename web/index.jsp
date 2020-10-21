<%-- 
    Document   : index
    Created on : 21-oct-2019, 20:50:03
    Author     : Dr.TROPUS
--%>

<%@page import="dao.Categoria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Daocategoria"%>
<!DOCTYPE html>
<% Daocategoria daocategoria = new Daocategoria();
    List<Categoria> categoria = new ArrayList();
    categoria = (List<Categoria>) daocategoria.consultar();
%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Franccesca | Productos </title>
        <link href="https://montillatelevision.com/wp-content/uploads/2017/01/ICONO-TECNOLOG%C3%8DA.png" rel="shortcut icon" type="image/x-icon" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <script type="text/javascript" src="ValidacionesP.js"></script>
    </head>
    <body>
        <div class="container">
            <br>
            <div class="row">
                <div class="col-sm-1">
                    <img src="https://montillatelevision.com/wp-content/uploads/2017/01/ICONO-TECNOLOG%C3%8DA.png" height="50" />
                </div>
                <div class="col-sm-11">    
                    <h1>Mantenedor de Productos</h1> 
                </div>
            </div>
            <form onsubmit="return validarCampos()" method="POST" action="ServletP">
                <br>
                <div class="form-group">
                    <div class="col-sm-3">
                        <h5>¿Qué desea realizar?</h5>
                        <select class="custom-select" name="accion" id="accion1" onchange="mostrar1()">
                            <option value="">Seleccione</option>
                            <option value="Ingresar">Ingresar Productos</option>
                            <option value="Buscar">Buscar Productos</option>
                        </select>
                    </div>
                </div>
                <div id="divR" style="display: none">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <label class="radio-inline"><input type="radio" id="rd1" name="rd" value="a" onclick="mostrar2(this.value)" /> Búsqueda por ID</label> 
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <label class="radio-inline"><input type="radio" id="rd2" name="rd" value="b" onclick="mostrar2(this.value)" /> Búsqueda por palabra clave</label>
                </div>
                <div id="div1" style="display: none">
                    <br>
                    <div class="form-group">
                        <label for="id1" class="col-lg-2 control-label">ID Producto</label>
                        <div class="col-lg-6">
                            <input type="text" class="form-control" name="id" id="id1" placeholder="ID Producto" />
                        </div>
                    </div>
                </div>
                <div id="div2" style="display: none">
                    <br>
                    <div class="form-group">
                        <label for="prod1" class="col-lg-2 control-label">Nombre Producto</label>
                        <div class="col-lg-6">
                            <input type="text" class="form-control" name="prod" id="prod1" placeholder="Nombre Producto" />
                        </div>
                    </div>
                </div>
                <div id="div3" style="display: none">
                    <div class="form-group">
                        <label for="precio1" class="col-lg-2 control-label">Precio</label>
                        <div class="col-lg-6">
                            <input type="text" class="form-control" name="precio" id="precio1" placeholder="Precio" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-6 control-label">Categoría</label>
                        <div class="col-sm-6">
                            <select class="custom-select" name="cat" id="cat1" >
                                <option value="0">Selecione categoría</option>
                                <% for (Categoria c: categoria){%>
                                    
                                
                                <option value="<%= c.getCat_cod_categoria()%>"><%= c.getCat_nom_categoria()%></option>
                                <%}%>
                            </select>
                            <br>
                        </div> 
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp; 
                    <input class="btn btn-success" type="submit" value="Ingresar">
                </div>
                <input type="hidden" id="opc" name="opc1" value="0" />
                <div id="div4" style="display: none">
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input class="btn btn-success" type="submit" value="Buscar">
                </div>
                <br><br>
            </form>
        </div>
    </body>
</html>
