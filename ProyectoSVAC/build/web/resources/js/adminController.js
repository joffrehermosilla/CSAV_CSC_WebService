var app = angular.module("myCatalogo",['ngStorage','angularUtils.directives.dirPagination']);
app.controller("catalogoCtrl", function($scope, $http, $window) {
    /*------------------------------------Gestionar catalogo-----------------------------------------*/
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
            $scope.getCatalogo('lista_A');
            $scope.getArticulosSacados();
            $scope.getProductosResto();
            //----------------------------------
            $scope.getPedidoClienteStandBy();
            $scope.getPedidoClienteAceptado();
            $scope.getPedidoClienteFacturado();
            $scope.getPedidoClienteBloqueado();
            $scope.getPedidoClienteRechazado();
            $scope.getPedidoClienteNoAtendido();
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
            var sel = document.createElement("select");
            var opt1 = document.createElement("option");
            var opt2 = document.createElement("option");
            var opt3 = document.createElement("option");
            var opt4 = document.createElement("option");
            var opt5 = document.createElement("option");
            
            angular.forEach($scope.ProductoList, function(value, key){
                $('#aquiInnerHTML').text('Page awdaw');
//                sel.setAttribute('id','setProdPuntos'+value.codigo_producto+'');
//                $('#aquiInnerHTML').appendChild(sel);
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
    
    //Cambiar tipo de Catalogo
    $('#idListaCatalogo').on('change', function() {
        var idSelected = $(this).find(":selected").val();
        if(idSelected === 'lista_A') {
            $scope.getCatalogo('lista_A');
        } else if(idSelected === 'lista_B'){
            $scope.getCatalogo('lista_B');
        }
    });
    
    //getCatalogo
    $scope.getCatalogo = function(listaCatalogo) {
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getCatalogo',
            data: { listaCatalogo : listaCatalogo
            }
        }).then(function successCallback(response) {
            $scope.Catalogo = response.data;
            $scope.TOP = response.data.length;
            getNroTOP($scope.TOP);

            var bool = ((response.data.length === 0) ? 1 : parseInt(response.data.length/2));
            $('#paginationCool').twbsPagination({
                totalPages: bool,
                visiblePages: 4,
                onPageClick: function (event, page) {
//                    $('#catalogoTOP').text('Page ' + page);
                }
            });
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    
    var seleccionado;
    //Actualiza Catalogo
    $scope.actualizaCatalogo = function() {
        seleccionado = $('#idListaCatalogo :selected').text();
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/updateCatalogo',
            data: {
            }
        }).then(function successCallback(response) {
            alert("Actualiza Catalogo: Se ejecuto correctamente");
            if(seleccionado === 'Por calificacion') {
                $scope.getCatalogo('lista_A');
            } else if(seleccionado === 'Por cant. pedida') {
                $scope.getCatalogo('lista_B');
            }
            $scope.getArticulosSacados();
            $scope.getProductosResto();
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    
    //Herramientas
    var getNroTOP = function(lenghtTOP) {
        $scope.quitarArticulo = function(event) {
            var idProducto = event.currentTarget.value;
            seleccionado = $('#idListaCatalogo :selected').text();
            if(lenghtTOP <= 5) {
                alert("Capacidad minima: 5 articulos.");
            } else{
                $http({
                    method: 'POST',
                    url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/quitarArticulo',
                    data: { cat_codigo_producto : idProducto }
                }).then(function successCallback(response) {
                    alert("Quitar Articulo: Se ejecuto correctamente");
                    if(seleccionado === 'Por calificacion') {
                        $scope.getCatalogo('lista_A');
                    } else if(seleccionado === 'Por cant. pedida') {
                        $scope.getCatalogo('lista_B');
                    }
                    $scope.getArticulosSacados();
                    $scope.getProductosResto();
                }, function errorCallback(response) {
                    alert("no funciona ERROOR");
                });
            }
        };
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
    $scope.getProductosResto = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getProductoMINUS',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.ListaProdArti = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    $scope.agregaArticulo = function() {
        var idProducto = $scope.articuloSacado;
        seleccionado = $('#idListaCatalogo :selected').text();
        if(idProducto === undefined || idProducto === null) {
            alert("Seleccione el producto que desee agregar al catalogo.");
        }else {
            $http({
                method: 'POST',
                url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/agregaArticulo',
                data: { cat_codigo_producto : idProducto }
            }).then(function successCallback(response) {
                alert("Agrega Articulo: Se ejecuto correctamente");
                if(seleccionado === 'Por calificacion') {
                    $scope.getCatalogo('lista_A');
                } else if(seleccionado === 'Por cant. pedida') {
                    $scope.getCatalogo('lista_B');
                }
                $scope.getArticulosSacados();
                $scope.getProductosResto();
            }, function errorCallback(response) {
                alert("no funciona ERROOR");
            });
        }
    };
    
    //------------------------------------Gestionar Pedido--------------------------------------------
    //Consulta del pedido - stand by
    $scope.getPedidoClienteStandBy = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getPedidoClienteStandBy',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.pedidoClienteStandBy = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    $scope.getPedidoClienteAceptado = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getPedidoClienteAceptado',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.pedidoClienteAceptado = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    $scope.getPedidoClienteFacturado = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getPedidoClienteFacturado',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.pedidoClienteFacturado = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    $scope.getPedidoClienteBloqueado = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getPedidoClienteBloqueado',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.pedidoClienteBloqueado = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    $scope.getPedidoClienteRechazado = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getPedidoClienteRechazado',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.pedidoClienteRechazado = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    $scope.getPedidoClienteNoAtendido = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/getPedidoClienteNoAtendido',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.pedidoClienteNoAtendido = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    
    $scope.cambiaEstadoPedido = function(event) {
        var dataparaEstado = event.currentTarget.value.split('-');
        var codigoPedido = parseInt(dataparaEstado[0]);
        var codigoEstado = parseInt(dataparaEstado[1]);
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/cambiaEstadoPed',
            data: { codigo_pedido_web : codigoPedido,
                    fkcodigo_estado_cliente_tiene_pedido : codigoEstado
            }
        }).then(function successCallback(response) {
            alert("Se ejecuto dicho cambio.");
            $scope.getPedidoClienteStandBy();
            $scope.getPedidoClienteAceptado();
            $scope.getPedidoClienteFacturado();
            $scope.getPedidoClienteBloqueado();
            $scope.getPedidoClienteRechazado();
            $scope.getPedidoClienteNoAtendido();
        }, function errorCallback(response) {
            alert("cambiaEstadoPedido no funciona ERROOR");
        });
    };
    $scope.mostrarDetallePed = function(event) {
        var codigoPedido = event.currentTarget.value;
        $http({
            method: 'POST',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/catalogo/mostrarDetallePedido',
            data: { codigo_pedido_web : codigoPedido
            }
        }).then(function successCallback(response) {
            $scope.listDetallePed = response.data;
            (response.data.fkcodigo_igv_venta === 1) ? $scope.tieneIGV = 'SI' : $scope.tieneIGV = 'NO';
        }, function errorCallback(response) {
            alert("cambiaEstadoPedido no funciona ERROOR");
        });
    };
    
    
    //LogOut
    $scope.cerrarSesion = function() {
        sessionStorage.clear();
        $window.location.href = '/ProyectoSVAC/';
    };
    
});




