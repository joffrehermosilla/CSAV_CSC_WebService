package DTO;

import java.util.Date;

public class ProductoxClienteDTO {
    
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
    
    int codigo_cliente;
    String razonsocial_cliente;
    int fkcodigo_usuario;
    int fkcodigo_regimen_cliente;
    int fkcodigo_estado_cliente;
    float latitud_cliente;
    float longitud_cliente;
    String type_cliente;
    Byte[] foto_ubicacion_cliente;
    String ruc_cliente;
    String dni_cliente;
    Date fecha_empadronamiento_cliente;
    
    int codigo_preferencia_sku;
    int fkcodigo_cliente;
    int fkcodigo_producto;
    Date fecha_voto_preferencia;
    float cantidad_puntos;

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

    public Byte[] getFoto_ubicacion_cliente() {
        return foto_ubicacion_cliente;
    }

    public void setFoto_ubicacion_cliente(Byte[] foto_ubicacion_cliente) {
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
    
    
    
    
}
