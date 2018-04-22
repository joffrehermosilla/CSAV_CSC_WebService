<%@include file="resources/views/head.jspf" %>
    <script src="http://localhost:8084/pruebaWeb/resources/js/usuarioController.js" type="text/javascript"></script>
    <script src="http://localhost:8084/pruebaWeb/resources/js/dirPagination.js" type="text/javascript"></script>
    </head>
        <a href="http://localhost:8084/pruebaWeb/resources/views/ejemploUsuario.jsp">Colegios Asociados</a>
        <hr>
        <div ng-app="myUsuario" ng-controller="loginCtrl">
            <form id="idFormLogin">
                <div class="panel panel-primary">
                    <div class="panel-body">
                        <h1>Nuevo Usuario</h1>
                        <div class="form-group">
                            <label>usuario:</label>
                            <input type="text" class="form-control" ng-model="username" placeholder="username">
                        </div>
                        <div class="form-group">
                            <label>password:</label>
                            <input type="text" class="form-control" ng-model="password" placeholder="password">
                        </div>
                        <div class="form-group">
                            <label>nombres:</label>
                            <input type="text" class="form-control" ng-model="nombres" placeholder="nombres">
                        </div>
                        <div class="form-group">
                            <label>apellidos:</label>
                            <input type="text" class="form-control" ng-model="apellidos" placeholder="apellidos">
                        </div>
                        <div class="form-group">
                            <label>email:</label>
                            <input type="email" class="form-control" ng-model="email" placeholder="email">
                        </div>
                    </div>
                </div>
                <br>
                <button class="btn btn-success" type="submit" ng-click="registrarUsuario()">Inciar Sesion</button>
                <hr>
            </form>
        </div>
    </body>
</html>
