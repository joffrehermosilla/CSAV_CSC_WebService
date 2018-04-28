<%@include file="head.jspf" %>
<script src="http://localhost:8084/ProyectoSVAC/resources/js/catalogoController.js" type="text/javascript"></script>
<script src="http://localhost:8084/ProyectoSVAC/resources/js/dirPagination.js" type="text/javascript"></script>
</head>
    <body ng-app="myCatalogo" ng-controller="catalogoCtrl">
        
        <%@include file="navBarAdmin.jsp"%>
        
        <div class="container-fluid" style="padding-bottom: 35px;">
            <div class="row">
                <div class="col-lg-3">&nbsp;</div>
                <div class="col-lg-6">
                    <ul class="nav nav-pills nav-justified">
                        <li class="nav-item active" style="padding-left: 5px; padding-right: 5px;">
                            <a class="nav-link active" data-toggle="pill" href="#productosN">Productos</a>
                        </li>
                        <li class="nav-item" style="padding-left: 5px; padding-right: 5px;">
                            <a class="nav-link" data-toggle="pill" href="#reporteVentaN">Reportes Venta</a>
                        </li>
                        <li class="nav-item" style="padding-left: 5px; padding-right: 5px;">
                            <a class="nav-link" data-toggle="pill" href="#catalogoN">Catálogo</a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-3">&nbsp;</div>
            </div>
        </div>
        
        <div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-1">&nbsp;</div>
                    <div class="col-lg-10">
                        <div class="tab-content">

                            <div class="tab-pane fade in active" id="productosN" ng-init="getProducto()">
                                <table class="table table-striped" style="font-size: 15px;">
                                    <tr>
                                        <th>Código</th>
                                        <th>Nombre del producto</th>
                                        <th>Calificacion</th>
                                        <th>Ingreso</th>
                                        <th>Salida</th>
                                        <th>Cantidad Pedido</th>
                                        <th>Vista Previa</th>
                                    </tr>
                                    <!--{{personaUsuario.nombrePersona}}-->
                                    <tr ng-repeat="producto in ProductoList">
                                        <td>{{producto.codigo_producto}}</td>
                                        <td>{{producto.nombre_producto}}</td>
                                        <td>{{producto.nombrePersona}}</td>
                                        <td>{{producto.ingreso_almacen_producto}}</td>
                                        <td>{{producto.salida_almacen_producto}}</td>
                                        <td>{{producto.stock_producto}}</td>
                                        <td><button class="btn btn-danger" data-ng-click="eliminar($event)" value="{{personaUsuario.idPersona}}" > Eliminar </button></td>
                                    </tr>
                                </table>
                            </div>

                            <div class="tab-pane fade" id="reporteVentaN">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div style="border-radius: 4px; padding: 4px 4px 1px 4px;">
                                                <div style="background-color: #8ed8b7; text-align: center; padding-bottom: 15px; padding-top: 15px;">
                                                    <span style="color: #FCFFFF; font-weight: 600;">VENDEDORES</span>
                                               </div>
                                               <div class="list-group" style="overflow-y: scroll; height: 400px; background-color: #bed2c9;" id="list-tab" role="tablist">
                                                   <a class="nav-link list-group-item list-group-item-action" data-toggle="pill" href=".listaReporte" >Home</a>
                                                   <a class="nav-link list-group-item list-group-item-action" data-toggle="pill" href=".listaReporte" >Profile</a>
                                                   <a class="nav-link list-group-item list-group-item-action" data-toggle="pill" href=".listaReporte" >Messages</a>
                                                   <a class="nav-link list-group-item list-group-item-action" data-toggle="pill" href=".listaReporte" >Settings</a>
                                                   <a class="nav-link list-group-item list-group-item-action" data-toggle="pill" href=".listaReporte" >Settings</a>
                                                   <a class="nav-link list-group-item list-group-item-action" data-toggle="pill" href=".listaReporte" >Settings</a>
                                                   <a class="nav-link list-group-item list-group-item-action" data-toggle="pill" href=".listaReporte" >Settings</a>
                                                   <a class="nav-link list-group-item list-group-item-action" data-toggle="pill" href=".listaReporte" >Settings</a>
                                                   <a class="nav-link list-group-item list-group-item-action" data-toggle="pill" href=".listaReporte" >Settings</a>
                                                   <a class="nav-link list-group-item list-group-item-action" data-toggle="pill" href=".listaReporte" >Settings</a>
                                                   <a class="nav-link list-group-item list-group-item-action" data-toggle="pill" href=".listaReporte" >Settings</a>
                                               </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="tab-content" id="nav-tabContent">
                                                <div class="tab-pane fade in active listaReporte">
                                                    <section id="seccionReporte" style="padding-bottom: 12px;">
                                                        <table style="width:100%; border: none; font-size: 15px;">
                                                            <tr style="height: 50px;">
                                                              <th style="width: 130px;">VENDEDOR:</th>
                                                              <td style="width: 170px;">Bill Gates</td>
                                                              <th style="width: 300px;"><span>Seleccione el reporte según su código:</span></th>
                                                              <td>
                                                                <select class="selectpicker" style="margin-left: 15px;" data-width="fit">
                                                                    <option>Mustard</option>
                                                                    <option>Ketchup</option>
                                                                    <option>Relish</option>
                                                                </select>
                                                              </td>
                                                            </tr>
                                                        </table>
                                                    </section>
                                                    <section id="seccionDatosGenerales" class="sectionPadding">
                                                        <h5 style="font-weight: bold;">DATOS GENERALES:</h5>
                                                        <table style="width:100%; border: none; font-size: 15px;">
                                                            <tr style="height: 50px;">
                                                              <th style="width: 170px;">Nombre del cliente:</th>
                                                              <td>Bill Gates</td>
                                                              <th style="width: 120px;">Monto Total:</th>
                                                              <td>aaaaaa</td>
                                                            </tr>
                                                            <tr style="height: 50px;">
                                                              <th>Fecha del pedido:</th>
                                                              <td>20/10/18</td>
                                                              <th>IGV</th>
                                                              <td>awdwadawdwa</td>
                                                            </tr>
                                                            <tr style="height: 50px;">
                                                              <th>Ubicación:</th>
                                                              <td>awdadwadddddddddddddwdwdw dw dwdawdawdawd awdawdawdwa dawdawdaw</td>
                                                              <th>Monto sin IGV:</th>
                                                              <td>awdwad</td>
                                                            </tr>
                                                        </table>
                                                    </section>
                                                    <section id="seccionPedido" class="sectionPadding" ng-init="getPedidoReporte()">
                                                        <h5 style="font-weight: bold;">LISTADO DEL PEDIDO:</h5>
                                                        <table class="table table-striped" style="font-size: 15px;">
                                                            <tr>
                                                                <th>Código</th>
                                                                <th>Nombre del producto</th>
                                                                <th>Precio Unitario</th>
                                                                <th>Cantidad</th>
                                                                <th>Vista Previa</th>
                                                            </tr>
                                                            <!--{{personaUsuario.nombrePersona}}-->
                                                            <tr ng-repeat="pedido in PedidoList">
                                                                <td>{{pedido.codigo_producto}}</td>
                                                                <td>{{pedido.nombre_producto}}</td>
                                                                <td>{{pedido.stock_producto}}</td>
                                                                <td>{{pedido.colores_producto}}</td>
                                                                <td><button class="btn btn-danger"> Ver </button></td>
                                                            </tr>
                                                        </table>
                                                    </section>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="catalogoN">
                                <div class="row">
                                    <div class="col-lg-1">&nbsp;</div>
                                    <div class="col-lg-10">
                                        <div style="padding-left: 65px;">
                                            <h5 style="font-weight: bold;">Filtre su busqueda segun:</h5>
                                            <table style="width:100%; border: none; font-size: 15px;">
                                                <tr style="height: 35px;">
                                                  <th style="width: 170px;">Tipo de Producto:</th>
                                                  <td>
                                                    <select class="selectpicker" style="margin-left: 15px;">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
                                                  </td>
                                                  <th style="width: 120px;">Nombre del Producto:</th>
                                                  <td>
                                                    <select class="selectpicker" style="margin-left: 15px;">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
                                                  </td>
                                                  <th style="width: 120px;">Rango del Precio:</th>
                                                  <td>
                                                    <select class="selectpicker" style="margin-left: 15px;">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
                                                  </td>
                                                </tr>
                                                <tr style="height: 35px;">
                                                  <th>Puntuación:</th>
                                                  <td>
                                                    <select class="selectpicker" style="margin-left: 15px;">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
                                                  </td>
                                                  <th>Cantidad (Stock):</th>
                                                  <td>
                                                    <select class="selectpicker" style="margin-left: 15px;">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
                                                  </td>
                                                  <th style="width: 120px;">Fecha:</th>
                                                  <td>
                                                    <select class="selectpicker" style="margin-left: 15px;">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
                                                  </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="col-lg-1">&nbsp;</div>
                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="col-lg-1">&nbsp;</div>
                </div>
            </div>
        </div>
        

        
    </body>
</html>
