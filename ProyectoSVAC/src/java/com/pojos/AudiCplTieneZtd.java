package com.pojos;
// Generated Apr 27, 2018 1:46:45 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AudiCplTieneZtd generated by hbm2java
 */
public class AudiCplTieneZtd  implements java.io.Serializable {


     private Integer codigoAudiCplTieneZtd;
     private String usuario;
     private Date fechaCambio;
     private Integer fkcodigoCuotaPorLineaOld;
     private Integer fkcodigoZonaTieneDistritoOld;
     private Float cuotaAsignadaOld;
     private Float cuotaRealizadaOld;
     private Integer fkcodigoCuotaPorLineaNew;
     private Integer fkcodigoZonaTieneDistritoNew;
     private Float cuotaAsignadaNew;
     private Float cuotaRealizadaNew;

    public AudiCplTieneZtd() {
    }

	
    public AudiCplTieneZtd(String usuario, Date fechaCambio) {
        this.usuario = usuario;
        this.fechaCambio = fechaCambio;
    }
    public AudiCplTieneZtd(String usuario, Date fechaCambio, Integer fkcodigoCuotaPorLineaOld, Integer fkcodigoZonaTieneDistritoOld, Float cuotaAsignadaOld, Float cuotaRealizadaOld, Integer fkcodigoCuotaPorLineaNew, Integer fkcodigoZonaTieneDistritoNew, Float cuotaAsignadaNew, Float cuotaRealizadaNew) {
       this.usuario = usuario;
       this.fechaCambio = fechaCambio;
       this.fkcodigoCuotaPorLineaOld = fkcodigoCuotaPorLineaOld;
       this.fkcodigoZonaTieneDistritoOld = fkcodigoZonaTieneDistritoOld;
       this.cuotaAsignadaOld = cuotaAsignadaOld;
       this.cuotaRealizadaOld = cuotaRealizadaOld;
       this.fkcodigoCuotaPorLineaNew = fkcodigoCuotaPorLineaNew;
       this.fkcodigoZonaTieneDistritoNew = fkcodigoZonaTieneDistritoNew;
       this.cuotaAsignadaNew = cuotaAsignadaNew;
       this.cuotaRealizadaNew = cuotaRealizadaNew;
    }
   
    public Integer getCodigoAudiCplTieneZtd() {
        return this.codigoAudiCplTieneZtd;
    }
    
    public void setCodigoAudiCplTieneZtd(Integer codigoAudiCplTieneZtd) {
        this.codigoAudiCplTieneZtd = codigoAudiCplTieneZtd;
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
    public Integer getFkcodigoCuotaPorLineaOld() {
        return this.fkcodigoCuotaPorLineaOld;
    }
    
    public void setFkcodigoCuotaPorLineaOld(Integer fkcodigoCuotaPorLineaOld) {
        this.fkcodigoCuotaPorLineaOld = fkcodigoCuotaPorLineaOld;
    }
    public Integer getFkcodigoZonaTieneDistritoOld() {
        return this.fkcodigoZonaTieneDistritoOld;
    }
    
    public void setFkcodigoZonaTieneDistritoOld(Integer fkcodigoZonaTieneDistritoOld) {
        this.fkcodigoZonaTieneDistritoOld = fkcodigoZonaTieneDistritoOld;
    }
    public Float getCuotaAsignadaOld() {
        return this.cuotaAsignadaOld;
    }
    
    public void setCuotaAsignadaOld(Float cuotaAsignadaOld) {
        this.cuotaAsignadaOld = cuotaAsignadaOld;
    }
    public Float getCuotaRealizadaOld() {
        return this.cuotaRealizadaOld;
    }
    
    public void setCuotaRealizadaOld(Float cuotaRealizadaOld) {
        this.cuotaRealizadaOld = cuotaRealizadaOld;
    }
    public Integer getFkcodigoCuotaPorLineaNew() {
        return this.fkcodigoCuotaPorLineaNew;
    }
    
    public void setFkcodigoCuotaPorLineaNew(Integer fkcodigoCuotaPorLineaNew) {
        this.fkcodigoCuotaPorLineaNew = fkcodigoCuotaPorLineaNew;
    }
    public Integer getFkcodigoZonaTieneDistritoNew() {
        return this.fkcodigoZonaTieneDistritoNew;
    }
    
    public void setFkcodigoZonaTieneDistritoNew(Integer fkcodigoZonaTieneDistritoNew) {
        this.fkcodigoZonaTieneDistritoNew = fkcodigoZonaTieneDistritoNew;
    }
    public Float getCuotaAsignadaNew() {
        return this.cuotaAsignadaNew;
    }
    
    public void setCuotaAsignadaNew(Float cuotaAsignadaNew) {
        this.cuotaAsignadaNew = cuotaAsignadaNew;
    }
    public Float getCuotaRealizadaNew() {
        return this.cuotaRealizadaNew;
    }
    
    public void setCuotaRealizadaNew(Float cuotaRealizadaNew) {
        this.cuotaRealizadaNew = cuotaRealizadaNew;
    }




}

