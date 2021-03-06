package DTO;

import java.util.Date;

public class CatalogoDTO {
    
    int codigo_catalogo;
    int cat_codigo_producto;
    String cat_nombre_producto;
    String cat_nombre_tipo_producto;
    float cat_tiempoenhorno_tipo_producto;
    float cat_temperaturaenhorno_tipo_producto;
    float cat_valor_neto;
    float cat_valor_con_igv;
    byte[] cat_foto_producto;
    String cat_preparacion_producto;
    String cat_colores_producto;
    String cat_nombre_insumo;
    String cat_modelo_receta_producto;
    int cantidadMasPedido;
    float promedioTotalProd;
    int fkcodigo_estadoCatalogo;
    Date version;
    
    int codigo_estadoCatalogo;
    String descripcion;

    String listaCatalogo;

    public int getCodigo_catalogo() {
        return codigo_catalogo;
    }

    public void setCodigo_catalogo(int codigo_catalogo) {
        this.codigo_catalogo = codigo_catalogo;
    }

    public int getCat_codigo_producto() {
        return cat_codigo_producto;
    }

    public void setCat_codigo_producto(int cat_codigo_producto) {
        this.cat_codigo_producto = cat_codigo_producto;
    }

    public String getCat_nombre_producto() {
        return cat_nombre_producto;
    }

    public void setCat_nombre_producto(String cat_nombre_producto) {
        this.cat_nombre_producto = cat_nombre_producto;
    }

    public String getCat_nombre_tipo_producto() {
        return cat_nombre_tipo_producto;
    }

    public void setCat_nombre_tipo_producto(String cat_nombre_tipo_producto) {
        this.cat_nombre_tipo_producto = cat_nombre_tipo_producto;
    }

    public float getCat_tiempoenhorno_tipo_producto() {
        return cat_tiempoenhorno_tipo_producto;
    }

    public void setCat_tiempoenhorno_tipo_producto(float cat_tiempoenhorno_tipo_producto) {
        this.cat_tiempoenhorno_tipo_producto = cat_tiempoenhorno_tipo_producto;
    }

    public float getCat_temperaturaenhorno_tipo_producto() {
        return cat_temperaturaenhorno_tipo_producto;
    }

    public void setCat_temperaturaenhorno_tipo_producto(float cat_temperaturaenhorno_tipo_producto) {
        this.cat_temperaturaenhorno_tipo_producto = cat_temperaturaenhorno_tipo_producto;
    }

    public float getCat_valor_neto() {
        return cat_valor_neto;
    }

    public void setCat_valor_neto(float cat_valor_neto) {
        this.cat_valor_neto = cat_valor_neto;
    }

    public float getCat_valor_con_igv() {
        return cat_valor_con_igv;
    }

    public void setCat_valor_con_igv(float cat_valor_con_igv) {
        this.cat_valor_con_igv = cat_valor_con_igv;
    }

    public byte[] getCat_foto_producto() {
        return cat_foto_producto;
    }

    public void setCat_foto_producto(byte[] cat_foto_producto) {
        this.cat_foto_producto = cat_foto_producto;
    }

    public String getCat_preparacion_producto() {
        return cat_preparacion_producto;
    }

    public void setCat_preparacion_producto(String cat_preparacion_producto) {
        this.cat_preparacion_producto = cat_preparacion_producto;
    }

    public String getCat_colores_producto() {
        return cat_colores_producto;
    }

    public void setCat_colores_producto(String cat_colores_producto) {
        this.cat_colores_producto = cat_colores_producto;
    }

    public String getCat_nombre_insumo() {
        return cat_nombre_insumo;
    }

    public void setCat_nombre_insumo(String cat_nombre_insumo) {
        this.cat_nombre_insumo = cat_nombre_insumo;
    }

    public String getCat_modelo_receta_producto() {
        return cat_modelo_receta_producto;
    }

    public void setCat_modelo_receta_producto(String cat_modelo_receta_producto) {
        this.cat_modelo_receta_producto = cat_modelo_receta_producto;
    }

    public int getCantidadMasPedido() {
        return cantidadMasPedido;
    }

    public void setCantidadMasPedido(int cantidadMasPedido) {
        this.cantidadMasPedido = cantidadMasPedido;
    }

    public float getPromedioTotalProd() {
        return promedioTotalProd;
    }

    public void setPromedioTotalProd(float promedioTotalProd) {
        this.promedioTotalProd = promedioTotalProd;
    }

    public int getFkcodigo_estadoCatalogo() {
        return fkcodigo_estadoCatalogo;
    }

    public void setFkcodigo_estadoCatalogo(int fkcodigo_estadoCatalogo) {
        this.fkcodigo_estadoCatalogo = fkcodigo_estadoCatalogo;
    }

    public Date getVersion() {
        return version;
    }

    public void setVersion(Date version) {
        this.version = version;
    }

    public int getCodigo_estadoCatalogo() {
        return codigo_estadoCatalogo;
    }

    public void setCodigo_estadoCatalogo(int codigo_estadoCatalogo) {
        this.codigo_estadoCatalogo = codigo_estadoCatalogo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getListaCatalogo() {
        return listaCatalogo;
    }

    public void setListaCatalogo(String listaCatalogo) {
        this.listaCatalogo = listaCatalogo;
    }
    
    
}
