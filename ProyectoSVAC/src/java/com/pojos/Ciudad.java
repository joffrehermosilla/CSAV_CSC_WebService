package com.pojos;
// Generated Apr 27, 2018 1:46:45 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Ciudad generated by hbm2java
 */
public class Ciudad  implements java.io.Serializable {


     private Integer codigoCiudad;
     private Provincia provincia;
     private String nombreCiudad;
     private Set<Distrito> distritos = new HashSet<Distrito>(0);

    public Ciudad() {
    }

    public Ciudad(Provincia provincia, String nombreCiudad, Set<Distrito> distritos) {
       this.provincia = provincia;
       this.nombreCiudad = nombreCiudad;
       this.distritos = distritos;
    }
   
    public Integer getCodigoCiudad() {
        return this.codigoCiudad;
    }
    
    public void setCodigoCiudad(Integer codigoCiudad) {
        this.codigoCiudad = codigoCiudad;
    }
    public Provincia getProvincia() {
        return this.provincia;
    }
    
    public void setProvincia(Provincia provincia) {
        this.provincia = provincia;
    }
    public String getNombreCiudad() {
        return this.nombreCiudad;
    }
    
    public void setNombreCiudad(String nombreCiudad) {
        this.nombreCiudad = nombreCiudad;
    }
    public Set<Distrito> getDistritos() {
        return this.distritos;
    }
    
    public void setDistritos(Set<Distrito> distritos) {
        this.distritos = distritos;
    }




}

