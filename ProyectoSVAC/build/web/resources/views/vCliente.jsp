<%@include file="head.jspf" %>
</head>
    <body ng-app="myClient" ng-controller="clientCtrl" ng-init="getCatalogoCalificados()">
        <%@include file="navBarCliente.jsp"%>
        <ul class="nav nav-tabs">
            <li class="active"><a id="clickA" data-toggle="tab" href="#verCatalogo">Home</a></li>
            <li><a id="clickB" data-toggle="tab" href="#generaPedido">Menu 1</a></li>
        </ul>
        <div class="container-fluid" style="padding-top: 68px;">
            <div class="tab-content">

                <div id="verCatalogo" class="tab-pane fade show active">
                    <div class="row">
                        <div class="col-lg-1">&nbsp;</div>
                        <div class="col-lg-10">
                            <div class="form-group" style="padding-bottom: 3px;">
                                <h2 class="titulogo" style="font-weight: bold; color: #69d2a3;">{{lengthCatalogo}}</h2>
                            </div>
                            <table class="table table-responsive-sm table-fixed">
                                <tr>
                                    <th class="table-active">Nombre Producto</th>
                                    <th class="table-active">Tipo Producto</th>
                                    <th class="table-active">Tiempo en horno</th>
                                    <th class="table-active">Temperatura en horno</th>
                                    <th class="table-active">Valor Neto</th>
                                    <th class="table-active">Valor con IGV</th>
                                    <th class="table-active">Preparación</th>
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
                                    <td>{{cat.cat_temperaturaenhorno_tipo_producto}} C°</td>
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
                            <div style="text-align: center; margin: 35px 0px 65px 0px;">
                                <button id="btnPanelPedido" type="button" class="btn btn-elegant" onclick="clickPanelPedido()"
                                        style="width: 250px; height: 65px;">¡GENERAR PEDIDO YA!</button>
                            </div>
                        </div>
                        <div class="col-lg-1">&nbsp;</div>
                    </div>
                </div>

                <div id="generaPedido" class="tab-pane fade">
                    <div class="container-fluid" style="padding-bottom: 50px;">
                        <div class="row">
                            <div class="col-lg-9">
                                <section style="padding-top: 15px; padding-left: 30px!important;">
                                    <div class="row">
                                        <div class="col-lg-7 col-md-7">
                                            <p style="padding-top: 9px;"><strong>Productos por calificar: </strong> Solo puede calificar una vez por producto. &nbsp;</p>
                                        </div>
                                        <div class="col-lg-4 col-md-4" style="padding-right: 0px;">
                                            <div class="form-inline pull-right">
                                                <i class="fa fa-search" aria-hidden="true"></i>
                                                <input id="txtFiltroA" class="form-control form-control-sm ml-3 w-75" type="text" 
                                                       placeholder="Search.." aria-label="Search" style="height: 38px;">
                                            </div>
                                        </div>
                                        <div class="col-lg-1 col-md-1" style="text-align: left;">
                                            <i id="popOverClock" data-toggle="popover" data-trigger="hover" class="fa fa-clock-o fa-2x" style="padding-top: 4px; color: #577d80;"></i>
                                        </div>
                                    </div>
                                    <div class="scrollbar scrollbar-black square extraNormal" style="padding-bottom: 3px; width: 100%;" id="listaPanelPed">
                                        <div class="card h-30" style="margin: 9px 0px 9px 0px; max-width: 98%;" ng-repeat="catCalif in CatalNOCalificado" id="rowProd">
                                            <div class="row ">
                                                <div class="col-lg-3">
                                                    <img src="../images/imageRandom.jpg" class="img-fluid" alt="Responsive image"/>
                                                </div>
                                                <div class="col-lg-9">
                                                    <div class="card-block px-3" style="padding-top: 20px;">
                                                        <div class="row">
                                                            <div class="col-lg-8">
                                                                <h4 class="card-title" style="font-weight: bold; padding-top: 5px;">{{catCalif.nombre_producto}}</h4>
                                                            </div>
                                                            <div class="col-lg-4" style="text-align: right; padding-right: 27px;">
                                                                <button title="Calificar Producto" class="btn-floating btn-lg purple-gradient btn-success" data-ng-click="setCodigoProducto($event)" value="{{catCalif.codigo_producto}}"
                                                                data-toggle="modal" data-target=".modalCalifica" style="margin-right: 4px;">
                                                                <i class="fa fa-pencil" aria-hidden="true"></i></button>
                                                                <button title="Agregar al Carrito" class="btn-floating btn-lg purple-gradient btn-yellow" value="{{catCalif.codigo_producto}}-{{catCalif.nombre_producto}}"
                                                                data-ng-click="addProductoCarrito($event)" data-toggle="modal" data-target=".modalAddProducto" style="width: 65px;">
                                                                <i class="fa fa-share" aria-hidden="true"></i></button>
                                                            </div>
                                                        </div>
                                                        <p class="card-text">Información sobre el producto:</p>
                                                        <div class="row">
                                                            <div class="col-lg-5">
                                                                <label style="font-size: 15px;"><strong>Tipo de producto: </strong> {{catCalif.nombre_tipo_producto}}</label>
                                                                <label style="font-size: 15px;"><strong>Tiempo en el horno</strong> {{catCalif.tiempoenhorno_tipo_producto}} horas</label>
                                                                <label style="font-size: 15px;"><strong>Temperatura en el horno: </strong> {{catCalif.temperaturaenhorno_tipo_producto}} C°</label>
                                                            </div>
                                                            <div class="col-lg-3">
                                                                <label style="font-size: 15px;"><strong>Colores: </strong> {{catCalif.colores_producto}}</label>
                                                                <label style="font-size: 15px;"><strong>Modelo de receta: </strong> {{catCalif.modelo_receta_producto}}</label>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <label style="font-size: 15px;"><strong>Preparación: </strong> {{catCalif.preparacion_producto}}</label>
                                                                <label style="font-size: 15px;"><strong>Insumo(s): </strong> {{catCalif.nombre_insumo}}</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                            <div class="col-lg-3">
                                <div class="card" style="margin-top: 15px;">
                                    <div style="height: 35%; padding: 0px 40px 0px 25px;">
                                        <img src="../images/carritoPedido.png" class="img-fluid" alt="Responsive image"/>
                                    </div>
                                    <div class="card-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-2">
                                                    <a id="popOverInfo" class="nav-link waves-effect" href="#" data-toggle="popover" data-trigger="focus" style="color: #274f96!important;">
                                                    <span class="fa fa-info-circle fa-2x"></span></a>
                                                </div>
                                                <div class="col-lg-9">
                                                    <h4 class="card-title" style="text-align: center; color: #314967; font-size: 20px!important; 
                                                        font-weight: bold; padding-top: 13px;">MI PEDIDO WEB</h4>
                                                </div>
                                                <div class="col-lg-1">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div style="text-align: center;">
                                            <label style="font-weight: 300;">Lista de promociones disponibles</label>
                                            <select class="form-control" ng-change="getPromDescripcion()" ng-model="promocion">
                                                <option value="-99">Sin promocion</option>
                                                <option ng-repeat="prom in listaPromociones" value="{{prom.codigo_promocion_venta}}-{{prom.cantidad_sku_pedido}}-{{prom.descuento_sku_pedido}}-{{prom.fecha_inicio_promocion}}-{{prom.fecha_expiracion_promocion}}-{{prom.descripcion_promocion}}">
                                                    Promo {{prom.codigo_promocion_venta}} con descuento de {{prom.descuento_sku_pedido*100}}%
                                                </option>
                                            </select>
                                            <div id="descripPromocion"></div>
                                        </div>
                                        <div style="margin-top: 21px;">
                                            <label style="font-weight: 300;">Articulos agregados </label>
                                            <div class="scrollbar scrollbar-morpheus-den square" style="border-style: inset;">
                                                <div class="force-overflow">
                                                    <div style="padding: 4px 0px 4px 0px;" id="panelCARRITO">
                                                        <!-----Producto Pedido------->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="text-align: center;">
                                            <button type="button" class="btn btn-light-green" style="margin: 30px 0px 13px 0px;" id="btnGeneraPedido"
                                                    ng-click="generaPedido()">Generar Pedido</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        
        <div class="modal fade modalCalifica" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div style="background-color: #eeeeee;border-color: #4c4f53; border-style: solid;">
                        <form id="agregaArticulo">
                            <div style="padding: 30px 30px 20px 30px;">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <p>Califique usted el nro. de estrellas del &nbsp;&nbsp;1 al 5 al producto que seleccionó:</p>
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
        
        <div class="modal fade modalAddProducto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div style="background-color: #eeeeee;border-color: #4c4f53; border-style: solid;">
                        <div style="padding: 30px 30px 20px 30px;">
                            <strong>Agregar producto al carrito</strong>
                            <div class="row" style="padding-top: 13px;">
                                <div class="col-lg-12">
                                    <p>Cantidad por pedir</p>
                                    <input type="number" class="form-control inputProPed" ng-model="cantidadProd" min="1" oninput="validity.valid||(value='');" style="font-size: 24px;">
                                </div>
                            </div>
                            <div style="text-align: center; padding-top: 17px;">
                                <button class="btn btn-yellow" ng-click="agregaAlCarrito()">Agregar al carrito</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="modal fade modalModificaPed" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div style="background-color: #eeeeee;border-color: #4c4f53; border-style: solid;">
                        <div style="padding: 30px 30px 20px 30px;">
                            <strong>Agregaraaaaa proDAWDducto al carrito</strong>
                            <div style="text-align: center; padding-top: 17px;">
                                <button class="btn btn-yellow" ng-click="agregaAlCarrito()">Agregar al carrito</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="modal fade left" id="modalVerPreferencia" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-full-height modal-left" role="document">
                <div class="modal-content">
                    <div style="background-color: #eeeeee;border-color: #4c4f53; border-style: solid; height: 100%; width: 100%;">
                        <div style="padding: 40px 30px 20px 30px;">
                            <div style="text-align: center; color: #4a7918;">
                                <strong class="titulogoSesion"><i class="fa fa-pencil-square-o fa-lg"></i>&nbsp;&nbsp;MIS PREFERENCIAS</strong>
                            </div>
                            <div style="text-align: center; padding-top: 19px;">
                                <p>Historial de preferencias</p>
                                <div  class="scrollbar scrollbar-indigo bordered-indigo thin" style="height: 75%;">
                                    <table class="table table-responsive-sm table-fixed">
                                        <tr>
                                            <th class="table-active">Fecha</th>
                                            <th class="table-active">Nombre del producto</th>
                                            <th class="table-active">Puntuación</th>
                                        </tr>
                                        <tr ng-repeat="punt in listaCalificaciones">
                                            <td>{{punt.fecha_voto_preferencia}}</td>
                                            <td>{{punt.nombre_producto}}</td>
                                            <td>{{punt.cantidad_puntos}}</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            
        
        
        <%@include file="foot.jspf" %>
        <script type="text/javascript">
            $("#txtFiltroA").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#listaPanelPed #rowProd").filter(function() {
                  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                });
            });
            $('#popOverInfo').popover({
                container: 'body',
                placement : 'left',
                html : true,
                title : 'Descripción sobre el pedido web',
                content : '<p>En este carrito puede agregar los productos que desee con una cantidad en especifico y enviar su pedido solicitado una vez terminado.\n\
                           <br>Ademas tiene toda la libertad de calificar dichos productos donde mensualmente se actualizara los resultados en el catalogo.</p>'
            });
            
            var countDownDate = new Date("Jul 5, 2018 20:37:20").getTime();
            var x = setInterval(function() {
                var now = new Date().getTime();
                var distance = countDownDate - now;
                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                try {
                    document.getElementById("cuentaRegresiva").innerHTML = days + "d " + hours + "h "+ minutes + "m " + seconds + "s ";
                }catch(e) {
                    console.log(e);
                }
                if (distance < 0) {
                    clearInterval(x);
                    document.getElementById("cuentaRegresiva").innerHTML = "EXPIRO";
                }
            }, 1000);
            
            $('#popOverClock').popover({
                container: 'body',
                placement : 'right',
                html : true,
                title : 'Cuenta regresiva del reseteo mensual',
                content : '<p>Cada mes se actualiza el catalogo en relacion al puntaje obtenido y la suma total que hayan sido mas pedidos.</p>\n\
                           <p id="cuentaRegresiva" style="text-align: center; font-size: 20px; font-weight: bold; padding-right: 5px!important;"></p>'
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
            function clickPanelPedido() {
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
