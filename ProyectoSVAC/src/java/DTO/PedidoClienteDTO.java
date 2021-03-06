package DTO;

import java.util.Date;

public class PedidoClienteDTO {
    
    int codigo_pedido_web;
    int fkcodigo_cliente;
    int fkcodigo_vendedorÍndice;
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
    
    int codigo_cliente;
    String razonsocial_cliente;
    int fkcodigo_usuario;
    int fkcodigo_regimen_cliente;
    int fkcodigo_estado_cliente;
    float latitud_cliente;
    float longitud_cliente;
    String type_cliente;
    byte[] foto_ubicacion_cliente;
    String ruc_cliente;
    String dni_cliente;
    Date fecha_empadronamiento_cliente;
    
    int codigo_vendedor;
    int fk_codigo_usuario;
    int fk_codigo_areaÍndice;
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
    String nombreCompleto;
    
    int codigo_distrito;
    int fkcodigo_ciudad;
    String nombre_distrito;
    
    int codigo_estado_cliente_tiene_pedido;
    String nombre_estado_cliente_tiene_pedido;
    byte[] foto_estado_cliente_tiene_pedido;

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

    public int getFkcodigo_vendedorÍndice() {
        return fkcodigo_vendedorÍndice;
    }

    public void setFkcodigo_vendedorÍndice(int fkcodigo_vendedorÍndice) {
        this.fkcodigo_vendedorÍndice = fkcodigo_vendedorÍndice;
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

    public int getCodigo_cliente() {
        return codigo_cliente;
    }

    public void setCodigo_cliente(int codigo_cliente) {
        this.codigo_cliente = codigo_cliente;
    }

    public String getRazonsocial_cliente() {
        return razonsocial_cliente;
    }

    public void setRazonsocial_cliente(String razonsocial_cliente) {
        this.razonsocial_cliente = razonsocial_cliente;
    }

    public int getFkcodigo_usuario() {
        return fkcodigo_usuario;
    }

    public void setFkcodigo_usuario(int fkcodigo_usuario) {
        this.fkcodigo_usuario = fkcodigo_usuario;
    }

    public int getFkcodigo_regimen_cliente() {
        return fkcodigo_regimen_cliente;
    }

    public void setFkcodigo_regimen_cliente(int fkcodigo_regimen_cliente) {
        this.fkcodigo_regimen_cliente = fkcodigo_regimen_cliente;
    }

    public int getFkcodigo_estado_cliente() {
        return fkcodigo_estado_cliente;
    }

    public void setFkcodigo_estado_cliente(int fkcodigo_estado_cliente) {
        this.fkcodigo_estado_cliente = fkcodigo_estado_cliente;
    }

    public float getLatitud_cliente() {
        return latitud_cliente;
    }

    public void setLatitud_cliente(float latitud_cliente) {
        this.latitud_cliente = latitud_cliente;
    }

    public float getLongitud_cliente() {
        return longitud_cliente;
    }

    public void setLongitud_cliente(float longitud_cliente) {
        this.longitud_cliente = longitud_cliente;
    }

    public String getType_cliente() {
        return type_cliente;
    }

    public void setType_cliente(String type_cliente) {
        this.type_cliente = type_cliente;
    }

    public byte[] getFoto_ubicacion_cliente() {
        return foto_ubicacion_cliente;
    }

    public void setFoto_ubicacion_cliente(byte[] foto_ubicacion_cliente) {
        this.foto_ubicacion_cliente = foto_ubicacion_cliente;
    }

    public String getRuc_cliente() {
        return ruc_cliente;
    }

    public void setRuc_cliente(String ruc_cliente) {
        this.ruc_cliente = ruc_cliente;
    }

    public String getDni_cliente() {
        return dni_cliente;
    }

    public void setDni_cliente(String dni_cliente) {
        this.dni_cliente = dni_cliente;
    }

    public Date getFecha_empadronamiento_cliente() {
        return fecha_empadronamiento_cliente;
    }

    public void setFecha_empadronamiento_cliente(Date fecha_empadronamiento_cliente) {
        this.fecha_empadronamiento_cliente = fecha_empadronamiento_cliente;
    }

    public int getCodigo_vendedor() {
        return codigo_vendedor;
    }

    public void setCodigo_vendedor(int codigo_vendedor) {
        this.codigo_vendedor = codigo_vendedor;
    }

    public int getFk_codigo_usuario() {
        return fk_codigo_usuario;
    }

    public void setFk_codigo_usuario(int fk_codigo_usuario) {
        this.fk_codigo_usuario = fk_codigo_usuario;
    }

    public int getFk_codigo_areaÍndice() {
        return fk_codigo_areaÍndice;
    }

    public void setFk_codigo_areaÍndice(int fk_codigo_areaÍndice) {
        this.fk_codigo_areaÍndice = fk_codigo_areaÍndice;
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

    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

    public int getCodigo_distrito() {
        return codigo_distrito;
    }

    public void setCodigo_distrito(int codigo_distrito) {
        this.codigo_distrito = codigo_distrito;
    }

    public int getFkcodigo_ciudad() {
        return fkcodigo_ciudad;
    }

    public void setFkcodigo_ciudad(int fkcodigo_ciudad) {
        this.fkcodigo_ciudad = fkcodigo_ciudad;
    }

    public String getNombre_distrito() {
        return nombre_distrito;
    }

    public void setNombre_distrito(String nombre_distrito) {
        this.nombre_distrito = nombre_distrito;
    }

    public int getCodigo_estado_cliente_tiene_pedido() {
        return codigo_estado_cliente_tiene_pedido;
    }

    public void setCodigo_estado_cliente_tiene_pedido(int codigo_estado_cliente_tiene_pedido) {
        this.codigo_estado_cliente_tiene_pedido = codigo_estado_cliente_tiene_pedido;
    }

    public String getNombre_estado_cliente_tiene_pedido() {
        return nombre_estado_cliente_tiene_pedido;
    }

    public void setNombre_estado_cliente_tiene_pedido(String nombre_estado_cliente_tiene_pedido) {
        this.nombre_estado_cliente_tiene_pedido = nombre_estado_cliente_tiene_pedido;
    }

    public byte[] getFoto_estado_cliente_tiene_pedido() {
        return foto_estado_cliente_tiene_pedido;
    }

    public void setFoto_estado_cliente_tiene_pedido(byte[] foto_estado_cliente_tiene_pedido) {
        this.foto_estado_cliente_tiene_pedido = foto_estado_cliente_tiene_pedido;
    }
    
    
}
