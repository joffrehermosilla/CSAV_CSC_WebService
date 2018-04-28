var app = angular.module("myCatalogo",['ngStorage','angularUtils.directives.dirPagination']);

app.controller("catalogoCtrl", function($scope, $http, $window) {
    
    $scope.getNombreUsuario = function() {
        var sesionCodigoUsuario = sessionStorage.getItem('idUsuarioLogged');
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getNombreUsu',
            data: {  codigo_usuario : sesionCodigoUsuario
            }
        }).then(function successCallback(response) {
            $scope.ListaNombres = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    
    
    //getProductos
//    $scope.getProducto = function(){
//        $http({
//            method: 'GET',
//            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getProducto',
//            data: {
//            }
//        }).then(function successCallback(response) {
//            $scope.ProductoList = response.data;
//        }, function errorCallback(response) {
//            alert("no funciona ERROOR");
//        });        
//    };
    
    $scope.getPedidoReporte = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getPedido',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.PedidoList = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    
    $scope.cerrarSesion = function() {
        sessionStorage.clear();
        $window.location.href = 'http://localhost:8084/ProyectoSVAC/';
    };
    
});




