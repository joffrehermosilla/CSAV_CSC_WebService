package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AudiClienteTienePedido generated by hbm2java
 */
public class AudiClienteTienePedido  implements java.io.Serializable {


     private Integer codigoAudiClienteTienePedido;
     private String usuario;
     private Date fechaCambio;
     private Integer fkcodigoClienteOld;
     private Integer fkcodigoVendedorOld;
     private Integer fkcodigoIgvVentaOld;
     private Integer fkcodigoPromocionVentaOld;
     private Integer fkcodigoEstadoClienteTienePedidoOld;
     private Integer fkcodigoFacturaClienteTienePedidoOld;
     private Float descuentoWebPedidoOld;
     private Float precioUniDescIgvOld;
     private Float precioUniDescSinIgvOld;
     private Date fechaPedidoOld;
     private Date fechaEntregaOld;
     private Integer cantidadProductoOld;
     private Float montoPorDescuentosOld;
     private Date versionOld;
     private Integer fkcodigoClienteNew;
     private Integer fkcodigoVendedorNew;
     private Integer fkcodigoIgvVentaNew;
     private Integer fkcodigoPromocionVentaNew;
     private Integer fkcodigoEstadoClienteTienePedidoNew;
     private Integer fkcodigoFacturaClienteTienePedidoNew;
     private Float descuentoWebPedidoNew;
     private Float precioUniDescIgvNew;
     private Float precioUniDescSinIgvNew;
     private Date fechaPedidoNew;
     private Date fechaEntregaNew;
     private Integer cantidadProductoNew;
     private Float montoPorDescuentosNew;
     private Date versionNew;

    public AudiClienteTienePedido() {
    }

	
    public AudiClienteTienePedido(String usuario, Date fechaCambio) {
        this.usuario = usuario;
        this.fechaCambio = fechaCambio;
    }
    public AudiClienteTienePedido(String usuario, Date fechaCambio, Integer fkcodigoClienteOld, Integer fkcodigoVendedorOld, Integer fkcodigoIgvVentaOld, Integer fkcodigoPromocionVentaOld, Integer fkcodigoEstadoClienteTienePedidoOld, Integer fkcodigoFacturaClienteTienePedidoOld, Float descuentoWebPedidoOld, Float precioUniDescIgvOld, Float precioUniDescSinIgvOld, Date fechaPedidoOld, Date fechaEntregaOld, Integer cantidadProductoOld, Float montoPorDescuentosOld, Date versionOld, Integer fkcodigoClienteNew, Integer fkcodigoVendedorNew, Integer fkcodigoIgvVentaNew, Integer fkcodigoPromocionVentaNew, Integer fkcodigoEstadoClienteTienePedidoNew, Integer fkcodigoFacturaClienteTienePedidoNew, Float descuentoWebPedidoNew, Float precioUniDescIgvNew, Float precioUniDescSinIgvNew, Date fechaPedidoNew, Date fechaEntregaNew, Integer cantidadProductoNew, Float montoPorDescuentosNew, Date versionNew) {
       this.usuario = usuario;
       this.fechaCambio = fechaCambio;
       this.fkcodigoClienteOld = fkcodigoClienteOld;
       this.fkcodigoVendedorOld = fkcodigoVendedorOld;
       this.fkcodigoIgvVentaOld = fkcodigoIgvVentaOld;
       this.fkcodigoPromocionVentaOld = fkcodigoPromocionVentaOld;
       this.fkcodigoEstadoClienteTienePedidoOld = fkcodigoEstadoClienteTienePedidoOld;
       this.fkcodigoFacturaClienteTienePedidoOld = fkcodigoFacturaClienteTienePedidoOld;
       this.descuentoWebPedidoOld = descuentoWebPedidoOld;
       this.precioUniDescIgvOld = precioUniDescIgvOld;
       this.precioUniDescSinIgvOld = precioUniDescSinIgvOld;
       this.fechaPedidoOld = fechaPedidoOld;
       this.fechaEntregaOld = fechaEntregaOld;
       this.cantidadProductoOld = cantidadProductoOld;
       this.montoPorDescuentosOld = montoPorDescuentosOld;
       this.versionOld = versionOld;
       this.fkcodigoClienteNew = fkcodigoClienteNew;
       this.fkcodigoVendedorNew = fkcodigoVendedorNew;
       this.fkcodigoIgvVentaNew = fkcodigoIgvVentaNew;
       this.fkcodigoPromocionVentaNew = fkcodigoPromocionVentaNew;
       this.fkcodigoEstadoClienteTienePedidoNew = fkcodigoEstadoClienteTienePedidoNew;
       this.fkcodigoFacturaClienteTienePedidoNew = fkcodigoFacturaClienteTienePedidoNew;
       this.descuentoWebPedidoNew = descuentoWebPedidoNew;
       this.precioUniDescIgvNew = precioUniDescIgvNew;
       this.precioUniDescSinIgvNew = precioUniDescSinIgvNew;
       this.fechaPedidoNew = fechaPedidoNew;
       this.fechaEntregaNew = fechaEntregaNew;
       this.cantidadProductoNew = cantidadProductoNew;
       this.montoPorDescuentosNew = montoPorDescuentosNew;
       this.versionNew = versionNew;
    }
   
