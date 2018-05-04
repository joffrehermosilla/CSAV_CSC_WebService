//        $('.getRatingBar').barrating({
//            initialRating: getPuntaje.value
//        });


var app = angular.module("myCatalogo",['ngStorage','angularUtils.directives.dirPagination']);

app.controller("catalogoCtrl", function($scope, $http, $window) {
    
    //Titula el nombre del usuario logueado en el navbar
    $scope.getNombreUsuario = function() {
        var sesionCodigoUsuario = sessionStorage.getItem('idUsuarioLogged');
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getNombreUsu',
            data: {  codigo_usuario : sesionCodigoUsuario  }
        }).then(function successCallback(response) {
            $scope.ListaNombres = response.data;
            $scope.getProducto();
            $scope.getVendedores();
            $scope.getTipoProducto();
            $scope.getNombreProducto();
            $scope.getCatalogo();
            $scope.getArticulosSacados();
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    
    //Consulta toda la vista de lista_producto
    $scope.getProducto = function(){
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getProducto',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.ProductoList = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    
    //Consulta todos los vendedores en una lista
    $scope.getVendedores = function(){
        $scope.idVendedor = $scope.username;
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getVendedores',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.VendedorList = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    
    //Consulta el nombre del vendedor y el reporte del pedido
    var codigoVendedor;
    $scope.getNombreVendedor = function(){
        codigoVendedor = 1;
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getNombreVendedor',
            data: { codigo_vendedor   : codigoVendedor  }
        }).then(function successCallback(response) {
            $scope.NombreVendedor = response.data;
            $scope.getReporteID();
        }, function errorCallback(response) {
            alert("Error en nombre");
        });
    };
    $scope.getReporteID = function(){
        codigoVendedor = 1;
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getCodigoReporte',
            data: { codigo_vendedor   : codigoVendedor }
        }).then(function successCallback(response) {
            $scope.CodigoReporte = response.data;
        }, function errorCallback(response) {
            alert("Error en reporte");
        });
    };
    
    //Consulta en detalle los datos generales y el pedido
    var idPedidoReporte;
    $scope.getDatosGeneral = function() {
        idPedidoReporte = $scope.modReporte;
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getDatosGenerales',
            data: { codigo_pedido_web : idPedidoReporte }
        }).then(function successCallback(response) {
            $scope.DatosGenerales = response.data;
            $scope.getPedido();
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    $scope.getPedido = function() {
        idPedidoReporte = $scope.modReporte;
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getPedido',
            data: { codigo_pedido_web : idPedidoReporte }
        }).then(function successCallback(response) {
            $scope.pedidoCliente = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    
    /*AQUI ES DONDE SE DESARROLLA LOS FILTROS DEL CATALOGO - modo tryhard*/
    $scope.getTipoProducto = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getTipoProducto',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.TipoProducto = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    $scope.getNombreProducto = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getNombreProducto',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.NombreProducto = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    //getCatalogo
    $scope.getCatalogo = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getCatalogo',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.Catalogo = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    //Actualiza Catalogo
    $scope.actualizaCatalogo = function() {
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/updateCatalogo',
            data: {
            }
        }).then(function successCallback(response) {
            alert("Actualiza Catalogo: Se ejecuto correctamente");
            $scope.getCatalogo();
            $scope.getArticulosSacados();
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    //Actualiza Catalogo
    $scope.quitarArticulo = function(event) {
        var idProducto = event.target.value;
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/quitarArticulo',
            data: { cat_codigo_producto : idProducto }
        }).then(function successCallback(response) {
            alert("Quitar Articulo: Se ejecuto correctamente");
            $scope.getCatalogo();
            $scope.getArticulosSacados();
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    $scope.getArticulosSacados = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getArticulosSacados',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.ArticulosSacados = response.data;
            $('#selectArticulo').selectpicker('refresh');
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    $scope.agregaArticulo = function(event) {
        var idProducto = $scope.articuloSacado;
        if(idProducto === undefined || idProducto === null) {
            alert("Controlado: "+idProducto);
        }else {
            $http({
                method: 'POST',
                url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/agregaArticulo',
                data: { cat_codigo_producto : idProducto }
            }).then(function successCallback(response) {
                alert("Agrega Articulo: Se ejecuto correctamente");
                $scope.getCatalogo();
                $scope.getArticulosSacados();
            }, function errorCallback(response) {
                alert("no funciona ERROOR");
            });
        }
    };
    
    //FILTROS
    
    
    
    //LogOut
    $scope.cerrarSesion = function() {
        sessionStorage.clear();
        $window.location.href = 'http://localhost:8084/ProyectoSVAC/';
    };
    
});




