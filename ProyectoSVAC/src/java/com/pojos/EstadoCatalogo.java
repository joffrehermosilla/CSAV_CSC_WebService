package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * EstadoCatalogo generated by hbm2java
 */
public class EstadoCatalogo  implements java.io.Serializable {


     private Integer codigoEstadoCatalogo;
     private Date version;
     private String descripcion;
     private Set<Catalogo> catalogos = new HashSet<Catalogo>(0);

    public EstadoCatalogo() {
    }

    public EstadoCatalogo(String descripcion, Set<Catalogo> catalogos) {
       this.descripcion = descripcion;
       this.catalogos = catalogos;
    }
   
    public Integer getCodigoEstadoCatalogo() {
        return this.codigoEstadoCatalogo;
    }
    
    public void setCodigoEstadoCatalogo(Integer codigoEstadoCatalogo) {
        this.codigoEstadoCatalogo = codigoEstadoCatalogo;
    }
    public Date getVersion() {
        return this.version;
    }
    
    public void setVersion(Date version) {
        this.version = version;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public Set<Catalogo> getCatalogos() {
        return this.catalogos;
    }
    
    public void setCatalogos(Set<Catalogo> catalogos) {
        this.catalogos = catalogos;
    }




}