    public Integer getCodigoAudiClienteTienePedido() {
        return this.codigoAudiClienteTienePedido;
    }
    
    public void setCodigoAudiClienteTienePedido(Integer codigoAudiClienteTienePedido) {
        this.codigoAudiClienteTienePedido = codigoAudiClienteTienePedido;
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
    public Integer getFkcodigoClienteOld() {
        return this.fkcodigoClienteOld;
    }
    
    public void setFkcodigoClienteOld(Integer fkcodigoClienteOld) {
        this.fkcodigoClienteOld = fkcodigoClienteOld;
    }
    public Integer getFkcodigoVendedorOld() {
        return this.fkcodigoVendedorOld;
    }
    
    public void setFkcodigoVendedorOld(Integer fkcodigoVendedorOld) {
        this.fkcodigoVendedorOld = fkcodigoVendedorOld;
    }
    public Integer getFkcodigoIgvVentaOld() {
        return this.fkcodigoIgvVentaOld;
    }
    
    public void setFkcodigoIgvVentaOld(Integer fkcodigoIgvVentaOld) {
        this.fkcodigoIgvVentaOld = fkcodigoIgvVentaOld;
    }
    public Integer getFkcodigoPromocionVentaOld() {
        return this.fkcodigoPromocionVentaOld;
    }
    
    public void setFkcodigoPromocionVentaOld(Integer fkcodigoPromocionVentaOld) {
        this.fkcodigoPromocionVentaOld = fkcodigoPromocionVentaOld;
    }
    public Integer getFkcodigoEstadoClienteTienePedidoOld() {
        return this.fkcodigoEstadoClienteTienePedidoOld;
    }
    
    public void setFkcodigoEstadoClienteTienePedidoOld(Integer fkcodigoEstadoClienteTienePedidoOld) {
        this.fkcodigoEstadoClienteTienePedidoOld = fkcodigoEstadoClienteTienePedidoOld;
    }
    public Integer getFkcodigoFacturaClienteTienePedidoOld() {
        return this.fkcodigoFacturaClienteTienePedidoOld;
    }
    
    public void setFkcodigoFacturaClienteTienePedidoOld(Integer fkcodigoFacturaClienteTienePedidoOld) {
        this.fkcodigoFacturaClienteTienePedidoOld = fkcodigoFacturaClienteTienePedidoOld;
    }
    public Float getDescuentoWebPedidoOld() {
        return this.descuentoWebPedidoOld;
    }
    
    public void setDescuentoWebPedidoOld(Float descuentoWebPedidoOld) {
        this.descuentoWebPedidoOld = descuentoWebPedidoOld;
    }
    public Float getPrecioUniDescIgvOld() {
        return this.precioUniDescIgvOld;
    }
    
    public void setPrecioUniDescIgvOld(Float precioUniDescIgvOld) {
        this.precioUniDescIgvOld = precioUniDescIgvOld;
    }
    public Float getPrecioUniDescSinIgvOld() {
        return this.precioUniDescSinIgvOld;
    }
    
    public void setPrecioUniDescSinIgvOld(Float precioUniDescSinIgvOld) {
        this.precioUniDescSinIgvOld = precioUniDescSinIgvOld;
    }
    public Date getFechaPedidoOld() {
        return this.fechaPedidoOld;
    }
    
    public void setFechaPedidoOld(Date fechaPedidoOld) {
        this.fechaPedidoOld = fechaPedidoOld;
    }
    public Date getFechaEntregaOld() {
        return this.fechaEntregaOld;
    }
    
    public void setFechaEntregaOld(Date fechaEntregaOld) {
        this.fechaEntregaOld = fechaEntregaOld;
    }
    public Integer getCantidadProductoOld() {
        return this.cantidadProductoOld;
    }
    
    public void setCantidadProductoOld(Integer cantidadProductoOld) {
        this.cantidadProductoOld = cantidadProductoOld;
    }
    public Float getMontoPorDescuentosOld() {
        return this.montoPorDescuentosOld;
    }
    
    public void setMontoPorDescuentosOld(Float montoPorDescuentosOld) {
        this.montoPorDescuentosOld = montoPorDescuentosOld;
    }
    public Date getVersionOld() {
        return this.versionOld;
    }
    
    public void setVersionOld(Date versionOld) {
        this.versionOld = versionOld;
    }
    public Integer getFkcodigoClienteNew() {
        return this.fkcodigoClienteNew;
    }
    
    public void setFkcodigoClienteNew(Integer fkcodigoClienteNew) {
        this.fkcodigoClienteNew = fkcodigoClienteNew;
    }
    public Integer getFkcodigoVendedorNew() {
        return this.fkcodigoVendedorNew;
    }
    
    public void setFkcodigoVendedorNew(Integer fkcodigoVendedorNew) {
        this.fkcodigoVendedorNew = fkcodigoVendedorNew;
    }
    public Integer getFkcodigoIgvVentaNew() {
        return this.fkcodigoIgvVentaNew;
    }
    
    public void setFkcodigoIgvVentaNew(Integer fkcodigoIgvVentaNew) {
        this.fkcodigoIgvVentaNew = fkcodigoIgvVentaNew;
    }
    public Integer getFkcodigoPromocionVentaNew() {
        return this.fkcodigoPromocionVentaNew;
    }
    
    public void setFkcodigoPromocionVentaNew(Integer fkcodigoPromocionVentaNew) {
        this.fkcodigoPromocionVentaNew = fkcodigoPromocionVentaNew;
    }
    public Integer getFkcodigoEstadoClienteTienePedidoNew() {
        return this.fkcodigoEstadoClienteTienePedidoNew;
    }
    
    public void setFkcodigoEstadoClienteTienePedidoNew(Integer fkcodigoEstadoClienteTienePedidoNew) {
        this.fkcodigoEstadoClienteTienePedidoNew = fkcodigoEstadoClienteTienePedidoNew;
    }
    public Integer getFkcodigoFacturaClienteTienePedidoNew() {
        return this.fkcodigoFacturaClienteTienePedidoNew;
    }
    
    public void setFkcodigoFacturaClienteTienePedidoNew(Integer fkcodigoFacturaClienteTienePedidoNew) {
        this.fkcodigoFacturaClienteTienePedidoNew = fkcodigoFacturaClienteTienePedidoNew;
    }
    public Float getDescuentoWebPedidoNew() {
        return this.descuentoWebPedidoNew;
    }
    
    public void setDescuentoWebPedidoNew(Float descuentoWebPedidoNew) {
        this.descuentoWebPedidoNew = descuentoWebPedidoNew;
    }
    public Float getPrecioUniDescIgvNew() {
        return this.precioUniDescIgvNew;
    }
    
    public void setPrecioUniDescIgvNew(Float precioUniDescIgvNew) {
        this.precioUniDescIgvNew = precioUniDescIgvNew;
    }
    public Float getPrecioUniDescSinIgvNew() {
        return this.precioUniDescSinIgvNew;
    }
    
    public void setPrecioUniDescSinIgvNew(Float precioUniDescSinIgvNew) {
        this.precioUniDescSinIgvNew = precioUniDescSinIgvNew;
    }
    public Date getFechaPedidoNew() {
        return this.fechaPedidoNew;
    }
    
    public void setFechaPedidoNew(Date fechaPedidoNew) {
        this.fechaPedidoNew = fechaPedidoNew;
    }
    public Date getFechaEntregaNew() {
        return this.fechaEntregaNew;
    }
    
    public void setFechaEntregaNew(Date fechaEntregaNew) {
        this.fechaEntregaNew = fechaEntregaNew;
    }
    public Integer getCantidadProductoNew() {
        return this.cantidadProductoNew;
    }
    
    public void setCantidadProductoNew(Integer cantidadProductoNew) {
        this.cantidadProductoNew = cantidadProductoNew;
    }
    public Float getMontoPorDescuentosNew() {
        return this.montoPorDescuentosNew;
    }
    
    public void setMontoPorDescuentosNew(Float montoPorDescuentosNew) {
        this.montoPorDescuentosNew = montoPorDescuentosNew;
    }
    public Date getVersionNew() {
        return this.versionNew;
    }
    
    public void setVersionNew(Date versionNew) {
        this.versionNew = versionNew;
    }




}


