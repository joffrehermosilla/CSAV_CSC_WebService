var app = angular.module("myClient",['ngStorage','angularUtils.directives.dirPagination']);

app.controller("clientCtrl", function($scope, $http, $window) {
   
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
            $scope.lengthCatalogo = 'Catalogo de los '+response.data.length+' mejores productos';
            $scope.getCatalogoNoCalificado();
            $scope.getPromociones();
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    //get de todos los productos
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
    
    //Califica el producto
    $scope.setCodigoProducto = function(event) {
        var idProductoCalif = event.currentTarget.value;
        $scope.calificar = function() {
            var codigoUsuario = sessionStorage.getItem("idUsuarioLogged");
            var puntosProducto = document.getElementById("setProductoPuntos").value;
            $http({
                method: 'POST',
                url: 'http://localhost:8084/ProyectoSVAC/webresources/preferencia/calificaProducto',
                data: { codigo_usuario : codigoUsuario,
                        codigo_producto : idProductoCalif,
                        cantidad_puntos : puntosProducto
                }
            }).then(function successCallback(response) {
                alert("Producto calificado");
                $(".modalCalifica").modal('hide');
            }, function errorCallback(response) {
                alert("Error aqui");
            });
        };
    };
    
    //un GET de los promociones
    $scope.getPromociones = function() {
        $http({
            method: 'GET',
            url: 'http://localhost:8084/ProyectoSVAC/webresources/preferencia/getPromocionesSel',
            data: {
            }
        }).then(function successCallback(response) {
            $scope.listaPromociones = response.data;
        }, function errorCallback(response) {
            alert("no funciona ERROOR");
        });
    };
    
    var x = 0;
    var arrayCod = [];
    var arrayCant = [];
    /*Esta es la parte mas tryhard del codigo: 
     *Agregar producto al carrito y usar sus variables en el directive.
     *Quita el producto del carrito puramente dinamico.
     *Se usa el storage para almacenar las listas y objetos - JSON Arrays*/
    $scope.addProductoCarrito = function(event) {
        var cadenaProducto = event.currentTarget.value.split('-');
        var codProducto = parseInt(cadenaProducto[0]);
        var nombreProducto = cadenaProducto[1];
        
        $scope.agregaAlCarrito = function() {
            var cantProducto = $scope.cantidadProd;
            if(cantProducto === null || cantProducto === undefined || cantProducto === "") {
                alert('Digite la cantidad que desee');
            } else {
                var divTotal = document.getElementById("panelCARRITO");
                var divA = document.createElement("div");
                var divRow = document.createElement("div");
                var divB = document.createElement("div");
                var divC = document.createElement("div");
                var button = document.createElement("button");
                var span = document.createElement("span");
                var i = document.createElement("i");
                
                divA.setAttribute("style","padding: 1px 6px 1px 6px;");
                divTotal.appendChild(divA);
                button.setAttribute("class","btn btn-outline-default waves-effect lenProd");
                button.setAttribute("style","width: 96%;");
                button.setAttribute("value",codProducto+"-"+cantProducto);
                divA.appendChild(button);
                divRow.setAttribute("class","row");
                button.appendChild(divRow);
                divB.setAttribute("class","col-lg-10");
                divB.setAttribute("style","text-align: left!important; padding-left: 0px; padding-right: 0px;");
                divC.setAttribute("class","col-lg-2");
                divRow.appendChild(divB);
                divRow.appendChild(divC);
                span.innerHTML = "<span class=\"badge z-depth-1 mr-1\" style=\"background-color: #50a2bb;\"> "+cantProducto+" </span>&nbsp;&nbsp;"+nombreProducto;
                divB.appendChild(span);
                i.setAttribute("class","fa fa-times mr-2");
                i.setAttribute("style","padding-top: 2px; color: #2BBBAD;");
                i.setAttribute("onclick","var buscaViejoCodPro = sessionStorage.getItem(\"listaCodProd\");\n\
                                          var arregCodProd = JSON.parse(buscaViejoCodPro)\n\
                                          var buscaViejoCant = sessionStorage.getItem(\"listaCantProd\");\n\
                                          var arregCantidad = JSON.parse(buscaViejoCant);\n\
                                          \n\
                                          $(\".lenProd[value = '"+codProducto+"-"+cantProducto+"']\").click( function(event) {\n\
                                          var cadena = event.currentTarget.value.split('-');\n\
                                          var _codProd = parseInt(cadena[0]);\n\
                                          var _cantidadPro = parseInt(cadena[1]);\n\
                                          sessionStorage.removeItem('listaCodProd');\n\
                                          sessionStorage.setItem('listaCodProd', JSON.stringify(arregCodProd.filter(function checkCod(m) { return m !== \"\"+_codProd; })));\n\
                                          sessionStorage.removeItem('listaCantProd');\n\
                                          sessionStorage.setItem('listaCantProd', JSON.stringify(arregCantidad.filter(function checkCant(p) { return p !== \"\"+_cantidadPro; })));\n\
                                          $(\".lenProd[value = '"+codProducto+"-"+cantProducto+"']\").remove();\n\
                                          alert(\"Se elimino del pedido.\") } ); ");
                divC.appendChild(i);
                
                $(".modalAddProducto").modal('hide');
                $("button[value='"+codProducto+"-"+nombreProducto+"']").attr("disabled","disabled").removeClass("btn-yellow").css("background-color","#e2d9c2");
                localStorage.setItem('pqCodigoProducto', codProducto);
                localStorage.setItem('pqcantidadProducto', cantProducto);
                
                //Agregando una lista codigoProd y cantidad a la sesion
                arrayCod.push(localStorage.getItem("pqCodigoProducto"));
                arrayCant.push(localStorage.getItem("pqcantidadProducto"));
                sessionStorage.setItem('listaCodProd', JSON.stringify(arrayCod));
                sessionStorage.setItem('listaCantProd', JSON.stringify(arrayCant));
            }
        };
    };
    
    //Coloco la descripcion de la promocion en la vista y genera el pedido en su totalidad.
    $scope.getPromDescripcion = function() {
        var value = $scope.promocion;
        var multipleProm = value.split('-');
        var codigoPromo = parseInt(multipleProm[0]);
        var cantidadPromo = parseInt(multipleProm[1]);
        var descPromo = parseFloat(multipleProm[2]);
        var fechaInicio = multipleProm[3];
        var fechaExpira = multipleProm[4];
        var descripcion = multipleProm[5];
        
        var contenido = document.getElementById("descripPromocion");
        if(value === "-99") {
            $("#descripPromocion").removeAttr("style");
            contenido.innerHTML = "";
            $("#listaPanelPed").removeClass("extrathicc").addClass("extraNormal");
        }else {
            contenido.setAttribute("style","padding-top: 14px;");
            contenido.innerHTML = "<p style=\"font-weight: 300; font-size: 14px; color: #314967;\">"+descripcion+" con un descuento de "+descPromo*100+"%.\n\
                                   <br>Fecha de inicio: "+fechaInicio+"\
                                   <br>Fecha que expira: "+fechaExpira+"</p>";
            $("#listaPanelPed").removeClass("extraNormal").addClass("extrathicc");
        }
        
        $scope.generaPedido = function() {
            var jsonArray;
            var pluginArrayArg = new Array();
            var cadenaCodProd = sessionStorage.getItem("listaCodProd");
            var cadenaCantidad = sessionStorage.getItem("listaCantProd");
            var arregloCodProd = JSON.parse(cadenaCodProd);
            var arregloCantidad = JSON.parse(cadenaCantidad);
            
            //Convertiendo a JSON Array con multiple arrays y objetos
            var jsonArg1 = new Object();
            (value === "-99") ? jsonArg1.fkcodigo_promocion_venta = value : jsonArg1.fkcodigo_promocion_venta = codigoPromo;
            jsonArg1.cantidad_sku_pedido = cantidadPromo;
            jsonArg1.descuento_sku_pedido = descPromo;
            for (var i = 0; i < arregloCodProd.length; i++) {
                for (var j = 0; j < arregloCantidad.length; j++) {
                    var jsonArg2 = new Object();
                    jsonArg2.fkcodigo_producto = arregloCodProd[i];
                    jsonArg2.cantidadProductoPed = arregloCantidad[i];
                    pluginArrayArg.push(jsonArg2);
                    break;
                }
            }
            jsonArg1.lista_pedido = pluginArrayArg;
            jsonArray = JSON.stringify(jsonArg1);
            alert(jsonArray);
            
            
            alert("Pedido solicitado.. procesando..");
            
            sessionStorage.removeItem('listaCodProd');
            sessionStorage.removeItem('listaCantProd');
            $window.location.href = '/ProyectoSVAC/resources/views/vCliente.jsp';
        };
    };
    
    $scope.modificaProPed = function(event) {
        var cadena = event.target.value.split('-');
        var codigoProducto = parseInt(cadena[0]);
        var cantidadProducto = parseInt(cadena[1]);
        alert(codigoProducto+" "+cantidadProducto);
    };
    
    
    //LogOut
    $scope.cerrarSesion = function() {
        sessionStorage.clear();
        $window.location.href = '/ProyectoSVAC/';
    };
    
});
