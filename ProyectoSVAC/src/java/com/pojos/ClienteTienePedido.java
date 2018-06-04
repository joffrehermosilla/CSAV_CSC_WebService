package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * ClienteTienePedido generated by hbm2java
 */
public class ClienteTienePedido  implements java.io.Serializable {


     private Integer codigoPedidoWeb;
     private Date version;
     private Cliente cliente;
     private EstadoClienteTienePedido estadoClienteTienePedido;
     private FacturaCTienePedido facturaCTienePedido;
     private IgvVenta igvVenta;
     private PromocionVenta promocionVenta;
     private Vendedor vendedor;
     private Float descuentoWebPedido;
     private Float precioUniDescIgv;
     private Float precioUniDescSinIgv;
     private Date fechaPedido;
     private Date fechaEntrega;
     private Integer cantidadProducto;
     private Float montoPorDescuentos;
     private Set<ProductoPorPedido> productoPorPedidos = new HashSet<ProductoPorPedido>(0);

    public ClienteTienePedido() {
    }

    public ClienteTienePedido(Cliente cliente, EstadoClienteTienePedido estadoClienteTienePedido, FacturaCTienePedido facturaCTienePedido, IgvVenta igvVenta, PromocionVenta promocionVenta, Vendedor vendedor, Float descuentoWebPedido, Float precioUniDescIgv, Float precioUniDescSinIgv, Date fechaPedido, Date fechaEntrega, Integer cantidadProducto, Float montoPorDescuentos, Set<ProductoPorPedido> productoPorPedidos) {
       this.cliente = cliente;
       this.estadoClienteTienePedido = estadoClienteTienePedido;
       this.facturaCTienePedido = facturaCTienePedido;
       this.igvVenta = igvVenta;
       this.promocionVenta = promocionVenta;
       this.vendedor = vendedor;
       this.descuentoWebPedido = descuentoWebPedido;
       this.precioUniDescIgv = precioUniDescIgv;
       this.precioUniDescSinIgv = precioUniDescSinIgv;
       this.fechaPedido = fechaPedido;
       this.fechaEntrega = fechaEntrega;
       this.cantidadProducto = cantidadProducto;
       this.montoPorDescuentos = montoPorDescuentos;
       this.productoPorPedidos = productoPorPedidos;
    }
   
    public Integer getCodigoPedidoWeb() {
        return this.codigoPedidoWeb;
    }
    
    public void setCodigoPedidoWeb(Integer codigoPedidoWeb) {
        this.codigoPedidoWeb = codigoPedidoWeb;
    }
    public Date getVersion() {
        return this.version;
    }
    
    public void setVersion(Date version) {
        this.version = version;
    }
    public Cliente getCliente() {
        return this.cliente;
    }
    
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    public EstadoClienteTienePedido getEstadoClienteTienePedido() {
        return this.estadoClienteTienePedido;
    }
    
    public void setEstadoClienteTienePedido(EstadoClienteTienePedido estadoClienteTienePedido) {
        this.estadoClienteTienePedido = estadoClienteTienePedido;
    }
    public FacturaCTienePedido getFacturaCTienePedido() {
        return this.facturaCTienePedido;
    }
    
    public void setFacturaCTienePedido(FacturaCTienePedido facturaCTienePedido) {
        this.facturaCTienePedido = facturaCTienePedido;
    }
    public IgvVenta getIgvVenta() {
        return this.igvVenta;
    }
    
    public void setIgvVenta(IgvVenta igvVenta) {
        this.igvVenta = igvVenta;
    }
    public PromocionVenta getPromocionVenta() {
        return this.promocionVenta;
    }
    
    public void setPromocionVenta(PromocionVenta promocionVenta) {
        this.promocionVenta = promocionVenta;
    }
    public Vendedor getVendedor() {
        return this.vendedor;
    }
    
    public void setVendedor(Vendedor vendedor) {
        this.vendedor = vendedor;
    }
    public Float getDescuentoWebPedido() {
        return this.descuentoWebPedido;
    }
    
    public void setDescuentoWebPedido(Float descuentoWebPedido) {
        this.descuentoWebPedido = descuentoWebPedido;
    }
    public Float getPrecioUniDescIgv() {
        return this.precioUniDescIgv;
    }
    
    public void setPrecioUniDescIgv(Float precioUniDescIgv) {
        this.precioUniDescIgv = precioUniDescIgv;
    }
    public Float getPrecioUniDescSinIgv() {
        return this.precioUniDescSinIgv;
    }
    
    public void setPrecioUniDescSinIgv(Float precioUniDescSinIgv) {
        this.precioUniDescSinIgv = precioUniDescSinIgv;
    }
    public Date getFechaPedido() {
        return this.fechaPedido;
    }
    
    public void setFechaPedido(Date fechaPedido) {
        this.fechaPedido = fechaPedido;
    }
    public Date getFechaEntrega() {
        return this.fechaEntrega;
    }
    
    public void setFechaEntrega(Date fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }
    public Integer getCantidadProducto() {
        return this.cantidadProducto;
    }
    
    public void setCantidadProducto(Integer cantidadProducto) {
        this.cantidadProducto = cantidadProducto;
    }
    public Float getMontoPorDescuentos() {
        return this.montoPorDescuentos;
    }
    
    public void setMontoPorDescuentos(Float montoPorDescuentos) {
        this.montoPorDescuentos = montoPorDescuentos;
    }
    public Set<ProductoPorPedido> getProductoPorPedidos() {
        return this.productoPorPedidos;
    }
    
    public void setProductoPorPedidos(Set<ProductoPorPedido> productoPorPedidos) {
        this.productoPorPedidos = productoPorPedidos;
    }




}


