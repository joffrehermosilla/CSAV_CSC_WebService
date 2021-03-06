package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AuditoriaCuota generated by hbm2java
 */
public class AuditoriaCuota  implements java.io.Serializable {


     private Integer codigoAuditoriaCuota;
     private String usuario;
     private Date fechaCambio;
     private Float montoCuotaOld;
     private Integer fkCodigoMesOld;
     private Integer fkCodigoProductoOld;
     private Date versionOld;
     private Float montoCuotaNew;
     private Integer fkCodigoMesNew;
     private Integer fkCodigoProductoNew;
     private Date versionNew;

    public AuditoriaCuota() {
    }

	
    public AuditoriaCuota(String usuario, Date fechaCambio) {
        this.usuario = usuario;
        this.fechaCambio = fechaCambio;
    }
    public AuditoriaCuota(String usuario, Date fechaCambio, Float montoCuotaOld, Integer fkCodigoMesOld, Integer fkCodigoProductoOld, Date versionOld, Float montoCuotaNew, Integer fkCodigoMesNew, Integer fkCodigoProductoNew, Date versionNew) {
       this.usuario = usuario;
       this.fechaCambio = fechaCambio;
       this.montoCuotaOld = montoCuotaOld;
       this.fkCodigoMesOld = fkCodigoMesOld;
       this.fkCodigoProductoOld = fkCodigoProductoOld;
       this.versionOld = versionOld;
       this.montoCuotaNew = montoCuotaNew;
       this.fkCodigoMesNew = fkCodigoMesNew;
       this.fkCodigoProductoNew = fkCodigoProductoNew;
       this.versionNew = versionNew;
    }
   
    public Integer getCodigoAuditoriaCuota() {
        return this.codigoAuditoriaCuota;
    }
    
    public void setCodigoAuditoriaCuota(Integer codigoAuditoriaCuota) {
        this.codigoAuditoriaCuota = codigoAuditoriaCuota;
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
    public Float getMontoCuotaOld() {
        return this.montoCuotaOld;
    }
    
    public void setMontoCuotaOld(Float montoCuotaOld) {
        this.montoCuotaOld = montoCuotaOld;
    }
    public Integer getFkCodigoMesOld() {
        return this.fkCodigoMesOld;
    }
    
    public void setFkCodigoMesOld(Integer fkCodigoMesOld) {
        this.fkCodigoMesOld = fkCodigoMesOld;
    }
    public Integer getFkCodigoProductoOld() {
        return this.fkCodigoProductoOld;
    }
    
    public void setFkCodigoProductoOld(Integer fkCodigoProductoOld) {
        this.fkCodigoProductoOld = fkCodigoProductoOld;
    }
    public Date getVersionOld() {
        return this.versionOld;
    }
    
    public void setVersionOld(Date versionOld) {
        this.versionOld = versionOld;
    }
    public Float getMontoCuotaNew() {
        return this.montoCuotaNew;
    }
    
    public void setMontoCuotaNew(Float montoCuotaNew) {
        this.montoCuotaNew = montoCuotaNew;
    }
    public Integer getFkCodigoMesNew() {
        return this.fkCodigoMesNew;
    }
    
    public void setFkCodigoMesNew(Integer fkCodigoMesNew) {
        this.fkCodigoMesNew = fkCodigoMesNew;
    }
    public Integer getFkCodigoProductoNew() {
        return this.fkCodigoProductoNew;
    }
    
    public void setFkCodigoProductoNew(Integer fkCodigoProductoNew) {
        this.fkCodigoProductoNew = fkCodigoProductoNew;
    }
    public Date getVersionNew() {
        return this.versionNew;
    }
    
    public void setVersionNew(Date versionNew) {
        this.versionNew = versionNew;
    }




}


