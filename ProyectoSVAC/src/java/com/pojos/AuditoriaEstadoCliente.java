package com.pojos;
// Generated Apr 27, 2018 1:46:45 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AuditoriaEstadoCliente generated by hbm2java
 */
public class AuditoriaEstadoCliente  implements java.io.Serializable {


     private Integer codigoAudiEstadoCliente;
     private String usuario;
     private Date fechaCambio;
     private String nombreEstadoClienteOld;
     private String nombreEstadoClienteNew;

    public AuditoriaEstadoCliente() {
    }

	
    public AuditoriaEstadoCliente(String usuario, Date fechaCambio) {
        this.usuario = usuario;
        this.fechaCambio = fechaCambio;
    }
    public AuditoriaEstadoCliente(String usuario, Date fechaCambio, String nombreEstadoClienteOld, String nombreEstadoClienteNew) {
       this.usuario = usuario;
       this.fechaCambio = fechaCambio;
       this.nombreEstadoClienteOld = nombreEstadoClienteOld;
       this.nombreEstadoClienteNew = nombreEstadoClienteNew;
    }
   
    public Integer getCodigoAudiEstadoCliente() {
        return this.codigoAudiEstadoCliente;
    }
    
    public void setCodigoAudiEstadoCliente(Integer codigoAudiEstadoCliente) {
        this.codigoAudiEstadoCliente = codigoAudiEstadoCliente;
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
    public String getNombreEstadoClienteOld() {
        return this.nombreEstadoClienteOld;
    }
    
    public void setNombreEstadoClienteOld(String nombreEstadoClienteOld) {
        this.nombreEstadoClienteOld = nombreEstadoClienteOld;
    }
    public String getNombreEstadoClienteNew() {
        return this.nombreEstadoClienteNew;
    }
    
    public void setNombreEstadoClienteNew(String nombreEstadoClienteNew) {
        this.nombreEstadoClienteNew = nombreEstadoClienteNew;
    }




}


