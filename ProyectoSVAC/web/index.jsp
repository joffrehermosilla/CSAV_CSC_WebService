    <%@include file="resources/views/head.jspf" %>
    <style type="text/css">
    html,
    body,
    header,
    .carousel {
      height: 60vh;
    }

    @media (max-width: 740px) {
      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {
      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }
    </style>
    </head>
    <body ng-app="myLogin" ng-controller="loginCtrl">
        <%@include file="resources/views/navBarPrinc.jsp"%>
        
        <!--Carousel Wrapper-->
        <div id="carousel-example-1z" class="carousel slide carousel-fade pt-4" data-ride="carousel">

          <!--Indicators-->
          <ol class="carousel-indicators">
            <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-1z" data-slide-to="1"></li>
            <li data-target="#carousel-example-1z" data-slide-to="2"></li>
          </ol>
          <!--/.Indicators-->

          <!--Slides-->
          <div class="carousel-inner" role="listbox">

            <!--First slide-->
            <div class="carousel-item active">
              <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%283%29.jpg'); background-repeat: no-repeat; background-size: cover;">

                <!-- Mask & flexbox options-->
                <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

                  <!-- Content -->
                  <div class="text-center white-text mx-5 wow fadeIn">
                    <h1 class="mb-4 titulogo">
                      <strong>Bienvenido a SVAC - Ceramicas Siete Coyas</strong>
                    </h1>
                    <p><strong>Control de Stock y Administración de Ventas de</strong></p>
                    <p class="mb-4 d-none d-md-block">
                      <strong>LA EMPRESA CERÁMICA SIETE COYAS</strong>
                    </p>
                  </div>
                  <!-- Content -->

                </div>
                <!-- Mask & flexbox options-->

              </div>
            </div>
            <!--/First slide-->

            <!--Second slide-->
            <div class="carousel-item">
              <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%283%29.jpg'); background-repeat: no-repeat; background-size: cover;">

                <!-- Mask & flexbox options-->
                <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

                  <!-- Content -->
                  <div class="text-center white-text mx-5 wow fadeIn">
                    <h1 class="mb-4 titulogo">
                      <strong>Bienvenido a SVAC - Ceramicas Siete Coyas</strong>
                    </h1>
                    <p><strong>Control de Stock y Administración de Ventas de</strong></p>
                    <p class="mb-4 d-none d-md-block">
                      <strong>LA EMPRESA CERÁMICA SIETE COYAS</strong>
                    </p>
                  </div>
                  <!-- Content -->

                </div>
                <!-- Mask & flexbox options-->

              </div>
            </div>
            <!--/Second slide-->

            <!--Third slide-->
            <div class="carousel-item">
              <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%283%29.jpg'); background-repeat: no-repeat; background-size: cover;">

                <!-- Mask & flexbox options-->
                <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

                  <!-- Content -->
                  <div class="text-center white-text mx-5 wow fadeIn">
                    <h1 class="mb-4 titulogo">
                      <strong>Bienvenido a SVAC - Ceramicas Siete Coyas</strong>
                    </h1>
                    <p><strong>Control de Stock y Administración de Ventas de</strong></p>
                    <p class="mb-4 d-none d-md-block">
                      <strong>LA EMPRESA CERÁMICA SIETE COYAS</strong>
                    </p>
                  </div>
                  <!-- Content -->

                </div>
                <!-- Mask & flexbox options-->

              </div>
            </div>
            <!--/Third slide-->

          </div>
          <!--/.Slides-->

          <!--Controls-->
          <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
          <!--/.Controls-->

        </div>
        <!--/.Carousel Wrapper-->
        
        <div style="height: 215px;">&nbsp;</div>
        
        
        <!--Footer-->
        <footer class="page-footer text-center font-small mt-4 wow fadeIn">
          <!--Copyright-->
          <div class="footer-copyright py-3">
            © 2018 Copyright:
            <a href="https://mdbootstrap.com/bootstrap-tutorial/" target="_blank"> SVAC_CSC </a>
          </div>
          <!--/.Copyright-->
        </footer>
        <!--/.Footer-->
        
        
        <!--Modal: Login / Register Form-->
        <div class="modal fade modalSesion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog cascading-modal" role="document">
                <div class="modal-content">
                    <div style="background-color: #eeeeee;border-color: #4c4f53; border-style: solid;">
                        <!--Modal cascading tabs-->
                        <div class="modal-c-tabs">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs tabs-2 white" role="tablist" style="padding: 11px;">
                                <li class="nav-item">
                                    <a id="hyperlinkLogin" class="nav-link active" data-toggle="tab" href="#panel7" role="tab"
                                       style="color: #2E2E2E;">Iniciar Sesión</a>
                                </li>
                                <li class="nav-item">
                                    <a id="hyperlinkSignIn" class="nav-link" data-toggle="tab" href="#panel8" role="tab"
                                       style="color: #2E2E2E;">Crear una cuenta</a>
                                </li>
                            </ul>
                            <!-- Tab panels -->
                            <div class="tab-content">
                                <!--LOGIN   -->
                                <div class="tab-pane fade in show active" id="panel7" role="tabpanel">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-1">&nbsp;</div>
                                            <div class="col-lg-10">
                                                <!--Body-->
                                                <div class="modal-body mb-1">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <img src="resources/images/logoTaza.png" alt="logoTaza"/>
                                                        </div>
                                                        <div class="col-lg-6" style="padding-top: 38px; text-align: center;">
                                                            <p class="titulogoSesion" style="font-size: 27px;">Bienvenido a</p>
                                                            <p class="titulogoSesion" style="font-size: 27px;">SVAC_CSC</p>
                                                        </div>
                                                    </div>
                                                    <div class="md-form form-sm mb-4">
                                                        <i class="fa fa-envelope prefix"></i>
                                                        <input type="text" id="modalLRInput10" class="form-control form-control-sm validate" ng-model="txtUsername">
                                                        <label for="modalLRInput10">Tu nombre de usuario</label>
                                                    </div>
                                                    <div class="md-form form-sm mb-5" style="margin-top: 40px;">
                                                        <i class="fa fa-lock prefix"></i>
                                                        <input type="password" id="modalLRInput11" class="form-control form-control-sm validate" ng-model="txtPassword">
                                                        <label for="modalLRInput11">Tu contraseña</label>
                                                    </div>
                                                    <div class="text-center mt-2" style="padding-bottom: 8px;">
                                                        <input class="btn btn-success" type="submit" ng-click="loginRegistro()"
                                                               style="height: 43px;" value="Iniciar Sesión">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-1">&nbsp;</div>
                                        </div>
                                    </div>
                                </div>
                                <!--/.Panel 7-->

                                <!--REGISTRO-->
                                <div class="tab-pane fade" id="panel8" role="tabpanel">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-1">&nbsp;</div>
                                            <div class="col-lg-10">
                                                <!--Body-->
                                                <div class="mb-1">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <form name="formUsername" ng-submit="formUsername.$valid">
                                                                <div class="md-form form-sm lg-4" ng-class="{ 'has-error' :formUsername.username.$invalid }">
                                                                    <label for="forLbUsername">Username</label>
                                                                    <input type="text" name="username" id="forLbUsername" ng-model="username" class="form-control form-control-sm" required> 
                                                                    <span ng-show="!formUsername.username.$pristine && formUsername.username.$invalid" class="active red-text">No debe dejar espacio en blanco</span>
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <form name="formPassword" ng-submit="formPassword.$valid">
                                                                <div class="md-form form-sm lg-4" ng-class="{ 'has-error' : formPassword.password.$invalid }">
                                                                    <label for="forLbPassword">Password</label>
                                                                    <input type="text" name="password" id="forLbPassword" ng-model="password" class="form-control form-control-sm" required data-rule-minlength="8"> 
                                                                    <span ng-show="!formPassword.password.$pristine && formPassword.password.$invalid" class="active red-text">No debe dejar espacio en blanco</span>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <form name="formNombreUsuario" ng-submit="formNombreUsuario.$valid">
                                                                <div class="md-form form-sm lg-4" ng-class="{ 'has-error' : !formNombreUsuario.name.$pristine && formNombreUsuario.name.$invalid }">
                                                                    <label for="forLbNombreUsuario">Primer Nombre</label>
                                                                    <input type="text" name="name" id="forLbNombreUsuario" ng-model="name" class="form-control form-control-sm" required> 
                                                                    <span ng-show="!formNombreUsuario.name.$pristine && formNombreUsuario.name.$invalid" class="active red-text">No debe dejar espacio en blanco</span>
                                                                </div>
                                                            </form>
                                                            <script>
                                                                //var app = angular.module('myApp', []);
                                                                //app.directive('myDirective', function(){
                                                                //    return {
                                                                //        require: 'ngModel', 
                                                                //        link: function(scope, element, attr, mCtrl){
                                                                //            function myValidation(value){
                                                                //                 for (int i = 0; i < id.length(); i++) {
                                                                //                    char c = id.charAt(i);
                                                                //                        if (c < '0' || c > '9') {// !('0'<=c && c<='9')
                                                                //                            mCtrl.$setValidity('Numero', false);
                                                                //                        }
                                                                //                    }
                                                                //                   mCtrl.$setValidity('Numero', true);
                                                                //                    return value;
                                                                //            }
                                                                //           mCtrl.$parsers.push(myValidation);
                                                                //        }
                                                                //};
                                                                //});
                                                            </script>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <form name="formApellidoUsuario" ng-submit="formApellidoUsuario.$valid">
                                                                <div class="md-form form-sm lg-4" ng-class="{ 'has-error' : !formApellidoUsuario.lastname.$pristine && formApellidoUsuario.lastname.$invalid }">
                                                                    <label for="forLbApellido">Apellido</label>
                                                                    <input type="text" name="lastname" id="forLbApellido" ng-model="lastname" class="form-control form-control-sm validate" required> 
                                                                    <span ng-show="!formApellidoUsuario.lastname.$pristine && formApellidoUsuario.lastname.$invalid" class="active red-text">No debe dejar espacio en blanco</span>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-7">
                                                            <div class="md-form form-sm lg-4">
                                                                <label for="date-picker">Fecha de Nacimiento</label>
                                                                <input type="text" id="date-picker" class="form-control datepicker" readonly>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <form name="formDistrito">
                                                               <div class="md-form form-sm lg-4">
                                                               <div class="form-group">
                                                               <label for="forLbDistrito">Distrito</label><br><br>
                                                               <select class="form-control" id="district">
                                                                   <option>Ancon</option>
                                                                   <option>Lince</option>
                                                                   <option>Jesus Maria</option>
                                                               </select>
                                                               </div>
                                                               </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <form name="formDireccion" ng-submit="formDireccion.$valid">
                                                                <div class="md-form form-sm lg-4" ng-class="{ 'has-error' : !formDireccion.address.$pristine && formDireccion.address.$invalid }">
                                                                    <label for="forLbDireccion">Dirección</label>
                                                                    <input type="text" name="address" id="forLbDistrito" ng-model="address" class="form-control form-control-sm validate" required> 
                                                                    <span ng-show="!formDireccion.address.$pristine && formDireccion.address.$invalid" class="active red-text">No debe dejar espacio en blanco</span>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <div class="text-center form-sm mt-2" style="padding-bottom: 18px; padding-top: 10px;">
                                                        <button class="btn btn-info">Sign up <i class="fa fa-sign-in ml-1"></i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-1">&nbsp;</div>
                                        </div>
                                        <!--/.Panel 8-->
                                    </div>
                                </div>
                        </div>
                        
                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!--Modal: Login / Register Form-->
        <%@include file="resources/views/foot.jspf" %>
        <script>$('.datepicker').pickadate()</script>
        <script src="http://localhost:8084/ProyectoSVAC/resources/js/loginController.js" type="text/javascript"></script>
        <script src="http://localhost:8084/ProyectoSVAC/resources/js/dirPagination.js" type="text/javascript"></script>     
    </body>
</html>
