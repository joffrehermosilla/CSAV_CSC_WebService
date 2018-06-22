<!-- Navbar -->
<nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar" style="background-color: #4e798e!important;">
    <div class="container">
        <!--Cerrar sesion-->
        <div class="navbar-header">
          <a class="navbar-brand" href="#" ng-click="cerrarSesion() " style="font-size: 15px; font-weight: 400;">
          <span class="fa fa-sign-out fa-lg" aria-hidden="true"></span>&nbsp;&nbsp;LogOut</a>
        </div>
        <!-- Brand -->
        <a class="navbar-brand">
            <strong style="color: #e2e9ef!important;">SVACsC</strong>
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
              <li class="nav-item dropdown">
                  <a href="#" style="color: #e2e9ef;" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Opciones del Cliente&nbsp;<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                      <li style="background-color: #7bc4f7;" id="liA"><a style="margin-top: 6px; color: #fff!important;" id="aA" onclick="t_verCatalogo()">Ver Catálogo</a></li>  
                      <li id="liB"><a id="aB" onclick="t_generaPedido()">Generar Pedido</a></li>
                  </ul>
              </li>
          </ul>
          <!-- Right -->
          <ul class="navbar-nav nav-flex-icons">
            <li class="nav-item" style="padding: 7px 3px 0px 3px;">
              <ul class="nav navbar-nav navbar-right" ng-repeat="nombre in ListaNombres" style="padding-right: 45px;">
                  <li><a href="#" style="color: #e2e9ef; font-weight: bold;">{{nombre.nombre_usuario}} {{nombre.apellido_usuario}}</a></li>
              </ul>
            </li>
          </ul>
        </div>
    </div>
</nav>
<!-- Navbar -->
