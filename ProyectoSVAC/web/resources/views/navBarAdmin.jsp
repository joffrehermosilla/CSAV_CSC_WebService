<!-- Navbar -->
<nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
    <div class="container">
        <!--Cerrar sesion-->
        <div class="navbar-header">
          <a class="navbar-brand" href="#" ng-click="cerrarSesion()" style="font-size: 15px;">
          <span class="fa fa-sign-out" aria-hidden="true"></span>&nbsp;&nbsp;LogOut</a>
        </div>
        <!-- Brand -->
        <a class="navbar-brand" href="">
          <strong class="blue-text">SVAC_CSC</strong>
        </a>
        <!-- Collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
          aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent" ng-init="getNombreUsuario()">
          <!-- Left -->
          <ul class="navbar-nav mr-auto" style="padding: 7px 3px 0px 3px;">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Herramientas de Administrador&nbsp;<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li style="background-color: #7bc4f7;" id="liM"><a style="margin-top: 6px; color: #fff!important;" id="aM" href="#" onclick="t_gestionaCatalogo()">Gestionar Cat�logo</a></li>
                    <li id="liN"><a id="aN" href="#" onclick="t_gestionaPedido()">Gestionar Pedido</a></li>
                    <li id="liP"><a id="aP" href="#" onclick="t_generaPromocion()">Generar Promociones</a></li>
                    <li id="liQ"><a id="aQ" href="#" onclick="t_generaReporteStock()">Generar Reportes Stock</a></li>
                </ul>
              </li>
          </ul>
          <!-- Right -->
          <ul class="navbar-nav nav-flex-icons">
            <li class="nav-item" style="padding: 7px 3px 0px 3px;">
              <ul class="nav navbar-nav navbar-right" ng-repeat="nombre in ListaNombres" style="padding-right: 45px;">
                  <li><a href="#" style="color: #8a9e80;">{{nombre.nombre_usuario}} {{nombre.apellido_usuario}}</a></li>
              </ul>
            </li>
          </ul>
        </div>
    </div>
</nav>
<!-- Navbar -->