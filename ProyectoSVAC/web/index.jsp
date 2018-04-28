    <%@include file="resources/views/head.jspf" %>
    <script src="http://localhost:8084/ProyectoSVAC/resources/js/loginController.js" type="text/javascript"></script>
    <script src="http://localhost:8084/ProyectoSVAC/resources/js/dirPagination.js" type="text/javascript"></script>
    <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="resources/views/navBarPrinc.jsp"%>
        
        <div class="modal fade loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div style="background-color: #eeeeee;border-color: #4c4f53; border-style: solid;">
                    <div ng-app="myLogin" ng-controller="loginCtrl">
                        <form id="idFormLogin">
                            <div style="text-align: center; padding-top: 15px;">
                                <img src="resources/images/logoTaza.png" alt=""/>
                                <h1 class="titulogo" style="margin-bottom: 30px;">Bienvenido a SVAC_CSC</h1>
                            </div>
                            <div class="row">
                                <div class="col-lg-3">&nbsp;</div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>Nombre de usuario:</label>
                                        <input type="text" class="form-control" ng-model="username" style="height: 38px;">
                                    </div>
                                    <div class="form-group">
                                        <label>Contraseña:</label>
                                        <input type="password" class="form-control" ng-model="password" style="height: 38px;">
                                    </div>
                                </div>
                                <div class="col-lg-3">&nbsp;</div>
                            </div>
                            <div style="text-align: center; padding-bottom: 35px; padding-top: 20px;">
                                <button class="btn btn-success" type="submit" ng-click="loginRegistro()"
                                        style="height: 43px;">Inciar Sesión</button>
                            </div>
                        </form>
                    </div>
                </div>
              </div>
            </div>
        </div>
        
    </body>
</html>
