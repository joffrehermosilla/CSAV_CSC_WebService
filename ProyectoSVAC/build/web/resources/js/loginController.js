var hyperlinkLogin = document.getElementById("hyperlinkLogin");
var hyperlinkSignIn = document.getElementById("hyperlinkSignIn");
function clickRegistrar() {
    hyperlinkLogin.removeClass('active');
    hyperlinkSignIn.setAttribute("class","active");
    $('.nav-tabs a[href="#panel8"]').tab('show');
}
function clickLogin() {
    hyperlinkSignIn.removeClass('active');
    hyperlinkLogin.setAttribute("class","active");
    $('.nav-tabs a[href="#panel7"]').tab('show');
}

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
            //Direccionamiento segun tipo de usuario
            if(sessionStorage.getItem("fkidTipoUsuario") === "1") {
                $window.location.href = '/ProyectoSVAC/resources/views/gestionCatalogo.jsp';
            }
            if(sessionStorage.getItem("fkidTipoUsuario") === "4") {
                $window.location.href = '/ProyectoSVAC/resources/views/gestionPreferencia.jsp';
            }
        }, function errorCallback(response) {
            alert("Nombre de usuario o password incorrecto");
        });
    };
});