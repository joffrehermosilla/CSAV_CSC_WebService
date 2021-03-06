package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AudiIgvVenta generated by hbm2java
 */
public class AudiIgvVenta  implements java.io.Serializable {


     private Integer codigoAudiIgvVenta;
     private String usuario;
     private Date fechaCambio;
     private Integer fkcodigoTipoImpuestoOld;
     private Float porcentajeIgvVentaOld;
     private Date versionOld;
     private Integer fkcodigoTipoImpuestoNew;
     private Float porcentajeIgvVentaNew;
     private Date versionNew;

    public AudiIgvVenta() {
    }

	
    public AudiIgvVenta(String usuario, Date fechaCambio) {
        this.usuario = usuario;
        this.fechaCambio = fechaCambio;
    }
    public AudiIgvVenta(String usuario, Date fechaCambio, Integer fkcodigoTipoImpuestoOld, Float porcentajeIgvVentaOld, Date versionOld, Integer fkcodigoTipoImpuestoNew, Float porcentajeIgvVentaNew, Date versionNew) {
       this.usuario = usuario;
       this.fechaCambio = fechaCambio;
       this.fkcodigoTipoImpuestoOld = fkcodigoTipoImpuestoOld;
       this.porcentajeIgvVentaOld = porcentajeIgvVentaOld;
       this.versionOld = versionOld;
       this.fkcodigoTipoImpuestoNew = fkcodigoTipoImpuestoNew;
       this.porcentajeIgvVentaNew = porcentajeIgvVentaNew;
       this.versionNew = versionNew;
    }
   
    public Integer getCodigoAudiIgvVenta() {
        return this.codigoAudiIgvVenta;
    }
    
    public void setCodigoAudiIgvVenta(Integer codigoAudiIgvVenta) {
        this.codigoAudiIgvVenta = codigoAudiIgvVenta;
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
    public Integer getFkcodigoTipoImpuestoOld() {
        return this.fkcodigoTipoImpuestoOld;
    }
    
    public void setFkcodigoTipoImpuestoOld(Integer fkcodigoTipoImpuestoOld) {
        this.fkcodigoTipoImpuestoOld = fkcodigoTipoImpuestoOld;
    }
    public Float getPorcentajeIgvVentaOld() {
        return this.porcentajeIgvVentaOld;
    }
    
    public void setPorcentajeIgvVentaOld(Float porcentajeIgvVentaOld) {
        this.porcentajeIgvVentaOld = porcentajeIgvVentaOld;
    }
    public Date getVersionOld() {
        return this.versionOld;
    }
    
    public void setVersionOld(Date versionOld) {
        this.versionOld = versionOld;
    }
    public Integer getFkcodigoTipoImpuestoNew() {
        return this.fkcodigoTipoImpuestoNew;
    }
    
    public void setFkcodigoTipoImpuestoNew(Integer fkcodigoTipoImpuestoNew) {
        this.fkcodigoTipoImpuestoNew = fkcodigoTipoImpuestoNew;
    }
    public Float getPorcentajeIgvVentaNew() {
        return this.porcentajeIgvVentaNew;
    }
    
    public void setPorcentajeIgvVentaNew(Float porcentajeIgvVentaNew) {
        this.porcentajeIgvVentaNew = porcentajeIgvVentaNew;
    }
    public Date getVersionNew() {
        return this.versionNew;
    }
    
    public void setVersionNew(Date versionNew) {
        this.versionNew = versionNew;
    }




}


