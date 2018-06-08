<%@include file="head.jspf" %>
</head>
    <body ng-app="myPreferencia" ng-controller="preferenciaCtrl" ng-init="getCatalogoCalificados()">
        <%@include file="navBarCliente.jsp"%>
        <ul class="nav nav-tabs">
            <li class="active"><a id="clickA" data-toggle="tab" href="#verCatalogo">Home</a></li>
            <li><a id="clickB" data-toggle="tab" href="#generaPedido">Menu 1</a></li>
            <li><a id="clickC" data-toggle="tab" href="#gestionaPreferencia">Menu 2</a></li>
        </ul>
        <div class="container-fluid" style="padding-top: 60px;">
            <div class="row">
                <div class="col-lg-1">&nbsp;</div>
                <div class="col-lg-10">
                    <div class="tab-content">
                        <div id="verCatalogo" class="tab-pane fade show active">
                            <section id="CatalogoTOP">
                                <div class="form-group" style="padding-bottom: 3px;">
                                    <h2 style="font-weight: bold; color: #85bba3;">Cat�logo de los mejores productos</h2>
                                </div>
                                <table class="table table-responsive-sm table-fixed">
                                    <tr>
                                        <th class="table-active">Nombre Producto</th>
                                        <th class="table-active">Tipo Producto</th>
                                        <th class="table-active">Tiempo en horno</th>
                                        <th class="table-active">Temperatura en horno</th>
                                        <th class="table-active">Valor Neto</th>
                                        <th class="table-active">Valor con IGV</th>
                                        <th class="table-active">Preparaci�n</th>
                                        <th class="table-active">Colores</th>
                                        <th class="table-active">Insumo</th>
                                        <th class="table-active">Modelo Receta</th>
                                        <th class="table-active">Cantidad Mas Pedido</th>
                                        <th class="table-active">Puntaje Total</th>
                                    </tr>
                                    <tr ng-repeat="cat in CatalogoCalificado">
                                        <td>{{cat.cat_nombre_producto}}</td>
                                        <td>{{cat.cat_nombre_tipo_producto}}</td>
                                        <td>{{cat.cat_tiempoenhorno_tipo_producto}} horas</td>
                                        <td>{{cat.cat_temperaturaenhorno_tipo_producto}} C�</td>
                                        <td>{{cat.cat_valor_neto}}</td>
                                        <td>{{cat.cat_valor_con_igv}}</td>
                                        <td>{{cat.cat_preparacion_producto}}</td>
                                        <td>{{cat.cat_colores_producto}}</td>
                                        <td>{{cat.cat_nombre_insumo}}</td>
                                        <td>{{cat.cat_modelo_receta_producto}}</td>
                                        <td>{{cat.cantidadMasPedido}}</td>
                                        <td>{{cat.promedioTotalProd}}</td>
                                    </tr>
                                </table>
                            </section>
                        </div>
                        <div id="generaPedido" class="tab-pane fade">
                            ...
                        </div>
                        <div id="gestionaPreferencia" class="tab-pane fade">
                            <section id="ProductoParaCalificar" style="padding-top: 15px;">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-8 col-md-8">
                                            <p><strong>Productos por calificar: </strong> Solo puede calificar una vez por producto.</p>
                                        </div>
                                        <div class="col-lg-4 col-md-4">
                                            <div class="form-inline pull-right">
                                                <i class="fa fa-search" aria-hidden="true"></i>
                                                <input id="idProdCalificar" class="form-control form-control-sm ml-3 w-75" type="text" 
                                                       placeholder="Search.." aria-label="Search" style="height: 38px;">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-responsive-sm table-fixed" id="tablaProdCalif">
                                    <tr>
                                        <th class="table-active">Nombre Producto</th>
                                        <th class="table-active">Tipo Producto</th>
                                        <th class="table-active">Tiempo en horno</th>
                                        <th class="table-active">Temperatura en horno</th>
                                        <th class="table-active">Preparaci�n</th>
                                        <th class="table-active">Colores</th>
                                        <th class="table-active">Insumo</th>
                                        <th class="table-active">Modelo Receta</th>
                                        <th class="table-active">Calificar</th>
                                    </tr>
                                    <tr ng-repeat="catCalif in CatalNOCalificado" id="rowProd">
                                        <td>{{catCalif.nombre_producto}}</td>
                                        <td>{{catCalif.nombre_tipo_producto}}</td>
                                        <td>{{catCalif.tiempoenhorno_tipo_producto}} horas</td>
                                        <td>{{catCalif.temperaturaenhorno_tipo_producto}} C�</td>
                                        <td>{{catCalif.preparacion_producto}}</td>
                                        <td>{{catCalif.colores_producto}}</td>
                                        <td>{{catCalif.nombre_insumo}}</td>
                                        <td>{{catCalif.modelo_receta_producto}}</td>
                                        <td><button class="btn-floating btn-lg purple-gradient btn-success" data-ng-click="setCodigoProducto($event)" value="{{catCalif.codigo_producto}}"
                                                    data-toggle="modal" data-target="#modalCalifica">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i></button>
                                    </tr>
                                </table>
                            </section>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1">&nbsp;</div>
            </div>
        </div>
        
        <div id="modalCalifica" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div style="background-color: #eeeeee;border-color: #4c4f53; border-style: solid;">
                        <form id="agregaArticulo">
                            <div style="padding: 30px 30px 20px 30px;">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <p>Califique usted el nro. de estrellas del 1 al 5 al producto que seleccion�:</p>
                                    </div>
                                    <div class="col-lg-4">
                                        <select id="setProductoPuntos">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button id="btnCalificar" type="button" class="btn btn-success" ng-click="calificar()">Aceptar</button>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <%@include file="foot.jspf" %>
        <script type="text/javascript">
            $("#idProdCalificar").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#tablaProdCalif #rowProd").filter(function() {
                  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                });
            });
            
            function t_verCatalogo() {
                var liA = document.getElementById("liA");
                var aA = document.getElementById("aA");
                $("#liB").removeAttr("style");
                $("#liC").removeAttr("style");
                $("#aB").removeAttr("style");
                $("#aC").removeAttr("style");
                liA.setAttribute('style','background-color: #7bc4f7;');
                aA.setAttribute('style','margin-top: 6px; color: #fff!important;');
                $("#clickA").trigger("click");
            }
            function t_generaPedido() {
                var liB = document.getElementById("liB");
                var aB = document.getElementById("aB");
                $("#liA").removeAttr("style");
                $("#liC").removeAttr("style");
                $("#aA").removeAttr("style");
                $("#aC").removeAttr("style");
                liB.setAttribute('style','background-color: #7bc4f7;');
                aB.setAttribute('style','margin-top: 6px; color: #fff!important;');
                $("#clickB").trigger("click");
            }
            function t_gestionaPrefer() {
                var liC = document.getElementById("liC");
                var aC = document.getElementById("aC");
                $("#liA").removeAttr("style");
                $("#liB").removeAttr("style");
                $("#aA").removeAttr("style");
                $("#aB").removeAttr("style");
                liC.setAttribute('style','background-color: #7bc4f7;');
                aC.setAttribute('style','margin-top: 6px; color: #fff!important;');
                $("#clickC").trigger("click");
            }
            $(function() {
                $('#setProductoPuntos').barrating({
                  theme: 'fontawesome-stars'
                });
            });
        </script>
        <script src="http://localhost:8084/ProyectoSVAC/resources/js/clienteController.js" type="text/javascript"></script>
        <script src="http://localhost:8084/ProyectoSVAC/resources/js/dirPagination.js" type="text/javascript"></script>
        
    </body>
</html>
