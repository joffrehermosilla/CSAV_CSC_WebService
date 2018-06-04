package DTO;

import java.util.Date;

public class DetallePedidoDTO {
    
    int codigo_producto;
    String nombre_producto;
    Date ingreso_almacen_producto;
    Date salida_almacen_producto;
    String stock_producto;
    String preparacion_producto;
    Byte[] foto_producto;
    String colores_producto;
    String qr_producto;
    float pvv_producto;
    float pvf_producto;
    int fkcodigo_linea;
    int fkcodigo_tipo_producto;
    int fkcodigo_estado_producto;
    
    int codigo_pedido_web;
    int fkcodigo_cliente;
    int fkcodigo_vendedor;
    int fkcodigo_igv_venta;
    int fkcodigo_promocion_venta;
    int fkcodigo_estado_cliente_tiene_pedido;
    int fkcodigo_factura_cliente_tiene_pedido;
    float descuento_web_pedido;
    float precio_uni_desc_igv;
    float precio_uni_desc_sin_igv;
    Date fecha_pedido;
    Date fecha_entrega;
    int cantidad_producto;
    float monto_por_descuentos;
    
    int codigo_producto_por_pedido;
    int fkcodigo_pedido_web;
    int fkcodigo_producto;
    float descuento_promocion;
    float valor_neto;
    float valor_con_igv;
    int cantidadProductoPed;

    int codigo_factura_cliente_tiene_pedido;
    String nombre_factura_cliente_tiene_pedido;
    
    int codigo_promocion_venta;
    int cantidad_sku_pedido;
    float descuento_sku_pedido;
    Date fecha_inicio_promocion;
    Date fecha_expiracion_promocion;
    String descripcion_promocion;
    
    int codigo_igv_venta;
    int fkcodigo_tipo_impuesto;
    float porcentaje_igv_venta;

    public int getCodigo_producto() {
        return codigo_producto;
    }

