<%@include file="head.jspf" %>
</head>
    <body ng-app="myCatalogo" ng-controller="catalogoCtrl">
        <%@include file="navBarAdmin.jsp"%>
        <ul class="nav nav-tabs" role="tablist">
            <li class="active"><a id="clickM" data-toggle="tab" href="#gestionaCatalogo">Home</a></li>
            <li><a id="clickN" data-toggle="tab" href="#gestionaPedido">Menu 1</a></li>
            <li><a id="clickP" data-toggle="tab" href="#generaPromocion">Menu 2</a></li>
            <li><a id="clickQ" data-toggle="tab" href="#generaReporteStock">Menu 3</a></li>
        </ul>
        <div style="padding-bottom: 20px; padding-top: 60px;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-1">&nbsp;</div>
                    <div class="col-lg-10">
                        <div class="tab-content">
                            
                            <div id="gestionaCatalogo" class="tab-pane fade in show active" role="tabpanel">
                                <div class="container-fluid" style="padding-bottom: 30px;">
                                    <div class="row">
                                        <div class="col-lg-3">&nbsp;</div>
                                        <div class="col-lg-6">
                                            <ul class="nav nav-pills nav-justified">
                                                <li class="nav-item" style="padding-left: 5px; padding-right: 5px;">
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
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="productosN">
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
                                                <td id="aquiInnerHTML">
                                                    <!--<select id="setProdPuntos{{producto.codigo_producto}}">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                    </select>-->
                                                    <input type="text" value="{{producto.promedioPuntaje}}" name="cRatingBar" id="idPuntaje" 
                                                           readonly="true" style="width: 48px; -webkit-appearance: none;">
                                                </td>
                                                <td>{{producto.ingreso_almacen_producto}}</td>
                                                <td>{{producto.salida_almacen_producto}}</td>
                                                <td>{{producto.cantidadUnidad}}</td>
                                                <td align="center"><button class="btn-floating btn-lg purple-gradient btn-info" value="{{producto.codigo_producto}}">
                                                    <span class="fa fa-picture-o" aria-hidden="true"></span></button></td>
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
                                                               <button style="width: 100%; background: none; color: inherit; border: none; padding: 0; font: inherit;
                                                                              cursor: pointer; outline: inherit;" data-ng-click="getNombreVendedor($event)"
                                                                              value="{{vendedor.codigo_venta_vendedor}}">{{vendedor.codigo_venta_vendedor}}</button></a>
                                                       </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="tab-content" id="nav-tabContent">
                                                        <div class="tab-pane fade show active listaReporte">
                                                            <section id="seccionReporte" style="padding-bottom: 12px;">
                                                                <table style="width:100%; border: none; font-size: 15px;">
                                                                    <tr style="height: 50px;">
                                                                        <th style="width: 110px;">VENDEDOR:</th>
                                                                        <td style="width: 160px;" ng-repeat="nombVen in NombreVendedor">{{nombVen.nombre_usuario}} {{nombVen.apellido_usuario}}</td>
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
                                                                    </tr>
                                                                    <!--{{personaUsuario.nombrePersona}}-->
                                                                    <tr ng-repeat="pedido in pedidoCliente">
                                                                        <td>{{pedido.codigo_producto}}</td>
                                                                        <td>{{pedido.nombre_producto}}</td>
                                                                        <td>{{pedido.valor_neto}}</td>
                                                                        <td>{{pedido.cantidadProductoPed}}</td>
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
                                            <div class="col-lg-4" style="text-align: left;">
                                                <p style="margin-top: 30px; font-weight: lighter; font-size: 18px;">Catálogo TOP 10 artículos de Junio</p>
                                            </div>
                                            <div class="col-lg-8">
                                                <ul class="nav nav-pills pull-right" style="padding-top: 12px; padding-bottom: 12px;">
                                                    <li role="presentation" class="active" style="padding-right: 10px;">
                                                        <button type="submit" class="btn btn-group btn-warning" data-toggle="modal" data-target="#modalActualiza">
                                                        <span class="fa fa-book" aria-hidden="true" style="margin-top: 3px;"></span>&nbsp;&nbsp;Actualiza Catalogo</button>
                                                    </li>
                                                    <li role="presentation" style="padding-right: 10px;">
                                                        <button type="submit" class="btn btn-group btn-success" data-toggle="modal" data-target="#modalAgregaArticulo">
                                                            <span class="fa fa-check-square-o" aria-hidden="true" style="margin-top: 3px;"></span>&nbsp;&nbsp;Agregar Artículo</button>
                                                    </li>
                                                    <li role="presentation">
                                                        <button class="btn btn-group btn-default"><span class="fa fa-plus-square" aria-hidden="true" style="margin-top: 3px;"></span>&nbsp;&nbsp;Generar Cuota</button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <hr style="padding-bottom: 15px;">
                                        <div id="catalogoTOP" class="row" style="margin-bottom: 20px;">
                                            <div class="col-lg-4" ng-repeat="cat in Catalogo">
                                                <div class="jumbotron">
                                                    <div class="card">
                                                        <div class="overlay">
                                                            <!--{{cat.cat_foto_producto}}-->
                                                            <img src="../images/imageRandom.jpg" alt="imageRandom" style="width: 100%; height: 230px;"/>
                                                        </div>
                                                        <div class="card-body elegant-color white-text rounded-bottom">
                                                            <div class="row">
                                                                <div class="col-lg-8">
                                                                    <h4 class="card-title" style="margin-top: 5px;">{{cat.cat_nombre_producto}}</h4>
                                                                </div>
                                                                <div class="col-lg-4" style="text-align: right;">
                                                                    <button class="btn-floating btn-lg purple-gradient btn-danger" data-ng-click="quitarArticulo($event)" value="{{cat.cat_codigo_producto}}">
                                                                    <span class="fa fa-trash-o" aria-hidden="true"></span></button>
                                                                </div>
                                                            </div>
                                                            <hr class="hr-light">
                                                            <p class="card-text white-text">Precio: S/.{{cat.cat_valor_neto}}</p>
                                                            <p class="card-text white-text">Con IGV: S/.{{cat.cat_valor_con_igv}}</p>
                                                            <hr class="hr-light">
                                                            <p class="card-text white-text">Tipo de Producto: {{cat.cat_nombre_tipo_producto}}</p>
                                                            <p class="card-text white-text">Tiempo en horno: {{cat.cat_tiempoenhorno_tipo_producto}} horas</p>
                                                            <p class="card-text white-text">Temperatura en horno: {{cat.cat_temperaturaenhorno_tipo_producto}} C°</p>
                                                            <p class="card-text white-text">Preparación: {{cat.cat_preparacion_producto}}</p>
                                                            <p class="card-text white-text">Colores: {{cat.cat_colores_producto}}</p>
                                                            <p class="card-text white-text">Insumo: {{cat.cat_nombre_insumo}}</p>
                                                            <p class="card-text white-text">Modelo de receta: {{cat.cat_modelo_receta_producto}}</p>
                                                            <hr class="hr-light">
                                                            <p class="card-text white-text">Cantidad total: {{cat.cantidadMasPedido}}</p>
                                                            <p class="card-text white-text">Calificación: {{cat.promedioTotalProd}}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <ul id="paginationCool" class="pagination-lg justify-content-center pg-darkgrey"></ul>
                                        <hr>
                                    </div>
                                </div>
                            </div>
                            
                            <div id="gestionaPedido" class="tab-pane fade">
                                wadawd
                            </div>
                            
                            <div id="generaPromocion" class="tab-pane fade">
                                mmmm
                            </div>
                            
                            <div id="generaReporteStock" class="tab-pane fade">
                                qqq
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
                                        <p>Artículos quitados del catálogo:</p>
                                        <select class="form-control" ng-model="articuloSacado">
                                            <option ng-repeat="arti in ArticulosSacados" value="{{arti.cat_codigo_producto}}">{{arti.cat_nombre_producto}}</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-1" style="text-align: center;">
                                        <div style="border-left:1px solid #c5c5c5;height:120px;"></div>
                                    </div>
                                    <div class="col-lg-5" style="text-align: center;">
                                        <button class="btn btn-success" style="margin-top: 30px; height: 50px;" ng-click="agregaArticulo()">
                                            <span class="fa fa-check-square-o" aria-hidden="true"></span>&nbsp;&nbsp;Añadir</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="modalActualiza" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div style="background-color: #eeeeee;border-color: #4c4f53; border-style: solid;">
                        <form id="agregaArticulo">
                            <div style="padding: 30px 30px 9px 30px;">
                                <div class="row">
                                    <div class="col-lg-8"><p>¿Desea actualizar el catálogo?</p></div>
                                    <div class="col-lg-4" style="text-align: right;"><strong id="fechaAhora"></strong></div>
                                </div>
                                <span style="font-weight: 200;">*El catálogo debe actualizarse por cada mes*</span>
                                <script>
                                    var dateObj = new Date();
                                    var month = dateObj.getUTCMonth() + 1; //months from 1-12
                                    var day = dateObj.getUTCDate();
                                    var year = dateObj.getUTCFullYear();
                                    newdate = day + "/" + month + "/" + year;
                                    document.getElementById("fechaAhora").innerHTML = newdate;
                                </script>
                                <hr>
                                <div style="display: flex; align-items: center; justify-content: flex-end;">
                                    <button type="button" class="btn btn-default waves-effect waves-light" data-dismiss="modal">Cerrar</button>
                                    <button type="submit" class="btn btn-group btn-warning" ng-click="actualizaCatalogo()">
                                    <span class="fa fa-book" aria-hidden="true" style="margin-top: 3px;"></span>&nbsp;&nbsp;Actualizar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        <%@include file="foot.jspf" %>
        <script type="text/javascript">
            function t_gestionaCatalogo() {
                var liM = document.getElementById("liM");
                var aM = document.getElementById("aM");
                $("#liN").removeAttr("style");
                $("#liP").removeAttr("style");
                $("#liQ").removeAttr("style");
                $("#aN").removeAttr("style");
                $("#aP").removeAttr("style");
                $("#aQ").removeAttr("style");
                liM.setAttribute('style','background-color: #7bc4f7;');
                aM.setAttribute('style','margin-top: 6px; color: #fff!important;');
                $("#clickM").trigger("click");
            }
            function t_gestionaPedido() {
                var liN = document.getElementById("liN");
                var aN = document.getElementById("aN");
                $("#liM").removeAttr("style");
                $("#liP").removeAttr("style");
                $("#liQ").removeAttr("style");
                $("#aM").removeAttr("style");
                $("#aP").removeAttr("style");
                $("#aQ").removeAttr("style");
                liN.setAttribute('style','background-color: #7bc4f7;');
                aN.setAttribute('style','margin-top: 6px; color: #fff!important;');
                $("#clickN").trigger("click");
            }
            function t_generaPromocion() {
                var liP = document.getElementById("liP");
                var aP = document.getElementById("aP");
                $("#liM").removeAttr("style");
                $("#liN").removeAttr("style");
                $("#liQ").removeAttr("style");
                $("#aM").removeAttr("style");
                $("#aN").removeAttr("style");
                $("#aQ").removeAttr("style");
                liP.setAttribute('style','background-color: #7bc4f7;');
                aP.setAttribute('style','margin-top: 6px; color: #fff!important;');
                $("#clickP").trigger("click");
            }
            function t_generaReporteStock() {
                var liQ = document.getElementById("liQ");
                var aQ = document.getElementById("aQ");
                $("#liM").removeAttr("style");
                $("#liN").removeAttr("style");
                $("#liP").removeAttr("style");
                $("#aM").removeAttr("style");
                $("#aN").removeAttr("style");
                $("#aP").removeAttr("style");
                liQ.setAttribute('style','background-color: #7bc4f7;');
                aQ.setAttribute('style','margin-top: 6px; color: #fff!important;');
                $("#clickQ").trigger("click");
            }
        </script>
        <script src="http://localhost:8084/ProyectoSVAC/resources/js/catalogoController.js" type="text/javascript"></script>
        <script src="http://localhost:8084/ProyectoSVAC/resources/js/dirPagination.js" type="text/javascript"></script> 
        
        
    </body>
</html>
