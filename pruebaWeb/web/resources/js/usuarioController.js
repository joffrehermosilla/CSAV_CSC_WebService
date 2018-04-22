var app = angular.module("myUsuario",['ngStorage','angularUtils.directives.dirPagination']);

app.controller("loginCtrl", function($scope,$sessionStorage,$http,$window) {
    //Registrar Nuevo Usuario
    $scope.registrarUsuario = function(){
        $http({
            method: 'POST',
            url: 'http://localhost:8084/pruebaWeb/webresources/pruebaRest/saveDataUsuario',
            data: { usuario   : $scope.username,
                    password  :   $scope.password,
                    nombres  :    $scope.nombres,
                    apellidos :   $scope.apellidos,
                    email :   $scope.email
            }
        }).then(function successCallback(response) {
          alert(response.data);
//          $sessionStorage.idPersonaLogged = parseInt(response.data);             
        }, function errorCallback(response) {
          alert("Error!!");
        });
    };
    
    $scope.eliminaUsuario = function() {
        alert("awdwad");
    };
    
});