package DTO;

public class TipoProductoDTO {
    
    int codigo_tipo_producto;
    String nombre_tipo_producto;
    float tiempoenhorno_tipo_producto;
    float temperaturaenhorno_tipo_producto;
    Byte[] foto_tipo_producto;

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

    public Byte[] getFoto_tipo_producto() {
        return foto_tipo_producto;
    }

    public void setFoto_tipo_producto(Byte[] foto_tipo_producto) {
        this.foto_tipo_producto = foto_tipo_producto;
    }
    
    
    
}
