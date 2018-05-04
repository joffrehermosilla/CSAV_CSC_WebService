var app = angular.module("myPreferencia",['ngStorage','angularUtils.directives.dirPagination']);

app.controller("preferenciaCtrl", function($scope, $http, $window) {
   
    $scope.getNombreUsuario = function() {
        var sesionCodigoUsuario = sessionStorage.getItem('idUsuarioLogged');
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/preferencia/getNombreUsu',
            data: {  codigo_usuario : sesionCodigoUsuario  }
        }).then(function successCallback(response) {
            $scope.ListaNombres = response.data;
            
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    
    //getCatalogo
    $scope.getCatalogoCalificados = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/preferencia/getCatalogoCalif',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.CatalogoCalificado = response.data;
            $scope.getCatalogoNoCalificado();
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    $scope.getCatalogoNoCalificado = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/preferencia/getCatalogoNOCalif',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.CatalNOCalificado = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    
    $scope.setCodigoProducto = function(event) {
        var idProductoCalif = event.target.value;
        localStorage.clear();
        localStorage.setItem("idProductoCalif", idProductoCalif);
    };
    
    $scope.calificar = function() {
        var idProductoCalif = localStorage.getItem("idProductoCalif");
        var codigoUsuario = sessionStorage.getItem("idUsuarioLogged");
        var puntosProducto = document.getElementById("setProductoPuntos").value;

        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/preferencia/calificaProducto',
            data: { fkcodigo_cliente : codigoUsuario,
                    codigo_producto : idProductoCalif,
                    cantidad_puntos : puntosProducto
            }
        }).then(function successCallback(response) {
            alert("Producto calificado");
            
        }, function errorCallback(response) {
            alert("Producto calificado");
        });
    };
    
    //LogOut
    $scope.cerrarSesion = function() {
        sessionStorage.clear();
        $window.location.href = 'http://localhost:8084/ProyectoSVAC/';
    };
    
});
