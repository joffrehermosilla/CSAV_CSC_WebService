package DTO;

import java.util.Date;

public class ReporteVendedorDTO {
    
    int codigo_vendedor;
    int fkcodigo_usuario;
    int fkcodigo_area;
    String codigo_venta_vendedor;

    int codigo_usuario;
    String nombre_usuario;
    String apellido_usuario;
    Date fecha_nacimiento_usuario;
    String direccion_usuario;
    String nombre_logeo_usuario;
    String password_usuario;
    Byte[] foto_usuario;
    int fkcodigo_distrito;
    int fkcodigo_tipo_usuario;
    int fkcodigo_estado_usuario;
    
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
    
    String codigo_reporte;

    public int getCodigo_vendedor() {
        return codigo_vendedor;
    }

    public void setCodigo_vendedor(int codigo_vendedor) {
        this.codigo_vendedor = codigo_vendedor;
    }

    public int getFkcodigo_usuario() {
        return fkcodigo_usuario;
    }

    public void setFkcodigo_usuario(int fkcodigo_usuario) {
        this.fkcodigo_usuario = fkcodigo_usuario;
    }

    public int getFkcodigo_area() {
        return fkcodigo_area;
    }

    public void setFkcodigo_area(int fkcodigo_area) {
        this.fkcodigo_area = fkcodigo_area;
    }

    public String getCodigo_venta_vendedor() {
        return codigo_venta_vendedor;
    }

    public void setCodigo_venta_vendedor(String codigo_venta_vendedor) {
        this.codigo_venta_vendedor = codigo_venta_vendedor;
    }

    public int getCodigo_usuario() {
        return codigo_usuario;
    }

    public void setCodigo_usuario(int codigo_usuario) {
        this.codigo_usuario = codigo_usuario;
    }

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public String getApellido_usuario() {
        return apellido_usuario;
    }

    public void setApellido_usuario(String apellido_usuario) {
        this.apellido_usuario = apellido_usuario;
    }

    public Date getFecha_nacimiento_usuario() {
        return fecha_nacimiento_usuario;
    }

    public void setFecha_nacimiento_usuario(Date fecha_nacimiento_usuario) {
        this.fecha_nacimiento_usuario = fecha_nacimiento_usuario;
    }

    public String getDireccion_usuario() {
        return direccion_usuario;
    }

    public void setDireccion_usuario(String direccion_usuario) {
        this.direccion_usuario = direccion_usuario;
    }

    public String getNombre_logeo_usuario() {
        return nombre_logeo_usuario;
    }

    public void setNombre_logeo_usuario(String nombre_logeo_usuario) {
        this.nombre_logeo_usuario = nombre_logeo_usuario;
    }

    public String getPassword_usuario() {
        return password_usuario;
    }

    public void setPassword_usuario(String password_usuario) {
        this.password_usuario = password_usuario;
    }

    public Byte[] getFoto_usuario() {
        return foto_usuario;
    }

    public void setFoto_usuario(Byte[] foto_usuario) {
        this.foto_usuario = foto_usuario;
    }

    public int getFkcodigo_distrito() {
        return fkcodigo_distrito;
    }

    public void setFkcodigo_distrito(int fkcodigo_distrito) {
        this.fkcodigo_distrito = fkcodigo_distrito;
    }

    public int getFkcodigo_tipo_usuario() {
        return fkcodigo_tipo_usuario;
    }

    public void setFkcodigo_tipo_usuario(int fkcodigo_tipo_usuario) {
        this.fkcodigo_tipo_usuario = fkcodigo_tipo_usuario;
    }

    public int getFkcodigo_estado_usuario() {
        return fkcodigo_estado_usuario;
    }

    public void setFkcodigo_estado_usuario(int fkcodigo_estado_usuario) {
        this.fkcodigo_estado_usuario = fkcodigo_estado_usuario;
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

    public String getCodigo_reporte() {
        return codigo_reporte;
    }

    public void setCodigo_reporte(String codigo_reporte) {
        this.codigo_reporte = codigo_reporte;
    }

    
    
}
