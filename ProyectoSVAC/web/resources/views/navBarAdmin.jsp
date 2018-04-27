
<nav class="navbar navbar-inverse" style="background-color: #4a4a4c; border-radius: 0px; padding-left: 10px;">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="#" ng-click="cerrarSesion()" style="font-size: 15px;">
            <span class="fa fa-sign-out" aria-hidden="true"></span>&nbsp;&nbsp;LogOut</a>
        </div>
        <div class="collapse navbar-collapse" ng-init="getNombreUsuario()">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Herramientas de Administrador&nbsp;<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="http://localhost:8084/ProyectoSVAC/resources/views/gestionCatalogo.jsp">Gestionar Catálogo</a></li>
                    <li><a href="#">Generar Cuota</a></li>
                    <li><a href="#">Gestionar Pedido</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">Generar Promociones</a></li>
                    <li><a href="#">Generar Reportes Stock</a></li>
                  </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right" ng-repeat="nombre in ListaNombres" style="padding-right: 45px;">
                <li><a href="#">{{nombre.nombre_usuario}} {{nombre.apellido_usuario}}</a></li>
            </ul>
        </div>
    </div>
</nav>
