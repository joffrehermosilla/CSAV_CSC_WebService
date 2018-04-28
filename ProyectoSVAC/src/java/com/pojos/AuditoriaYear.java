package com.pojos;
// Generated Apr 27, 2018 1:46:45 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AuditoriaYear generated by hbm2java
 */
public class AuditoriaYear  implements java.io.Serializable {


     private Integer codigoAuditoriaYear;
     private String usuario;
     private Date fechaCambio;
     private String nombreYearOld;
     private String nombreYearNew;

    public AuditoriaYear() {
    }

	
    public AuditoriaYear(String usuario, Date fechaCambio) {
        this.usuario = usuario;
        this.fechaCambio = fechaCambio;
    }
    public AuditoriaYear(String usuario, Date fechaCambio, String nombreYearOld, String nombreYearNew) {
       this.usuario = usuario;
       this.fechaCambio = fechaCambio;
       this.nombreYearOld = nombreYearOld;
       this.nombreYearNew = nombreYearNew;
    }
   
    public Integer getCodigoAuditoriaYear() {
        return this.codigoAuditoriaYear;
    }
    
    public void setCodigoAuditoriaYear(Integer codigoAuditoriaYear) {
        this.codigoAuditoriaYear = codigoAuditoriaYear;
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
    public String getNombreYearOld() {
        return this.nombreYearOld;
    }
    
    public void setNombreYearOld(String nombreYearOld) {
        this.nombreYearOld = nombreYearOld;
    }
    public String getNombreYearNew() {
        return this.nombreYearNew;
    }
    
    public void setNombreYearNew(String nombreYearNew) {
        this.nombreYearNew = nombreYearNew;
    }




}


