package DTO;

import java.util.Date;

public class ProductoCalificarDTO {
    
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
    
    int codigo_insumo;
    String nombre_insumo;
    String marca_insumo;
    Date fecha_ingreso_insumo;
    float peso_insumo;
    String presentacion_insumo;
    float precio_unitario_insumo;
    
    int codigo_receta_producto;
    String modelo_receta_producto;
    Date fecha_creacion_receta_producto;

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

    public int getCodigo_insumo() {
        return codigo_insumo;
    }

    public void setCodigo_insumo(int codigo_insumo) {
        this.codigo_insumo = codigo_insumo;
    }

    public String getNombre_insumo() {
        return nombre_insumo;
    }

    public void setNombre_insumo(String nombre_insumo) {
        this.nombre_insumo = nombre_insumo;
    }

    public String getMarca_insumo() {
        return marca_insumo;
    }

    public void setMarca_insumo(String marca_insumo) {
        this.marca_insumo = marca_insumo;
    }

    public Date getFecha_ingreso_insumo() {
        return fecha_ingreso_insumo;
    }

    public void setFecha_ingreso_insumo(Date fecha_ingreso_insumo) {
        this.fecha_ingreso_insumo = fecha_ingreso_insumo;
    }

    public float getPeso_insumo() {
        return peso_insumo;
    }

    public void setPeso_insumo(float peso_insumo) {
        this.peso_insumo = peso_insumo;
    }

    public String getPresentacion_insumo() {
        return presentacion_insumo;
    }

    public void setPresentacion_insumo(String presentacion_insumo) {
        this.presentacion_insumo = presentacion_insumo;
    }

    public float getPrecio_unitario_insumo() {
        return precio_unitario_insumo;
    }

    public void setPrecio_unitario_insumo(float precio_unitario_insumo) {
        this.precio_unitario_insumo = precio_unitario_insumo;
    }

    public int getCodigo_receta_producto() {
        return codigo_receta_producto;
    }

    public void setCodigo_receta_producto(int codigo_receta_producto) {
        this.codigo_receta_producto = codigo_receta_producto;
    }

    public String getModelo_receta_producto() {
        return modelo_receta_producto;
    }

    public void setModelo_receta_producto(String modelo_receta_producto) {
        this.modelo_receta_producto = modelo_receta_producto;
    }

    public Date getFecha_creacion_receta_producto() {
        return fecha_creacion_receta_producto;
    }

    public void setFecha_creacion_receta_producto(Date fecha_creacion_receta_producto) {
        this.fecha_creacion_receta_producto = fecha_creacion_receta_producto;
    }

    
    
}
