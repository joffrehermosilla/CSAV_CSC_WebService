package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AudPresentacionInsumo generated by hbm2java
 */
public class AudPresentacionInsumo  implements java.io.Serializable {


     private Integer codigoAudiPresentacionInsumo;
     private String usuario;
     private Date fechaCambio;
     private String nombrePresentacionInsumoOld;
     private Date versionOld;
     private String nombrePresentacionInsumoNew;
     private Date versionNew;

    public AudPresentacionInsumo() {
    }

	
    public AudPresentacionInsumo(String usuario, Date fechaCambio) {
        this.usuario = usuario;
        this.fechaCambio = fechaCambio;
    }
    public AudPresentacionInsumo(String usuario, Date fechaCambio, String nombrePresentacionInsumoOld, Date versionOld, String nombrePresentacionInsumoNew, Date versionNew) {
       this.usuario = usuario;
       this.fechaCambio = fechaCambio;
       this.nombrePresentacionInsumoOld = nombrePresentacionInsumoOld;
       this.versionOld = versionOld;
       this.nombrePresentacionInsumoNew = nombrePresentacionInsumoNew;
       this.versionNew = versionNew;
    }
   
    public Integer getCodigoAudiPresentacionInsumo() {
        return this.codigoAudiPresentacionInsumo;
    }
    
    public void setCodigoAudiPresentacionInsumo(Integer codigoAudiPresentacionInsumo) {
        this.codigoAudiPresentacionInsumo = codigoAudiPresentacionInsumo;
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
    public String getNombrePresentacionInsumoOld() {
        return this.nombrePresentacionInsumoOld;
    }
    
    public void setNombrePresentacionInsumoOld(String nombrePresentacionInsumoOld) {
        this.nombrePresentacionInsumoOld = nombrePresentacionInsumoOld;
    }
    public Date getVersionOld() {
        return this.versionOld;
    }
    
    public void setVersionOld(Date versionOld) {
        this.versionOld = versionOld;
    }
    public String getNombrePresentacionInsumoNew() {
        return this.nombrePresentacionInsumoNew;
    }
    
    public void setNombrePresentacionInsumoNew(String nombrePresentacionInsumoNew) {
        this.nombrePresentacionInsumoNew = nombrePresentacionInsumoNew;
    }
    public Date getVersionNew() {
        return this.versionNew;
    }
    
    public void setVersionNew(Date versionNew) {
        this.versionNew = versionNew;
    }




}


