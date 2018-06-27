<div class="container-fluid" style="padding-bottom: 30px;">
    <div class="row">
        <div class="col-lg-12">
            <ul class="nav nav-tabs nav-justified">
                <li class="nav-item" style="padding-left: 5px; padding-right: 5px;">
                    <a class="nav-link active" data-toggle="tab" href="#enEspera">En proceso</a>
                </li>
                <li class="nav-item" style="padding-left: 5px; padding-right: 5px;">
                    <a class="nav-link" data-toggle="tab" href="#bloqueado">Bloqueado</a>
                </li>
                <li class="nav-item" style="padding-left: 5px; padding-right: 5px;">
                    <a class="nav-link" data-toggle="tab" href="#rechazado">Rechazado</a>
                </li>
                <li class="nav-item" style="padding-left: 5px; padding-right: 5px;">
                    <a class="nav-link" data-toggle="tab" href="#noAtendido">No atendido</a>
                </li>
                <li class="nav-item" style="padding-left: 5px; padding-right: 5px;">
                    <a class="nav-link" data-toggle="tab" href="#aceptado">Aceptado</a>
                </li>
                <li class="nav-item" style="padding-left: 5px; padding-right: 5px;">
                    <a class="nav-link" data-toggle="tab" href="#facturado">Facturado</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="tab-content">
    <div class="tab-pane fade show active" id="enEspera">
        <div class="row">
            <div class="col-lg-7" style="padding-top: 7px;">
                <p><strong>Lista de pedidos en proceso:</strong> &nbsp;Gestiona según estado del pedido.</p>
            </div>
            <div class="col-lg-5" style="text-align: right;">
                <a class="nav-link waves-effect" href="#" data-toggle="popover" data-trigger="focus" style="color: #274f96!important;">
                    <span class="fa fa-info-circle fa-2x"></span></a>
            </div>
        </div>
        <table class="table table-responsive-sm table-fixed" style="font-size: 15px;">
            <tr>
                <th class="table-active" style="width: 30px;">#</th>
                <th class="table-active" style="text-align: center;">Fecha Inicio</th>
                <th class="table-active" style="text-align: center;">Fecha de Entrega</th>
                <th class="table-active">Dirección</th>
                <th class="table-active" style="width: 120px;">Distrito</th>
                <th class="table-active">Nombre del Cliente</th>
                <th class="table-active">RUC</th>
                <th class="table-active">Vendedor asignado</th>
                <th class="table-active" style="width: 170px; text-align: center;">Estado del Pedido</th>
                <th class="table-active" style="text-align: center;">Detalles</th>
            </tr>
            <tr ng-repeat="pedStandBy in pedidoClienteStandBy">
                <td>{{pedStandBy.codigo_pedido_web}}</td>
                <td align="center">{{pedStandBy.fecha_pedido}}</td>
                <td align="center">{{pedStandBy.fecha_entrega}}</td>
                <td>{{pedStandBy.direccion_usuario}}</td>
                <td>{{pedStandBy.nombre_distrito}}</td>
                <td>{{pedStandBy.nombreCompleto}}</td>
                <td>{{pedStandBy.ruc_cliente}}</td>
                <td>{{pedStandBy.codigo_venta_vendedor}}</td>
                <td align="center" style="width: 250px;">
                    <button id="btnAceptado" class="btn-floating btn-lg purple-gradient btn-light-green" value="{{pedStandBy.codigo_pedido_web}}-3" 
                            style="margin-right: 3px; width: 87px;" data-ng-click="cambiaEstadoPedido($event)" title="Aceptado">
                        <span class="fa fa-check" aria-hidden="true"></span></button>
                    <button id="btnFacturado" class="btn-floating btn-lg purple-gradient btn-yellow" value="{{pedStandBy.codigo_pedido_web}}-4" 
                            style="width: 87px;" data-ng-click="cambiaEstadoPedido($event)" title="Facturado">
                        <span class="fa fa-sticky-note-o" aria-hidden="true"></span></button>
                    <button id="btnBloqueado" class="btn-floating btn-lg purple-gradient btn-brown" value="{{pedStandBy.codigo_pedido_web}}-1" 
                            style="margin-top: 5px; margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Bloqueado">
                        <span class="fa fa-ban" aria-hidden="true"></span></button>
                    <button id="btnRechazado" class="btn-floating btn-lg purple-gradient btn-mdb-color" value="{{pedStandBy.codigo_pedido_web}}-2" 
                            style="margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Rechazado">
                        <span class="fa fa-times" aria-hidden="true"></span></button>
                    <button id="btnNoAtendido" class="btn-floating btn-lg purple-gradient btn-blue-grey" value="{{pedStandBy.codigo_pedido_web}}-5" 
                            style="width: 56px;" data-ng-click="cambiaEstadoPedido($event)">
                        <span class="fa fa-flag-o" aria-hidden="true"></span></button>
                </td>
                <td align="center">
                    <button class="btn-floating btn-lg purple-gradient btn-info" value="{{pedStandBy.codigo_pedido_web}}" data-toggle="modal" data-target=".modalPedido"
                            data-ng-click="mostrarDetallePed($event)"><span class="fa fa-window-maximize" aria-hidden="true"></span></button>
                </td>
            </tr>
        </table>
    </div>
    <div class="tab-pane fade" id="bloqueado">
        <div class="row">
            <div class="col-lg-7" style="padding-top: 7px;">
                <p><strong>Pedidos bloqueados:</strong> &nbsp;Gestiona según estado del pedido.</p>
            </div>
            <div class="col-lg-5" style="text-align: right;">
                <a class="nav-link waves-effect" href="#" data-toggle="popover" data-trigger="focus" style="color: #274f96!important;">
                    <span class="fa fa-info-circle fa-2x"></span></a>
            </div>
        </div>
        <table class="table table-responsive-sm table-fixed" style="font-size: 15px;">
            <tr>
                <th class="table-active" style="width: 30px;">#</th>
                <th class="table-active" style="text-align: center;">Fecha Inicio</th>
                <th class="table-active" style="text-align: center;">Fecha de Entrega</th>
                <th class="table-active">Dirección</th>
                <th class="table-active" style="width: 120px;">Distrito</th>
                <th class="table-active">Nombre del Cliente</th>
                <th class="table-active">RUC</th>
                <th class="table-active">Vendedor asignado</th>
                <th class="table-active" style="width: 170px; text-align: center;">Estado del Pedido</th>
                <th class="table-active" style="text-align: center;">Detalles</th>
            </tr>
            <tr ng-repeat="pedBloqueado in pedidoClienteBloqueado">
                <td>{{pedBloqueado.codigo_pedido_web}}</td>
                <td align="center">{{pedBloqueado.fecha_pedido}}</td>
                <td align="center">{{pedBloqueado.fecha_entrega}}</td>
                <td>{{pedBloqueado.direccion_usuario}}</td>
                <td>{{pedBloqueado.nombre_distrito}}</td>
                <td>{{pedBloqueado.nombreCompleto}}</td>
                <td>{{pedBloqueado.ruc_cliente}}</td>
                <td>{{pedBloqueado.codigo_venta_vendedor}}</td>
                <td align="center" style="width: 250px;">
                    <button id="btnNull" class="btn-floating btn-lg btn-outline-primary waves-effect" value="{{pedBloqueado.codigo_pedido_web}}-0" 
                            style="margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="En proceso">
                        <span class="fa fa-long-arrow-left" aria-hidden="true"></span></button>
                    <button id="btnAceptado" class="btn-floating btn-lg purple-gradient btn-light-green" value="{{pedBloqueado.codigo_pedido_web}}-3" 
                            style="margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Aceptado">
                        <span class="fa fa-check" aria-hidden="true"></span></button>
                    <button id="btnFacturado" class="btn-floating btn-lg purple-gradient btn-yellow" value="{{pedBloqueado.codigo_pedido_web}}-4" 
                            style="width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Facturado">
                        <span class="fa fa-sticky-note-o" aria-hidden="true"></span></button>
                    <button id="btnBloqueado" class="btn-floating btn-lg purple-gradient btn-brown" value="{{pedBloqueado.codigo_pedido_web}}-1" 
                            style="margin-top: 5px; margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Bloqueado">
                        <span class="fa fa-ban" aria-hidden="true"></span></button>
                    <button id="btnRechazado" class="btn-floating btn-lg purple-gradient btn-mdb-color" value="{{pedBloqueado.codigo_pedido_web}}-2" 
                            style="margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Rechazado">
                        <span class="fa fa-times" aria-hidden="true"></span></button>
                    <button id="btnNoAtendido" class="btn-floating btn-lg purple-gradient btn-blue-grey" value="{{pedBloqueado.codigo_pedido_web}}-5" 
                            style="width: 56px;" data-ng-click="cambiaEstadoPedido($event)">
                        <span class="fa fa-flag-o" aria-hidden="true"></span></button>
                </td>
                <td align="center">
                    <button class="btn-floating btn-lg purple-gradient btn-info" value="{{pedBloqueado.codigo_pedido_web}}" data-toggle="modal" data-target=".modalPedido"
                            data-ng-click="mostrarDetallePed($event)"><span class="fa fa-window-maximize" aria-hidden="true"></span></button>
                </td>
            </tr>
        </table>
    </div>
    <div class="tab-pane fade" id="rechazado">
        <div class="row">
            <div class="col-lg-7" style="padding-top: 7px;">
                <p><strong>Pedidos Rechazados:</strong> &nbsp;Gestiona según estado del pedido.</p>
            </div>
            <div class="col-lg-5" style="text-align: right;">
                <a class="nav-link waves-effect" href="#" data-toggle="popover" data-trigger="focus" style="color: #274f96!important;">
                    <span class="fa fa-info-circle fa-2x"></span></a>
            </div>
        </div>
        <table class="table table-responsive-sm table-fixed" style="font-size: 15px;">
            <tr>
                <th class="table-active" style="width: 30px;">#</th>
                <th class="table-active" style="text-align: center;">Fecha Inicio</th>
                <th class="table-active" style="text-align: center;">Fecha de Entrega</th>
                <th class="table-active">Dirección</th>
                <th class="table-active" style="width: 120px;">Distrito</th>
                <th class="table-active">Nombre del Cliente</th>
                <th class="table-active">RUC</th>
                <th class="table-active">Vendedor asignado</th>
                <th class="table-active" style="width: 170px; text-align: center;">Estado del Pedido</th>
                <th class="table-active" style="text-align: center;">Detalles</th>
            </tr>
            <tr ng-repeat="pedRechazado in pedidoClienteRechazado">
                <td>{{pedRechazado.codigo_pedido_web}}</td>
                <td align="center">{{pedRechazado.fecha_pedido}}</td>
                <td align="center">{{pedRechazado.fecha_entrega}}</td>
                <td>{{pedRechazado.direccion_usuario}}</td>
                <td>{{pedRechazado.nombre_distrito}}</td>
                <td>{{pedRechazado.nombreCompleto}}</td>
                <td>{{pedRechazado.ruc_cliente}}</td>
                <td>{{pedRechazado.codigo_venta_vendedor}}</td>
                <td align="center" style="width: 250px;">
                    <button id="btnNull" class="btn-floating btn-lg btn-outline-primary waves-effect" value="{{pedRechazado.codigo_pedido_web}}-0" 
                            style="margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="En proceso">
                        <span class="fa fa-long-arrow-left" aria-hidden="true"></span></button>
                    <button id="btnAceptado" class="btn-floating btn-lg purple-gradient btn-light-green" value="{{pedRechazado.codigo_pedido_web}}-3" 
                            style="margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Aceptado">
                        <span class="fa fa-check" aria-hidden="true"></span></button>
                    <button id="btnFacturado" class="btn-floating btn-lg purple-gradient btn-yellow" value="{{pedRechazado.codigo_pedido_web}}-4" 
                            style="width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Facturado">
                        <span class="fa fa-sticky-note-o" aria-hidden="true"></span></button>
                    <button id="btnBloqueado" class="btn-floating btn-lg purple-gradient btn-brown" value="{{pedRechazado.codigo_pedido_web}}-1" 
                            style="margin-top: 5px; margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Bloqueado">
                        <span class="fa fa-ban" aria-hidden="true"></span></button>
                    <button id="btnRechazado" class="btn-floating btn-lg purple-gradient btn-mdb-color" value="{{pedRechazado.codigo_pedido_web}}-2" 
                            style="margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Rechazado">
                        <span class="fa fa-times" aria-hidden="true"></span></button>
                    <button id="btnNoAtendido" class="btn-floating btn-lg purple-gradient btn-blue-grey" value="{{pedRechazado.codigo_pedido_web}}-5" 
                            style="width: 56px;" data-ng-click="cambiaEstadoPedido($event)">
                        <span class="fa fa-flag-o" aria-hidden="true"></span></button>
                </td>
                <td align="center">
                    <button class="btn-floating btn-lg purple-gradient btn-info" value="{{pedRechazado.codigo_pedido_web}}" data-toggle="modal" data-target=".modalPedido"
                            data-ng-click="mostrarDetallePed($event)"><span class="fa fa-window-maximize" aria-hidden="true"></span></button>
                </td>
            </tr>
        </table>
    </div>
    <div class="tab-pane fade" id="noAtendido">
        <div class="row">
            <div class="col-lg-7" style="padding-top: 7px;">
                <p><strong>Pedidos no atendidos:</strong> &nbsp;Gestiona según estado del pedido.</p>
            </div>
            <div class="col-lg-5" style="text-align: right;">
                <a class="nav-link waves-effect" href="#" data-toggle="popover" data-trigger="focus" style="color: #274f96!important;">
                    <span class="fa fa-info-circle fa-2x"></span></a>
            </div>
        </div>
        <table class="table table-responsive-sm table-fixed" style="font-size: 15px;">
            <tr>
                <th class="table-active" style="width: 30px;">#</th>
                <th class="table-active" style="text-align: center;">Fecha Inicio</th>
                <th class="table-active" style="text-align: center;">Fecha de Entrega</th>
                <th class="table-active">Dirección</th>
                <th class="table-active" style="width: 120px;">Distrito</th>
                <th class="table-active">Nombre del Cliente</th>
                <th class="table-active">RUC</th>
                <th class="table-active">Vendedor asignado</th>
                <th class="table-active" style="width: 170px; text-align: center;">Estado del Pedido</th>
                <th class="table-active" style="text-align: center;">Detalles</th>
            </tr>
            <tr ng-repeat="pedNo in pedidoClienteNoAtendido">
                <td>{{pedNo.codigo_pedido_web}}</td>
                <td align="center">{{pedNo.fecha_pedido}}</td>
                <td align="center">{{pedNo.fecha_entrega}}</td>
                <td>{{pedNo.direccion_usuario}}</td>
                <td>{{pedNo.nombre_distrito}}</td>
                <td>{{pedNo.nombreCompleto}}</td>
                <td>{{pedNo.ruc_cliente}}</td>
                <td>{{pedNo.codigo_venta_vendedor}}</td>
                <td align="center" style="width: 250px;">
                    <button id="btnNull" class="btn-floating btn-lg btn-outline-primary waves-effect" value="{{pedNo.codigo_pedido_web}}-0" 
                            style="margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="En proceso">
                        <span class="fa fa-long-arrow-left" aria-hidden="true"></span></button>
                    <button id="btnAceptado" class="btn-floating btn-lg purple-gradient btn-light-green" value="{{pedNo.codigo_pedido_web}}-3" 
                            style="margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Aceptado">
                        <span class="fa fa-check" aria-hidden="true"></span></button>
                    <button id="btnFacturado" class="btn-floating btn-lg purple-gradient btn-yellow" value="{{pedNo.codigo_pedido_web}}-4" 
                            style="width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Facturado">
                        <span class="fa fa-sticky-note-o" aria-hidden="true"></span></button>
                    <button id="btnBloqueado" class="btn-floating btn-lg purple-gradient btn-brown" value="{{pedNo.codigo_pedido_web}}-1" 
                            style="margin-top: 5px; margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Bloqueado">
                        <span class="fa fa-ban" aria-hidden="true"></span></button>
                    <button id="btnRechazado" class="btn-floating btn-lg purple-gradient btn-mdb-color" value="{{pedNo.codigo_pedido_web}}-2" 
                            style="margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Rechazado">
                        <span class="fa fa-times" aria-hidden="true"></span></button>
                    <button id="btnNoAtendido" class="btn-floating btn-lg purple-gradient btn-blue-grey" value="{{pedNo.codigo_pedido_web}}-5" 
                            style="width: 56px;" data-ng-click="cambiaEstadoPedido($event)">
                        <span class="fa fa-flag-o" aria-hidden="true"></span></button>
                </td>
                <td align="center">
                    <button class="btn-floating btn-lg purple-gradient btn-info" value="{{pedNo.codigo_pedido_web}}" data-toggle="modal" data-target=".modalPedido"
                            data-ng-click="mostrarDetallePed($event)"><span class="fa fa-window-maximize" aria-hidden="true"></span></button>
                </td>
            </tr>
        </table>
    </div>
    <div class="tab-pane fade" id="aceptado">
        <div class="row">
            <div class="col-lg-7" style="padding-top: 7px;">
                <p><strong>Pedidos aprobados:</strong> &nbsp;Estado final del pedido.</p>
            </div>
            <div class="col-lg-5" style="text-align: right;">
                <a class="nav-link waves-effect" href="#" data-toggle="popover" data-trigger="focus" style="color: #274f96!important;">
                    <span class="fa fa-info-circle fa-2x"></span></a>
            </div>
        </div>
        <table class="table table-responsive-sm table-fixed" style="font-size: 15px;">
            <tr>
                <th class="table-active" style="width: 30px;">#</th>
                <th class="table-active" style="text-align: center;">Fecha Inicio</th>
                <th class="table-active" style="text-align: center;">Fecha de Entrega</th>
                <th class="table-active">Dirección</th>
                <th class="table-active" style="width: 120px;">Distrito</th>
                <th class="table-active">Nombre del Cliente</th>
                <th class="table-active">RUC</th>
                <th class="table-active">Vendedor asignado</th>
                <th class="table-active" style="width: 170px; text-align: center;">Estado del Pedido</th>
                <th class="table-active" style="text-align: center;">Detalles</th>
            </tr>
            <tr ng-repeat="pedAceptado in pedidoClienteAceptado">
                <td>{{pedAceptado.codigo_pedido_web}}</td>
                <td align="center">{{pedAceptado.fecha_pedido}}</td>
                <td align="center">{{pedAceptado.fecha_entrega}}</td>
                <td>{{pedAceptado.direccion_usuario}}</td>
                <td>{{pedAceptado.nombre_distrito}}</td>
                <td>{{pedAceptado.nombreCompleto}}</td>
                <td>{{pedAceptado.ruc_cliente}}</td>
                <td>{{pedAceptado.codigo_venta_vendedor}}</td>
                <td align="center" style="width: 250px;">
                    <button id="btnAceptado" class="btn-floating btn-lg purple-gradient btn-light-green" value="{{pedAceptado.codigo_pedido_web}}-3" 
                            style="margin-right: 3px; width: 87px;" data-ng-click="cambiaEstadoPedido($event)" title="Aceptado">
                        <span class="fa fa-check" aria-hidden="true"></span></button>
                    <button id="btnFacturado" class="btn-floating btn-lg purple-gradient btn-yellow" value="{{pedAceptado.codigo_pedido_web}}-4" 
                            style="width: 87px;" data-ng-click="cambiaEstadoPedido($event)" title="Facturado">
                        <span class="fa fa-sticky-note-o" aria-hidden="true"></span></button>
                    <button id="btnBloqueado" class="btn-floating btn-lg purple-gradient btn-brown" value="{{pedAceptado.codigo_pedido_web}}-1" 
                            style="margin-top: 5px; margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Bloqueado">
                        <span class="fa fa-ban" aria-hidden="true"></span></button>
                    <button id="btnRechazado" class="btn-floating btn-lg purple-gradient btn-mdb-color" value="{{pedAceptado.codigo_pedido_web}}-2" 
                            style="margin-right: 3px; width: 56px;" data-ng-click="cambiaEstadoPedido($event)" title="Rechazado">
                        <span class="fa fa-times" aria-hidden="true"></span></button>
                    <button id="btnNoAtendido" class="btn-floating btn-lg purple-gradient btn-blue-grey" value="{{pedAceptado.codigo_pedido_web}}-5" 
                            style="width: 56px;" data-ng-click="cambiaEstadoPedido($event)">
                        <span class="fa fa-flag-o" aria-hidden="true"></span></button>
                </td>
                <td align="center">
                    <button class="btn-floating btn-lg purple-gradient btn-info" value="{{pedAceptado.codigo_pedido_web}}" data-toggle="modal" data-target=".modalPedido"
                            data-ng-click="mostrarDetallePed($event)"><span class="fa fa-window-maximize" aria-hidden="true"></span></button>
                </td>
            </tr>
        </table>
    </div>
    <div class="tab-pane fade" id="facturado">
        <div class="row">
            <div class="col-lg-7" style="padding-top: 7px;">
                <p><strong>Pedidos facturados:</strong> &nbsp;Gestiona según estado del pedido.</p>
            </div>
            <div class="col-lg-5" style="text-align: right;">
                <a class="nav-link waves-effect" href="#" data-toggle="popover" data-trigger="focus" style="color: #274f96!important;">
                    <span class="fa fa-info-circle fa-2x"></span></a>
            </div>
        </div>
        <table class="table table-responsive-sm table-fixed" style="font-size: 15px;">
            <tr>
                <th class="table-active" style="width: 30px;">#</th>
                <th class="table-active" style="text-align: center;">Fecha Inicio</th>
                <th class="table-active" style="text-align: center;">Fecha de Entrega</th>
                <th class="table-active">Dirección</th>
                <th class="table-active" style="width: 120px;">Distrito</th>
                <th class="table-active">Nombre del Cliente</th>
                <th class="table-active">RUC</th>
                <th class="table-active">Vendedor asignado</th>
                <th class="table-active" style="text-align: center;">Detalles</th>
            </tr>
            <tr ng-repeat="pedFacturado in pedidoClienteFacturado">
                <td>{{pedFacturado.codigo_pedido_web}}</td>
                <td align="center">{{pedFacturado.fecha_pedido}}</td>
                <td align="center">{{pedFacturado.fecha_entrega}}</td>
                <td>{{pedFacturado.direccion_usuario}}</td>
                <td>{{pedFacturado.nombre_distrito}}</td>
                <td>{{pedFacturado.nombreCompleto}}</td>
                <td>{{pedFacturado.ruc_cliente}}</td>
                <td>{{pedFacturado.codigo_venta_vendedor}}</td>
                <td align="center">
                    <button class="btn-floating btn-lg purple-gradient btn-info" value="{{pedFacturado.codigo_pedido_web}}" data-toggle="modal" data-target=".modalPedido"
                            data-ng-click="mostrarDetallePed($event)"><span class="fa fa-window-maximize" aria-hidden="true"></span></button>
                </td>
            </tr>
        </table>
    </div>
</div>