package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Insumo generated by hbm2java
 */
public class Insumo  implements java.io.Serializable {


     private Integer codigoInsumo;
     private Date version;
     private EstadoInsumo estadoInsumo;
     private LoteInsumo loteInsumo;
     private PresentacionInsumo presentacionInsumo;
     private TipoInsumo tipoInsumo;
     private String nombreInsumo;
     private Date fechaIngreso;
     private Date fechaSalida;
     private Integer stockActual;
     private String codigoMarca;
     private String marcaInsumo;
     private String loteMarcaInsumo;
     private String descripcionInsumo;
     private String unidadMedida;
     private Float cantidadUniInsumoAlmacen;
     private Float temperaturaAmbiente;
     private Date fechaVencimiento;
     private Float precioUnitario;
     private Float precioUniPromocion;
     private String codigoBarras;
     private String codigoQr;
     private byte[] fotoInsumo;
     private Set<ReceProduTiInsumo> receProduTiInsumos = new HashSet<ReceProduTiInsumo>(0);

    public Insumo() {
    }

    public Insumo(EstadoInsumo estadoInsumo, LoteInsumo loteInsumo, PresentacionInsumo presentacionInsumo, TipoInsumo tipoInsumo, String nombreInsumo, Date fechaIngreso, Date fechaSalida, Integer stockActual, String codigoMarca, String marcaInsumo, String loteMarcaInsumo, String descripcionInsumo, String unidadMedida, Float cantidadUniInsumoAlmacen, Float temperaturaAmbiente, Date fechaVencimiento, Float precioUnitario, Float precioUniPromocion, String codigoBarras, String codigoQr, byte[] fotoInsumo, Set<ReceProduTiInsumo> receProduTiInsumos) {
       this.estadoInsumo = estadoInsumo;
       this.loteInsumo = loteInsumo;
       this.presentacionInsumo = presentacionInsumo;
       this.tipoInsumo = tipoInsumo;
       this.nombreInsumo = nombreInsumo;
       this.fechaIngreso = fechaIngreso;
       this.fechaSalida = fechaSalida;
       this.stockActual = stockActual;
       this.codigoMarca = codigoMarca;
       this.marcaInsumo = marcaInsumo;
       this.loteMarcaInsumo = loteMarcaInsumo;
       this.descripcionInsumo = descripcionInsumo;
       this.unidadMedida = unidadMedida;
       this.cantidadUniInsumoAlmacen = cantidadUniInsumoAlmacen;
       this.temperaturaAmbiente = temperaturaAmbiente;
       this.fechaVencimiento = fechaVencimiento;
       this.precioUnitario = precioUnitario;
       this.precioUniPromocion = precioUniPromocion;
       this.codigoBarras = codigoBarras;
       this.codigoQr = codigoQr;
       this.fotoInsumo = fotoInsumo;
       this.receProduTiInsumos = receProduTiInsumos;
    }
   
    public Integer getCodigoInsumo() {
        return this.codigoInsumo;
    }
    
    public void setCodigoInsumo(Integer codigoInsumo) {
        this.codigoInsumo = codigoInsumo;
    }
    public Date getVersion() {
        return this.version;
    }
    
    public void setVersion(Date version) {
        this.version = version;
    }
    public EstadoInsumo getEstadoInsumo() {
        return this.estadoInsumo;
    }
    
    public void setEstadoInsumo(EstadoInsumo estadoInsumo) {
        this.estadoInsumo = estadoInsumo;
    }
    public LoteInsumo getLoteInsumo() {
        return this.loteInsumo;
    }
    
    public void setLoteInsumo(LoteInsumo loteInsumo) {
        this.loteInsumo = loteInsumo;
    }
    public PresentacionInsumo getPresentacionInsumo() {
        return this.presentacionInsumo;
    }
    
