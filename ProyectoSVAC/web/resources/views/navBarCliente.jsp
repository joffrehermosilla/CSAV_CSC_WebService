<!-- Navbar -->
<nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
    <div class="container">
        <!--Cerrar sesion-->
        <div class="navbar-header">
          <a class="navbar-brand" href="#" ng-click="cerrarSesion()" style="font-size: 15px;">
          <span class="fa fa-sign-out" aria-hidden="true"></span>&nbsp;&nbsp;LogOut</a>
        </div>
        <!-- Brand -->
        <a class="navbar-brand" href="http://localhost:8084/ProyectoSVAC/">
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
              <li class="nav-item dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Opciones del Cliente&nbsp;<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Generar Pedido</a></li>
                    <li><a href="http://localhost:8084/ProyectoSVAC/resources/views/gestionPreferencia.jsp">Gestionar Preferencia</a></li>
                  </ul>
              </li>
          </ul>
          <!-- Right -->
          <ul class="navbar-nav nav-flex-icons">
            <li class="nav-item" style="padding: 7px 3px 0px 3px;">
              <ul class="nav navbar-nav navbar-right" ng-repeat="nombre in ListaNombres" style="padding-right: 45px;">
                  <li><a href="#">{{nombre.nombre_usuario}} {{nombre.apellido_usuario}}</a></li>
              </ul>
            </li>
          </ul>
        </div>
    </div>
</nav>
<!-- Navbar -->
