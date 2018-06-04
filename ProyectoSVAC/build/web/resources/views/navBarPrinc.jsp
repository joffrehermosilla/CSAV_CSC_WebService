<!-- Navbar -->
<nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
    <div class="container">
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
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <!-- Left -->
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active" style="padding-left: 5px; padding-right: 3px;">
                <a class="nav-link waves-effect" href="http://localhost:8084/ProyectoSVAC/">Ver productos
                    <span class="sr-only">(current)</span>
                </a>
            </li>
            <li class="nav-item" style="padding-left: 3px; padding-right: 3px;">
                <a class="nav-link waves-effect" href="#">Nuestro Catálogo</a>
            </li>
            <li class="nav-item" style="padding-left: 3px; padding-right: 5px;">
                <a class="nav-link waves-effect" href="#">Colaboradores</a>
            </li>
        </ul>
        <!-- Right -->
        <ul class="navbar-nav nav-flex-icons">
          <li class="nav-item" style="padding-left: 3px; padding-right: 3px;">
            <a href="#" data-toggle="modal" data-target=".modalSesion" class="nav-link border border-light rounded waves-effect">
                <span class="fa fa-pencil mr-2" aria-hidden="true" onclick="clickRegistrar()"></span>Registrarse
            </a>
          </li>
          <li class="nav-item" style="padding-left: 3px; padding-right: 3px;">
            <a href="#" data-toggle="modal" data-target=".modalSesion" class="nav-link border border-light rounded waves-effect">
                <span class="fa fa-sign-in mr-2" aria-hidden="true" onclick="clickLogin()"></span>Iniciar Sesión
            </a>
          </li>
        </ul>
      </div>
    </div>
</nav>
<!-- Navbar -->
