<div class="row" style="padding-top: 15px; padding-bottom: 12px;">
    <div class="col-lg-2" style="text-align: center;">
        <p style="padding-top: 6px;">Tipo de Producto:</p>
        <p style="padding-top: 12px;">Puntuación:</p>
    </div>
    <div class="col-lg-2">
        
        <select class="form-control" ng-model="filTipoProducto">
            <option ng-repeat="tipo in TipoProducto" value="{{tipo.nombre_tipo_producto}}">{{tipo.nombre_tipo_producto}}</option>
        </select>
        <div style="padding-bottom: 4px; padding-top: 4px;"></div>
        <script>
            //$(function() {
            //    $('#filtroEstrella').barrating({theme: 'fontawesome-stars'});
            //    $('select').barrating('readonly', true);
            //});
        </script>
        <select class="selectpicker form-control" multiple title="Ranking" 
                data-selected-text-format="count" name="cbEstrellas" id="idEstrellas">
            <option title="5 estrellas"
                    data-content="
                    <span>
                    <select id='filtroEstrella' disabled>
                        <option value='1'>1</option>
                        <option value='2'>2</option>
                        <option value='3'>3</option>
                        <option value='4'>4</option>
                        <option value='5' selected='selected'>5</option>
                    </select>
                    </span>"
                    value="5"
                    >5
            </option>
            <option title="4 estrellas"
                    data-content="
                    <span>
                    <select class='filtroEstrella' disabled>
                        <option value='1'>1</option>
                        <option value='2'>2</option>
                        <option value='3'>3</option>
                        <option value='4' selected='selected'>4</option>
                        <option value='5'>5</option>
                    </select>
                    </span>"
                    value="4"
                    >4
            </option>
            <option title="3 estrellas"
                    data-content="
                    <span>
                    <select class='filtroEstrella' disabled>
                        <option value='1'>1</option>
                        <option value='2'>2</option>
                        <option value='3' selected='selected'>3</option>
                        <option value='4'>4</option>
                        <option value='5'>5</option>
                    </select>
                    </span>"
                    value="3"
                    >3
            </option>
            <option title="2 estrellas"
                    data-content="
                    <span>
                    <select class='filtroEstrella' disabled>
                        <option value='1'>1</option>
                        <option value='2' selected='selected'>2</option>
                        <option value='3'>3</option>
                        <option value='4'>4</option>
                        <option value='5'>5</option>
                    </select>
                    </span>"
                    value="2"
                    >2
            </option>
            <option title="1 estrella"
                    data-content="
                    <span>
                    <select class='filtroEstrella' disabled>
                        <option value='1' selected='selected'>1</option>
                        <option value='2'>2</option>
                        <option value='3'>3</option>
                        <option value='4'>4</option>
                        <option value='5'>5</option>
                    </select>
                    </span>"
                    value="1"
                    >1
            </option>
        </select>
        
    </div>
    <div class="col-lg-2" style="text-align: center;">
        <p style="padding-top: 6px;">Nombre del Producto:</p>
        <p style="padding-top: 12px;">Cantidad (Producto):</p>
    </div>
    <div class="col-lg-2">
        
        <select class="form-control" ng-model="filNombreProducto">
            <option ng-repeat="nomProd in NombreProducto" value="{{nomProd.nombre_producto}}">{{nomProd.nombre_producto}}</option>
        </select>
        <div style="padding-bottom: 4px; padding-top: 4px;"></div>
        <select class="form-control selectpicker" ng-model="filCantidadProducto" multiple title="Prod. más pedidos" 
                data-selected-text-format="count">
            <option value="cantidadMasPedido<20">Menos de 20</option>
            <option value="cantidadMasPedido<=20 && cantidadMasPedido<=40">20 - 40 </option>
            <option value="cantidadMasPedido<=40 && cantidadMasPedido<=60">40 - 60 </option>
            <option value="cantidadMasPedido<=60 && cantidadMasPedido<=80">60 - 80 </option>
            <option value="cantidadMasPedido<=80 && cantidadMasPedido<=100">80 - 100 </option>
            <option value="cantidadMasPedido<=100 && cantidadMasPedido<=120">100 - 120 </option>
            <option value="cantidadMasPedido<=120 && cantidadMasPedido<=140">120 - 140 </option>
            <option value="cantidadMasPedido>140">Más de 140</option>
        </select>
        
    </div>
    <div class="col-lg-2" style="text-align: center;">
        <p style="padding-top: 6px;">Precio Neto:</p>
    </div>
    <div class="col-lg-2">
        <select class="form-control selectpicker" ng-model="filPrecioNeto" multiple title="Precio Neto" 
                data-selected-text-format="count">
            <option value="cat_valor_neto<30">Menos de 30</option>
            <option value="cat_valor_neto<=30 && cat_valor_neto<=100">30 - 100</option>
            <option value="cat_valor_neto<=100 && cat_valor_neto<=240">100 - 170</option>
            <option value="cat_valor_neto<=170 && cat_valor_neto<=240">170 - 240</option>
            <option value="cat_valor_neto<=240 && cat_valor_neto<=310">240 - 310</option>
            <option value="cat_valor_neto<=310 && cat_valor_neto<=380">310 - 380</option>
            <option value="cat_valor_neto>380">Más de 380</option>
        </select>
    </div>
</div>
