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
            var ratingBar;
            angular.forEach($scope.ProductoList, function(value, key){
                ratingBar = angular.element('#setProdPun'+value.codigo_producto);
//                var tdInner = document.getElementById("a1quiInnerHTML");
//                var sel = document.createElement("select");
//                var opt1 = document.createElement("option");
//                var opt2 = document.createElement("option");
//                var opt3 = document.createElement("option");
//                var opt4 = document.createElement("option");
//                var opt5 = document.createElement("option");
//                sel.setAttribute('id','setProdPuntos'+value.codigo_producto+'');
//                tdInner.appendChild(sel);
//                opt1.value = "1";
//                opt1.text = "1";
//                opt2.value = "2";
//                opt2.text = "2";
//                opt3.value = "3";
//                opt3.text = "3";
//                opt4.value = "4";
//                opt4.text = "4";
//                opt5.value = "5";
//                opt5.text = "5";
//                sel.add(opt1, null);
//                sel.add(opt2, null);
//                sel.add(opt3, null);
//                sel.add(opt4, null);
//                sel.add(opt5, null);
//                
//                window.onload = function() {
//                    ratingBar.barrating({
//                        theme: 'fontawesome-stars',
//                        readonly: true,
//                        initialRating: value.promedioPuntaje
//                    });
//                };
                
            });
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
    var codigoVentaVendedor;
    $scope.getNombreVendedor = function(event){
        codigoVentaVendedor = event.target.value;
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getNombreVendedor',
            data: { codigo_venta_vendedor   : codigoVentaVendedor  }
        }).then(function successCallback(response) {
            $scope.NombreVendedor = response.data;
            $scope.getReporteID();
        }, function errorCallback(response) {
            alert("Error en nombre");
        });
        
        $scope.getReporteID = function(){
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getCodigoReporte',
            data: { codigo_venta_vendedor   : codigoVentaVendedor }
        }).then(function successCallback(response) {
            $scope.CodigoReporte = response.data;
        }, function errorCallback(response) {
            alert("Error en reporte");
        });
    };
        
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
    
    //getCatalogo
    $scope.getCatalogo = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getCatalogo',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.Catalogo = response.data;
            $('#paginationCool').twbsPagination({
                totalPages: response.data.length,
                visiblePages: 4,
                onPageClick: function (event, page) {
//                    $('#catalogoTOP').text('Page ' + page);
                }
            });
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
    //Herramientas
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
    
    //LogOut
    $scope.cerrarSesion = function() {
        sessionStorage.clear();
        $window.location.href = '/ProyectoSVAC/';
    };
    
});




