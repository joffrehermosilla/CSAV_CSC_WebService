package DTO;

import java.math.BigDecimal;
import java.util.Date;

public class ProductoListaDTO {
    
    int codigo_producto;
    String nombre_producto;
    Date ingreso_almacen_producto;
    Date salida_almacen_producto;
    String stock_producto;
    String preparacion_producto;
    byte[] foto_producto;
    String colores_producto;
    String qr_producto;
    float pvv_producto;
    float pvf_producto;
    int fkcodigo_linea;
    int fkcodigo_tipo_producto;
    int fkcodigo_estado_producto;
    
    int codigo_tipo_producto;
    String nombre_tipo_producto;
    float tiempoenhorno_tipo_producto;
    float temperaturaenhorno_tipo_producto;
    byte[] foto_tipo_producto;
    Date version;
    
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
    
    int codigo_preferencia_sku;
    int fkcodigo_cliente;
    int fkcodigo_producto;
    Date fecha_voto_preferencia;
    float cantidad_puntos;

    double promedioPuntaje;
    BigDecimal cantidadUnidad;

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

    public byte[] getFoto_producto() {
        return foto_producto;
    }

    public void setFoto_producto(byte[] foto_producto) {
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

    public int getCodigo_tipo_producto() {
        return codigo_tipo_producto;
    }

    public void setCodigo_tipo_producto(int codigo_tipo_producto) {
        this.codigo_tipo_producto = codigo_tipo_producto;
    }

    public String getNombre_tipo_producto() {
        return nombre_tipo_producto;
    }

    public void setNombre_tipo_producto(String nombre_tipo_producto) {
        this.nombre_tipo_producto = nombre_tipo_producto;
    }

    public float getTiempoenhorno_tipo_producto() {
        return tiempoenhorno_tipo_producto;
    }

    public void setTiempoenhorno_tipo_producto(float tiempoenhorno_tipo_producto) {
        this.tiempoenhorno_tipo_producto = tiempoenhorno_tipo_producto;
    }

    public float getTemperaturaenhorno_tipo_producto() {
        return temperaturaenhorno_tipo_producto;
    }

    public void setTemperaturaenhorno_tipo_producto(float temperaturaenhorno_tipo_producto) {
        this.temperaturaenhorno_tipo_producto = temperaturaenhorno_tipo_producto;
    }

    public byte[] getFoto_tipo_producto() {
        return foto_tipo_producto;
    }

    public void setFoto_tipo_producto(byte[] foto_tipo_producto) {
        this.foto_tipo_producto = foto_tipo_producto;
    }

    public Date getVersion() {
        return version;
    }

    public void setVersion(Date version) {
        this.version = version;
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

    public int getCodigo_preferencia_sku() {
        return codigo_preferencia_sku;
    }

    public void setCodigo_preferencia_sku(int codigo_preferencia_sku) {
        this.codigo_preferencia_sku = codigo_preferencia_sku;
    }

    public int getFkcodigo_cliente() {
        return fkcodigo_cliente;
    }

    public void setFkcodigo_cliente(int fkcodigo_cliente) {
        this.fkcodigo_cliente = fkcodigo_cliente;
    }

    public int getFkcodigo_producto() {
        return fkcodigo_producto;
    }

    public void setFkcodigo_producto(int fkcodigo_producto) {
        this.fkcodigo_producto = fkcodigo_producto;
    }

    public Date getFecha_voto_preferencia() {
        return fecha_voto_preferencia;
    }

    public void setFecha_voto_preferencia(Date fecha_voto_preferencia) {
        this.fecha_voto_preferencia = fecha_voto_preferencia;
    }

    public float getCantidad_puntos() {
        return cantidad_puntos;
    }

    public void setCantidad_puntos(float cantidad_puntos) {
        this.cantidad_puntos = cantidad_puntos;
    }

    public double getPromedioPuntaje() {
        return promedioPuntaje;
    }

    public void setPromedioPuntaje(double promedioPuntaje) {
        this.promedioPuntaje = promedioPuntaje;
    }

    public BigDecimal getCantidadUnidad() {
        return cantidadUnidad;
    }

    public void setCantidadUnidad(BigDecimal cantidadUnidad) {
        this.cantidadUnidad = cantidadUnidad;
    }

    
}
