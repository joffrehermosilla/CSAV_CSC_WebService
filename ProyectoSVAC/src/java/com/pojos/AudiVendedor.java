package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AudiVendedor generated by hbm2java
 */
public class AudiVendedor  implements java.io.Serializable {


     private Integer codigoAudiVendedor;
     private String usuario;
     private Date fechaCambio;
     private Integer fkcodigoUsuarioOld;
     private Integer fkcodigoAreaOld;
     private String codigoVentaVendedorOld;
     private Date versionOld;
     private Integer fkcodigoUsuarioNew;
     private Integer fkcodigoAreaNew;
     private String codigoVentaVendedorNew;
     private Date versionNew;

    public AudiVendedor() {
    }

	
    public AudiVendedor(String usuario, Date fechaCambio) {
        this.usuario = usuario;
        this.fechaCambio = fechaCambio;
    }
    public AudiVendedor(String usuario, Date fechaCambio, Integer fkcodigoUsuarioOld, Integer fkcodigoAreaOld, String codigoVentaVendedorOld, Date versionOld, Integer fkcodigoUsuarioNew, Integer fkcodigoAreaNew, String codigoVentaVendedorNew, Date versionNew) {
       this.usuario = usuario;
       this.fechaCambio = fechaCambio;
       this.fkcodigoUsuarioOld = fkcodigoUsuarioOld;
       this.fkcodigoAreaOld = fkcodigoAreaOld;
       this.codigoVentaVendedorOld = codigoVentaVendedorOld;
       this.versionOld = versionOld;
       this.fkcodigoUsuarioNew = fkcodigoUsuarioNew;
       this.fkcodigoAreaNew = fkcodigoAreaNew;
       this.codigoVentaVendedorNew = codigoVentaVendedorNew;
       this.versionNew = versionNew;
    }
   
    public Integer getCodigoAudiVendedor() {
        return this.codigoAudiVendedor;
    }
    
    public void setCodigoAudiVendedor(Integer codigoAudiVendedor) {
        this.codigoAudiVendedor = codigoAudiVendedor;
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
    public Integer getFkcodigoUsuarioOld() {
        return this.fkcodigoUsuarioOld;
    }
    
    public void setFkcodigoUsuarioOld(Integer fkcodigoUsuarioOld) {
        this.fkcodigoUsuarioOld = fkcodigoUsuarioOld;
    }
    public Integer getFkcodigoAreaOld() {
        return this.fkcodigoAreaOld;
    }
    
    public void setFkcodigoAreaOld(Integer fkcodigoAreaOld) {
        this.fkcodigoAreaOld = fkcodigoAreaOld;
    }
    public String getCodigoVentaVendedorOld() {
        return this.codigoVentaVendedorOld;
    }
    
    public void setCodigoVentaVendedorOld(String codigoVentaVendedorOld) {
        this.codigoVentaVendedorOld = codigoVentaVendedorOld;
    }
    public Date getVersionOld() {
        return this.versionOld;
    }
    
    public void setVersionOld(Date versionOld) {
        this.versionOld = versionOld;
    }
    public Integer getFkcodigoUsuarioNew() {
        return this.fkcodigoUsuarioNew;
    }
    
    public void setFkcodigoUsuarioNew(Integer fkcodigoUsuarioNew) {
        this.fkcodigoUsuarioNew = fkcodigoUsuarioNew;
    }
    public Integer getFkcodigoAreaNew() {
        return this.fkcodigoAreaNew;
    }
    
    public void setFkcodigoAreaNew(Integer fkcodigoAreaNew) {
        this.fkcodigoAreaNew = fkcodigoAreaNew;
    }
    public String getCodigoVentaVendedorNew() {
        return this.codigoVentaVendedorNew;
    }
    
    public void setCodigoVentaVendedorNew(String codigoVentaVendedorNew) {
        this.codigoVentaVendedorNew = codigoVentaVendedorNew;
    }
    public Date getVersionNew() {
        return this.versionNew;
    }
    
    public void setVersionNew(Date versionNew) {
        this.versionNew = versionNew;
    }




}


