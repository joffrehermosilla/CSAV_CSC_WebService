package com.pojos;
// Generated Apr 27, 2018 1:46:45 PM by Hibernate Tools 4.3.1



/**
 * AudiProductoPorPedido generated by hbm2java
 */
public class AudiProductoPorPedido  implements java.io.Serializable {


     private Integer codigoAudiProductoPorPedido;
     private Integer fkcodigoPedidoWebOld;
     private Integer fkcodigoProductoOld;
     private Float descuentoPromocionOld;
     private Float valorNetoOld;
     private Float valorConIgvOld;
     private Integer cantidadProductoOld;
     private Integer fkcodigoPedidoWebNew;
     private Integer fkcodigoProductoNew;
     private Float descuentoPromocionNew;
     private Float valorNetoNew;
     private Float valorConIgvNew;
     private Integer cantidadProductoNew;

    public AudiProductoPorPedido() {
    }

    public AudiProductoPorPedido(Integer fkcodigoPedidoWebOld, Integer fkcodigoProductoOld, Float descuentoPromocionOld, Float valorNetoOld, Float valorConIgvOld, Integer cantidadProductoOld, Integer fkcodigoPedidoWebNew, Integer fkcodigoProductoNew, Float descuentoPromocionNew, Float valorNetoNew, Float valorConIgvNew, Integer cantidadProductoNew) {
       this.fkcodigoPedidoWebOld = fkcodigoPedidoWebOld;
       this.fkcodigoProductoOld = fkcodigoProductoOld;
       this.descuentoPromocionOld = descuentoPromocionOld;
       this.valorNetoOld = valorNetoOld;
       this.valorConIgvOld = valorConIgvOld;
       this.cantidadProductoOld = cantidadProductoOld;
       this.fkcodigoPedidoWebNew = fkcodigoPedidoWebNew;
       this.fkcodigoProductoNew = fkcodigoProductoNew;
       this.descuentoPromocionNew = descuentoPromocionNew;
       this.valorNetoNew = valorNetoNew;
       this.valorConIgvNew = valorConIgvNew;
       this.cantidadProductoNew = cantidadProductoNew;
    }
   
    public Integer getCodigoAudiProductoPorPedido() {
        return this.codigoAudiProductoPorPedido;
    }
    
    public void setCodigoAudiProductoPorPedido(Integer codigoAudiProductoPorPedido) {
        this.codigoAudiProductoPorPedido = codigoAudiProductoPorPedido;
    }
    public Integer getFkcodigoPedidoWebOld() {
        return this.fkcodigoPedidoWebOld;
    }
    
    public void setFkcodigoPedidoWebOld(Integer fkcodigoPedidoWebOld) {
        this.fkcodigoPedidoWebOld = fkcodigoPedidoWebOld;
    }
    public Integer getFkcodigoProductoOld() {
        return this.fkcodigoProductoOld;
    }
    
    public void setFkcodigoProductoOld(Integer fkcodigoProductoOld) {
        this.fkcodigoProductoOld = fkcodigoProductoOld;
    }
    public Float getDescuentoPromocionOld() {
        return this.descuentoPromocionOld;
    }
    
    public void setDescuentoPromocionOld(Float descuentoPromocionOld) {
        this.descuentoPromocionOld = descuentoPromocionOld;
    }
    public Float getValorNetoOld() {
        return this.valorNetoOld;
    }
    
    public void setValorNetoOld(Float valorNetoOld) {
        this.valorNetoOld = valorNetoOld;
    }
    public Float getValorConIgvOld() {
        return this.valorConIgvOld;
    }
    
    public void setValorConIgvOld(Float valorConIgvOld) {
        this.valorConIgvOld = valorConIgvOld;
    }
    public Integer getCantidadProductoOld() {
        return this.cantidadProductoOld;
    }
    
    public void setCantidadProductoOld(Integer cantidadProductoOld) {
        this.cantidadProductoOld = cantidadProductoOld;
    }
    public Integer getFkcodigoPedidoWebNew() {
        return this.fkcodigoPedidoWebNew;
    }
    
    public void setFkcodigoPedidoWebNew(Integer fkcodigoPedidoWebNew) {
        this.fkcodigoPedidoWebNew = fkcodigoPedidoWebNew;
    }
    public Integer getFkcodigoProductoNew() {
        return this.fkcodigoProductoNew;
    }
    
    public void setFkcodigoProductoNew(Integer fkcodigoProductoNew) {
        this.fkcodigoProductoNew = fkcodigoProductoNew;
    }
    public Float getDescuentoPromocionNew() {
        return this.descuentoPromocionNew;
    }
    
    public void setDescuentoPromocionNew(Float descuentoPromocionNew) {
        this.descuentoPromocionNew = descuentoPromocionNew;
    }
    public Float getValorNetoNew() {
        return this.valorNetoNew;
    }
    
    public void setValorNetoNew(Float valorNetoNew) {
        this.valorNetoNew = valorNetoNew;
    }
    public Float getValorConIgvNew() {
        return this.valorConIgvNew;
    }
    
    public void setValorConIgvNew(Float valorConIgvNew) {
        this.valorConIgvNew = valorConIgvNew;
    }
    public Integer getCantidadProductoNew() {
        return this.cantidadProductoNew;
    }
    
    public void setCantidadProductoNew(Integer cantidadProductoNew) {
        this.cantidadProductoNew = cantidadProductoNew;
    }




}

