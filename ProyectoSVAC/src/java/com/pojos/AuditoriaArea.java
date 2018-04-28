package com.pojos;
// Generated Apr 27, 2018 1:46:45 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AuditoriaArea generated by hbm2java
 */
public class AuditoriaArea  implements java.io.Serializable {


     private Integer codigoAudiArea;
     private String usuario;
     private Date fechaCambio;
     private String nombreAreaOld;
     private String nombreAreaNew;

    public AuditoriaArea() {
    }

	
    public AuditoriaArea(String usuario, Date fechaCambio) {
        this.usuario = usuario;
        this.fechaCambio = fechaCambio;
    }
    public AuditoriaArea(String usuario, Date fechaCambio, String nombreAreaOld, String nombreAreaNew) {
       this.usuario = usuario;
       this.fechaCambio = fechaCambio;
       this.nombreAreaOld = nombreAreaOld;
       this.nombreAreaNew = nombreAreaNew;
    }
   
    public Integer getCodigoAudiArea() {
        return this.codigoAudiArea;
    }
    
    public void setCodigoAudiArea(Integer codigoAudiArea) {
        this.codigoAudiArea = codigoAudiArea;
    }
    public String getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    public Date getFechaCambio() {
        return this.fechaCambio;
    }
    
    public void setFechaCambio(Date fechaCambio) {
        this.fechaCambio = fechaCambio;
    }
    public String getNombreAreaOld() {
        return this.nombreAreaOld;
    }
    
    public void setNombreAreaOld(String nombreAreaOld) {
        this.nombreAreaOld = nombreAreaOld;
    }
    public String getNombreAreaNew() {
        return this.nombreAreaNew;
    }
    
    public void setNombreAreaNew(String nombreAreaNew) {
        this.nombreAreaNew = nombreAreaNew;
    }




}


