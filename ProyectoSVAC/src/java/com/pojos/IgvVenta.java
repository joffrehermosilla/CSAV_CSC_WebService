package com.pojos;
// Generated Apr 27, 2018 1:46:45 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * IgvVenta generated by hbm2java
 */
public class IgvVenta  implements java.io.Serializable {


     private Integer codigoIgvVenta;
     private TipoImpuesto tipoImpuesto;
     private Float porcentajeIgvVenta;
     private Set<ClienteTienePedido> clienteTienePedidos = new HashSet<ClienteTienePedido>(0);

    public IgvVenta() {
    }

    public IgvVenta(TipoImpuesto tipoImpuesto, Float porcentajeIgvVenta, Set<ClienteTienePedido> clienteTienePedidos) {
       this.tipoImpuesto = tipoImpuesto;
       this.porcentajeIgvVenta = porcentajeIgvVenta;
       this.clienteTienePedidos = clienteTienePedidos;
    }
   
    public Integer getCodigoIgvVenta() {
        return this.codigoIgvVenta;
    }
    
    public void setCodigoIgvVenta(Integer codigoIgvVenta) {
        this.codigoIgvVenta = codigoIgvVenta;
    }
    public TipoImpuesto getTipoImpuesto() {
        return this.tipoImpuesto;
    }
    
    public void setTipoImpuesto(TipoImpuesto tipoImpuesto) {
        this.tipoImpuesto = tipoImpuesto;
    }
    public Float getPorcentajeIgvVenta() {
        return this.porcentajeIgvVenta;
    }
    
    public void setPorcentajeIgvVenta(Float porcentajeIgvVenta) {
        this.porcentajeIgvVenta = porcentajeIgvVenta;
    }
    public Set<ClienteTienePedido> getClienteTienePedidos() {
        return this.clienteTienePedidos;
    }
    
    public void setClienteTienePedidos(Set<ClienteTienePedido> clienteTienePedidos) {
        this.clienteTienePedidos = clienteTienePedidos;
    }




}


