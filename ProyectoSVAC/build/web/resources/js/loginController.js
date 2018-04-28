var app = angular.module("myLogin",['ngStorage','angularUtils.directives.dirPagination']);

app.controller("loginCtrl", function($scope, $http, $window) {
    //Login Nuevo Usuario
    $scope.loginRegistro = function(){
        var nombreUsuario = $scope.username;
        var passwordUsuario = $scope.password;
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/principal/loginUsuario',
            data: { nombre_logeo_usuario   : nombreUsuario,
                    password_usuario  :   passwordUsuario
            }
        }).then(function successCallback(response) {
            //Aqui estoy recogiendo el idUsuario en sesion
            sessionStorage.setItem('idUsuarioLogged', response.data.codigo_usuario);
            sessionStorage.setItem('fkidTipoUsuario', response.data.fkcodigo_tipo_usuario);
            alert("idUsuario: "+sessionStorage.getItem('idUsuarioLogged')+"\ntipoUsuario: "+sessionStorage.getItem('fkidTipoUsuario'));
            $window.location.href = 'http://localhost:8084/ProyectoSVAC/resources/views/gestionCatalogo.jsp';
            
        }, function errorCallback(response) {
            alert("No existe tal usuario");
        });
    };
});