    public void setPresentacionInsumo(PresentacionInsumo presentacionInsumo) {
        this.presentacionInsumo = presentacionInsumo;
    }
    public TipoInsumo getTipoInsumo() {
        return this.tipoInsumo;
    }
    
    public void setTipoInsumo(TipoInsumo tipoInsumo) {
        this.tipoInsumo = tipoInsumo;
    }
    public String getNombreInsumo() {
        return this.nombreInsumo;
    }
    
    public void setNombreInsumo(String nombreInsumo) {
        this.nombreInsumo = nombreInsumo;
    }
    public Date getFechaIngreso() {
        return this.fechaIngreso;
    }
    
    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }
    public Date getFechaSalida() {
        return this.fechaSalida;
    }
    
    public void setFechaSalida(Date fechaSalida) {
        this.fechaSalida = fechaSalida;
    }
    public Integer getStockActual() {
        return this.stockActual;
    }
    
    public void setStockActual(Integer stockActual) {
        this.stockActual = stockActual;
    }
    public String getCodigoMarca() {
        return this.codigoMarca;
    }
    
    public void setCodigoMarca(String codigoMarca) {
        this.codigoMarca = codigoMarca;
    }
    public String getMarcaInsumo() {
        return this.marcaInsumo;
    }
    
    public void setMarcaInsumo(String marcaInsumo) {
        this.marcaInsumo = marcaInsumo;
    }
    public String getLoteMarcaInsumo() {
        return this.loteMarcaInsumo;
    }
    
    public void setLoteMarcaInsumo(String loteMarcaInsumo) {
        this.loteMarcaInsumo = loteMarcaInsumo;
    }
    public String getDescripcionInsumo() {
        return this.descripcionInsumo;
    }
    
    public void setDescripcionInsumo(String descripcionInsumo) {
        this.descripcionInsumo = descripcionInsumo;
    }
    public String getUnidadMedida() {
        return this.unidadMedida;
    }
    
    public void setUnidadMedida(String unidadMedida) {
        this.unidadMedida = unidadMedida;
    }
    public Float getCantidadUniInsumoAlmacen() {
        return this.cantidadUniInsumoAlmacen;
    }
    
    public void setCantidadUniInsumoAlmacen(Float cantidadUniInsumoAlmacen) {
        this.cantidadUniInsumoAlmacen = cantidadUniInsumoAlmacen;
    }
    public Float getTemperaturaAmbiente() {
        return this.temperaturaAmbiente;
    }
    
    public void setTemperaturaAmbiente(Float temperaturaAmbiente) {
        this.temperaturaAmbiente = temperaturaAmbiente;
    }
    public Date getFechaVencimiento() {
        return this.fechaVencimiento;
    }
    
    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }
    public Float getPrecioUnitario() {
        return this.precioUnitario;
    }
    
    public void setPrecioUnitario(Float precioUnitario) {
        this.precioUnitario = precioUnitario;
    }
    public Float getPrecioUniPromocion() {
        return this.precioUniPromocion;
    }
    
    public void setPrecioUniPromocion(Float precioUniPromocion) {
        this.precioUniPromocion = precioUniPromocion;
    }
    public String getCodigoBarras() {
        return this.codigoBarras;
    }
    
    public void setCodigoBarras(String codigoBarras) {
        this.codigoBarras = codigoBarras;
    }
    public String getCodigoQr() {
        return this.codigoQr;
    }
    
    public void setCodigoQr(String codigoQr) {
        this.codigoQr = codigoQr;
    }
    public byte[] getFotoInsumo() {
        return this.fotoInsumo;
    }
    
    public void setFotoInsumo(byte[] fotoInsumo) {
        this.fotoInsumo = fotoInsumo;
    }
    public Set<ReceProduTiInsumo> getReceProduTiInsumos() {
        return this.receProduTiInsumos;
    }
    
    public void setReceProduTiInsumos(Set<ReceProduTiInsumo> receProduTiInsumos) {
        this.receProduTiInsumos = receProduTiInsumos;
    }




}