    public void setCodigo_producto(int codigo_producto) {
        this.codigo_producto = codigo_producto;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public Date getIngreso_almacen_producto() {
        return ingreso_almacen_producto;
    }

    public void setIngreso_almacen_producto(Date ingreso_almacen_producto) {
        this.ingreso_almacen_producto = ingreso_almacen_producto;
    }

    public Date getSalida_almacen_producto() {
        return salida_almacen_producto;
    }

    public void setSalida_almacen_producto(Date salida_almacen_producto) {
        this.salida_almacen_producto = salida_almacen_producto;
    }

    public String getStock_producto() {
        return stock_producto;
    }

    public void setStock_producto(String stock_producto) {
        this.stock_producto = stock_producto;
    }

    public String getPreparacion_producto() {
        return preparacion_producto;
    }

    public void setPreparacion_producto(String preparacion_producto) {
        this.preparacion_producto = preparacion_producto;
    }

    public Byte[] getFoto_producto() {
        return foto_producto;
    }

    public void setFoto_producto(Byte[] foto_producto) {
        this.foto_producto = foto_producto;
    }

    public String getColores_producto() {
        return colores_producto;
    }

    public void setColores_producto(String colores_producto) {
        this.colores_producto = colores_producto;
    }

    public String getQr_producto() {
        return qr_producto;
    }

    public void setQr_producto(String qr_producto) {
        this.qr_producto = qr_producto;
    }

    public float getPvv_producto() {
        return pvv_producto;
    }

    public void setPvv_producto(float pvv_producto) {
        this.pvv_producto = pvv_producto;
    }

    public float getPvf_producto() {
        return pvf_producto;
    }

    public void setPvf_producto(float pvf_producto) {
        this.pvf_producto = pvf_producto;
    }

    public int getFkcodigo_linea() {
        return fkcodigo_linea;
    }

    public void setFkcodigo_linea(int fkcodigo_linea) {
        this.fkcodigo_linea = fkcodigo_linea;
    }

    public int getFkcodigo_tipo_producto() {
        return fkcodigo_tipo_producto;
    }

    public void setFkcodigo_tipo_producto(int fkcodigo_tipo_producto) {
        this.fkcodigo_tipo_producto = fkcodigo_tipo_producto;
    }

    public int getFkcodigo_estado_producto() {
        return fkcodigo_estado_producto;
    }

    public void setFkcodigo_estado_producto(int fkcodigo_estado_producto) {
        this.fkcodigo_estado_producto = fkcodigo_estado_producto;
    }

    public int getCodigo_pedido_web() {
        return codigo_pedido_web;
    }

    public void setCodigo_pedido_web(int codigo_pedido_web) {
        this.codigo_pedido_web = codigo_pedido_web;
    }

    public int getFkcodigo_cliente() {
        return fkcodigo_cliente;
    }

    public void setFkcodigo_cliente(int fkcodigo_cliente) {
        this.fkcodigo_cliente = fkcodigo_cliente;
    }

    public int getFkcodigo_vendedor() {
        return fkcodigo_vendedor;
    }

    public void setFkcodigo_vendedor(int fkcodigo_vendedor) {
        this.fkcodigo_vendedor = fkcodigo_vendedor;
    }

    public int getFkcodigo_igv_venta() {
        return fkcodigo_igv_venta;
    }

    public void setFkcodigo_igv_venta(int fkcodigo_igv_venta) {
        this.fkcodigo_igv_venta = fkcodigo_igv_venta;
    }

    public int getFkcodigo_promocion_venta() {
        return fkcodigo_promocion_venta;
    }

    public void setFkcodigo_promocion_venta(int fkcodigo_promocion_venta) {
        this.fkcodigo_promocion_venta = fkcodigo_promocion_venta;
    }

    public int getFkcodigo_estado_cliente_tiene_pedido() {
        return fkcodigo_estado_cliente_tiene_pedido;
    }

    public void setFkcodigo_estado_cliente_tiene_pedido(int fkcodigo_estado_cliente_tiene_pedido) {
        this.fkcodigo_estado_cliente_tiene_pedido = fkcodigo_estado_cliente_tiene_pedido;
    }

    public int getFkcodigo_factura_cliente_tiene_pedido() {
        return fkcodigo_factura_cliente_tiene_pedido;
    }

    public void setFkcodigo_factura_cliente_tiene_pedido(int fkcodigo_factura_cliente_tiene_pedido) {
        this.fkcodigo_factura_cliente_tiene_pedido = fkcodigo_factura_cliente_tiene_pedido;
    }

    public float getDescuento_web_pedido() {
        return descuento_web_pedido;
    }

    public void setDescuento_web_pedido(float descuento_web_pedido) {
        this.descuento_web_pedido = descuento_web_pedido;
    }

    public float getPrecio_uni_desc_igv() {
        return precio_uni_desc_igv;
    }

    public void setPrecio_uni_desc_igv(float precio_uni_desc_igv) {
        this.precio_uni_desc_igv = precio_uni_desc_igv;
    }

    public float getPrecio_uni_desc_sin_igv() {
        return precio_uni_desc_sin_igv;
    }

    public void setPrecio_uni_desc_sin_igv(float precio_uni_desc_sin_igv) {
        this.precio_uni_desc_sin_igv = precio_uni_desc_sin_igv;
    }

    public Date getFecha_pedido() {
        return fecha_pedido;
    }

    public void setFecha_pedido(Date fecha_pedido) {
        this.fecha_pedido = fecha_pedido;
    }

    public Date getFecha_entrega() {
        return fecha_entrega;
    }

    public void setFecha_entrega(Date fecha_entrega) {
        this.fecha_entrega = fecha_entrega;
    }

    public int getCantidad_producto() {
        return cantidad_producto;
    }

    public void setCantidad_producto(int cantidad_producto) {
        this.cantidad_producto = cantidad_producto;
    }

    public float getMonto_por_descuentos() {
        return monto_por_descuentos;
    }

    public void setMonto_por_descuentos(float monto_por_descuentos) {
        this.monto_por_descuentos = monto_por_descuentos;
    }

    public int getCodigo_producto_por_pedido() {
        return codigo_producto_por_pedido;
    }

    public void setCodigo_producto_por_pedido(int codigo_producto_por_pedido) {
        this.codigo_producto_por_pedido = codigo_producto_por_pedido;
    }

    public int getFkcodigo_pedido_web() {
        return fkcodigo_pedido_web;
    }

    public void setFkcodigo_pedido_web(int fkcodigo_pedido_web) {
        this.fkcodigo_pedido_web = fkcodigo_pedido_web;
    }

    public int getFkcodigo_producto() {
        return fkcodigo_producto;
    }

    public void setFkcodigo_producto(int fkcodigo_producto) {
        this.fkcodigo_producto = fkcodigo_producto;
    }

    public float getDescuento_promocion() {
        return descuento_promocion;
    }

    public void setDescuento_promocion(float descuento_promocion) {
        this.descuento_promocion = descuento_promocion;
    }

    public float getValor_neto() {
        return valor_neto;
    }

    public void setValor_neto(float valor_neto) {
        this.valor_neto = valor_neto;
    }

    public float getValor_con_igv() {
        return valor_con_igv;
    }

    public void setValor_con_igv(float valor_con_igv) {
        this.valor_con_igv = valor_con_igv;
    }

    public int getCantidadProductoPed() {
        return cantidadProductoPed;
    }

    public void setCantidadProductoPed(int cantidadProductoPed) {
        this.cantidadProductoPed = cantidadProductoPed;
    }

    public int getCodigo_factura_cliente_tiene_pedido() {
        return codigo_factura_cliente_tiene_pedido;
    }

    public void setCodigo_factura_cliente_tiene_pedido(int codigo_factura_cliente_tiene_pedido) {
        this.codigo_factura_cliente_tiene_pedido = codigo_factura_cliente_tiene_pedido;
    }

    public String getNombre_factura_cliente_tiene_pedido() {
        return nombre_factura_cliente_tiene_pedido;
    }

    public void setNombre_factura_cliente_tiene_pedido(String nombre_factura_cliente_tiene_pedido) {
        this.nombre_factura_cliente_tiene_pedido = nombre_factura_cliente_tiene_pedido;
    }

    public int getCodigo_promocion_venta() {
        return codigo_promocion_venta;
    }

    public void setCodigo_promocion_venta(int codigo_promocion_venta) {
        this.codigo_promocion_venta = codigo_promocion_venta;
    }

    public int getCantidad_sku_pedido() {
        return cantidad_sku_pedido;
    }

    public void setCantidad_sku_pedido(int cantidad_sku_pedido) {
        this.cantidad_sku_pedido = cantidad_sku_pedido;
    }

    public float getDescuento_sku_pedido() {
        return descuento_sku_pedido;
    }

    public void setDescuento_sku_pedido(float descuento_sku_pedido) {
        this.descuento_sku_pedido = descuento_sku_pedido;
    }

    public Date getFecha_inicio_promocion() {
        return fecha_inicio_promocion;
    }

    public void setFecha_inicio_promocion(Date fecha_inicio_promocion) {
        this.fecha_inicio_promocion = fecha_inicio_promocion;
    }

    public Date getFecha_expiracion_promocion() {
        return fecha_expiracion_promocion;
    }

    public void setFecha_expiracion_promocion(Date fecha_expiracion_promocion) {
        this.fecha_expiracion_promocion = fecha_expiracion_promocion;
    }

    public String getDescripcion_promocion() {
        return descripcion_promocion;
    }

    public void setDescripcion_promocion(String descripcion_promocion) {
        this.descripcion_promocion = descripcion_promocion;
    }

    public int getCodigo_igv_venta() {
        return codigo_igv_venta;
    }

    public void setCodigo_igv_venta(int codigo_igv_venta) {
        this.codigo_igv_venta = codigo_igv_venta;
    }

    public int getFkcodigo_tipo_impuesto() {
        return fkcodigo_tipo_impuesto;
    }

    public void setFkcodigo_tipo_impuesto(int fkcodigo_tipo_impuesto) {
        this.fkcodigo_tipo_impuesto = fkcodigo_tipo_impuesto;
    }

    public float getPorcentaje_igv_venta() {
        return porcentaje_igv_venta;
    }

    public void setPorcentaje_igv_venta(float porcentaje_igv_venta) {
        this.porcentaje_igv_venta = porcentaje_igv_venta;
    }

    
}
