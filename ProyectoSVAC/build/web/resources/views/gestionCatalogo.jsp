<%@include file="head.jspf" %>
<script src="http://localhost:8084/ProyectoSVAC/resources/js/catalogoController.js" type="text/javascript"></script>
<script src="http://localhost:8084/ProyectoSVAC/resources/js/dirPagination.js" type="text/javascript"></script>
</head>
    <body ng-app="myCatalogo" ng-controller="catalogoCtrl">
        
        <%@include file="navBarAdmin.jsp"%>
        
        <div class="container-fluid" style="padding-bottom: 30px; padding-top: 5px;">
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

                            <div class="tab-pane fade in active" id="productosN">
                                <table class="table table-striped" style="font-size: 15px;">
                                    <tr>
                                        <th>Código</th>
                                        <th>Nombre del producto</th>
                                        <th>Calificacion</th>
                                        <th>Ingreso</th>
                                        <th>Salida</th>
                                        <th>Cantidad (unidad)</th>
                                        <th>Vista Previa</th>
                                    </tr>
                                    <!--{{personaUsuario.nombrePersona}}-->
                                    <tr ng-repeat="producto in ProductoList">
                                        <td>{{producto.codigo_producto}}</td>
                                        <td>{{producto.nombre_producto}}</td>
                                        <td>
                                            <input type="text" value="{{producto.promedioPuntaje}}" name="cRatingBar" id="idPuntaje" readonly="true" style="width: 35px;">
                                        </td>
                                        <td>{{producto.ingreso_almacen_producto}}</td>
                                        <td>{{producto.salida_almacen_producto}}</td>
                                        <td>{{producto.cantidadUnidad}}</td>
                                        <td><button class="btn btn-info" value="{{producto.codigo_producto}}" > Ver </button></td>
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
                                                   <a class="nav-link list-group-item list-group-item-action" data-toggle="pill" href=".listaReporte" 
                                                      ng-repeat="vendedor in VendedorList">
                                                       <button style="width: 280px; background: none; color: inherit; border: none; padding: 0; font: inherit;
                                                                      cursor: pointer; outline: inherit;" data-ng-click="getNombreVendedor($event)"
                                                                      value="{{vendedor.codigo_venta_vendedor}}">{{vendedor.codigo_venta_vendedor}}</button></a>
                                               </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="tab-content" id="nav-tabContent">
                                                <div class="tab-pane fade in active listaReporte">
                                                    <section id="seccionReporte" style="padding-bottom: 12px;">
                                                        <table style="width:100%; border: none; font-size: 15px;">
                                                            <tr style="height: 50px;">
                                                                <th style="width: 110px;">VENDEDOR:</th>
                                                                <td style="width: 135px;" ng-repeat="nombVen in NombreVendedor">{{nombVen.nombre_usuario}} {{nombVen.apellido_usuario}}</td>
                                                                <th style="width: 300px;"><span>Seleccione el reporte según su código:</span></th>
                                                                <td>
                                                                    <select id="selReporte" class="form-control" ng-change="getDatosGeneral()" ng-model="modReporte">
                                                                        <option ng-repeat="reporte in CodigoReporte" value="{{reporte.codigo_pedido_web}}">{{reporte.codigo_reporte}}</option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </section>
                                                    <section id="seccionDatosGenerales" class="sectionPadding">
                                                        <h5 style="font-weight: bold;">DATOS GENERALES</h5>
                                                        <table style="width:100%; border: none; font-size: 15px;">
                                                            <tr style="height: 50px;">
                                                              <th style="width: 170px;">Nombre del cliente:</th>
                                                              <td>{{DatosGenerales.nombreCompleto}}</td>
                                                              <th style="width: 120px;">Monto Total:</th>
                                                              <td>{{DatosGenerales.precio_uni_desc_igv}}</td>
                                                            </tr>
                                                            <tr style="height: 50px;">
                                                              <th>Fecha del pedido:</th>
                                                              <td>{{DatosGenerales.fecha_pedido}}</td>
                                                              <th>IGV</th>
                                                              <td>{{DatosGenerales.porcentaje_igv_venta}}</td>
                                                            </tr>
                                                            <tr style="height: 50px;">
                                                              <th>Ubicación:</th>
                                                              <td style="width: 300px;">{{DatosGenerales.direccion_usuario}}</td>
                                                              <th>Monto sin IGV:</th>
                                                              <td>{{DatosGenerales.precio_uni_desc_sin_igv}}</td>
                                                            </tr>
                                                        </table>
                                                    </section>
                                                    <section id="seccionPedido" class="sectionPadding">
                                                        <h5 style="font-weight: bold;">LISTADO DEL PEDIDO</h5>
                                                        <table class="table table-striped" style="font-size: 15px;">
                                                            <tr>
                                                                <th>Código</th>
                                                                <th>Nombre del producto</th>
                                                                <th>Precio Unitario</th>
                                                                <th>Cantidad</th>
                                                                <th>Vista Previa</th>
                                                            </tr>
                                                            <!--{{personaUsuario.nombrePersona}}-->
                                                            <tr ng-repeat="pedido in pedidoCliente">
                                                                <td>{{pedido.codigo_producto}}</td>
                                                                <td>{{pedido.nombre_producto}}</td>
                                                                <td>{{pedido.valor_neto}}</td>
                                                                <td>{{pedido.cantidadProductoPed}}</td>
                                                                <td><button class="btn btn-info" value="{{pedido.codigo_pedido_web}}"> Ver </button></td>
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
                                <h5 style="font-weight: bold;">FILTRE SU BÚSQUEDA SEGÚN</h5>
                                <%@include file="filtrosCatAdmin.jsp"%>
                                <hr>
                                <ul class="nav nav-pills pull-right" style="padding-top: 12px; padding-bottom: 12px;">
                                    <li role="presentation" class="active" style="padding-right: 10px;">
                                        <button type="submit" class="btn btn-group btn-warning" 
                                                ng-click="actualizaCatalogo()"><span class="fa fa-book" aria-hidden="true"></span>&nbsp;&nbsp;Actualiza Catalogo</button>
                                    </li>
                                    <li role="presentation" style="padding-right: 10px;">
                                        <button type="submit" class="btn btn-group btn-success" data-toggle="modal" data-target="#modalAgregaArticulo">
                                            <span class="fa fa-check-square-o" aria-hidden="true"></span>&nbsp;&nbsp;Agregar Artículo</button>
                                    </li>
                                    <li role="presentation">
                                        <button class="btn btn-group btn-default"><span class="fa fa-plus-square" aria-hidden="true"></span>&nbsp;&nbsp;Generar Cuota</button>
                                    </li>
                                </ul>
                                <table class="table table-striped">
                                    <tr>
                                        <th>Nombre Producto</th>
                                        <th>Tipo Producto</th>
                                        <th>Tiempo en horno</th>
                                        <th>Temperatura en horno</th>
                                        <th>Valor Neto</th>
                                        <th>Valor con IGV</th>
                                        <th>Preparación</th>
                                        <th>Colores</th>
                                        <th>Insumo</th>
                                        <th>Modelo Receta</th>
                                        <th>Imagen</th>
                                        <th>Cantidad Mas Pedido</th>
                                        <th>Puntaje Total</th>
                                        <th>Quitar Artículo</th>
                                    </tr>
                                    <tr ng-repeat="cat in Catalogo">
                                        <td>{{cat.cat_nombre_producto}}</td>
                                        <td>{{cat.cat_nombre_tipo_producto}}</td>
                                        <td>{{cat.cat_tiempoenhorno_tipo_producto}}</td>
                                        <td>{{cat.cat_temperaturaenhorno_tipo_producto}}</td>
                                        <td>{{cat.cat_valor_neto}}</td>
                                        <td>{{cat.cat_valor_con_igv}}</td>
                                        <td>{{cat.cat_preparacion_producto}}</td>
                                        <td>{{cat.cat_colores_producto}}</td>
                                        <td>{{cat.cat_nombre_insumo}}</td>
                                        <td>{{cat.cat_modelo_receta_producto}}</td>
                                        <td>{{cat.cat_foto_producto}}</td>
                                        <td>{{cat.cantidadMasPedido}}</td>
                                        <td>{{cat.promedioTotalProd}}</td>
                                        <td><button class="btn btn-danger" data-ng-click="quitarArticulo($event)" value="{{cat.cat_codigo_producto}}">
                                                <span class="fa fa-trash-o" aria-hidden="true"></span>&nbsp;&nbsp;Quitar</button></td>
                                    </tr>
                                </table>
                            </div>
                                
                        </div>
                    </div>
                    <div class="col-lg-1">&nbsp;</div>
                </div>
            </div>
        </div>
        
        <div id="modalAgregaArticulo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div style="background-color: #eeeeee;border-color: #4c4f53; border-style: solid;">
                        <form id="agregaArticulo">
                            <div style="padding: 30px 30px 20px 30px;">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <p>Articulos quitados del catalogo:</p>
                                        <select class="form-control" ng-model="articuloSacado">
                                            <option ng-repeat="arti in ArticulosSacados" value="{{arti.cat_codigo_producto}}">{{arti.cat_nombre_producto}}</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-1" style="text-align: center;">
                                        <div style="border-left:1px solid #c5c5c5;height:120px;"></div>
                                    </div>
                                    <div class="col-lg-5" style="text-align: center;">
                                        <button class="btn btn-success" style="margin-top: 30px; height: 50px;" ng-click="agregaArticulo()">
                                            <span class="fa fa-check-square-o" aria-hidden="true"></span>&nbsp;&nbsp;Añadir al catalogo</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
    </body>
</html>
