package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AuditoriaInsumo generated by hbm2java
 */
public class AuditoriaInsumo  implements java.io.Serializable {


     private Integer codigoAudiInsumo;
     private String usuario;
     private Date fechaCambio;
     private String nombreInsumoOld;
     private Date fechaIngresoOld;
     private Date fechaSalidaOld;
     private Integer stockActualOld;
     private String codigoMarcaOld;
     private String marcaInsumoOld;
     private String loteMarcaInsumoOld;
     private String descripcionInsumoOld;
     private String unidadMedidaOld;
     private Float cantidadUniInsumoAlmacenOld;
     private Float temperaturaAmbienteOld;
     private Date fechaVencimientoOld;
     private Float precioUnitarioOld;
     private Float precioUniPromocionOld;
     private String codigoBarrasOld;
     private String codigoQrOld;
     private byte[] fotoInsumoOld;
     private Integer fkCodigoEstadoInsumoOld;
     private Integer fkCodigoTipoInsumoOld;
     private Integer fkCodigoPresentacionInsumoOld;
     private Integer fkCodigoLoteInsumoOld;
     private Date versionOld;
     private String nombreInsumoNew;
     private Date fechaIngresoNew;
     private Date fechaSalidaNew;
     private Integer stockActualNew;
     private String codigoMarcaNew;
     private String marcaInsumoNew;
     private String loteMarcaInsumoNew;
     private String descripcionInsumoNew;
     private String unidadMedidaNew;
     private Float cantidadUniInsumoAlmacenNew;
     private Float temperaturaAmbienteNew;
     private Date fechaVencimientoNew;
     private Float precioUnitarioNew;
     private Float precioUniPromocionNew;
     private String codigoBarrasNew;
     private String codigoQrNew;
     private byte[] fotoInsumoNew;
     private Integer fkCodigoEstadoInsumoNew;
     private Integer fkCodigoTipoInsumoNew;
     private Integer fkCodigoPresentacionInsumoNew;
     private Integer fkCodigoLoteInsumoNew;
     private Date versionNew;

    public AuditoriaInsumo() {
    }

	
    public AuditoriaInsumo(String usuario, Date fechaCambio) {
        this.usuario = usuario;
        this.fechaCambio = fechaCambio;
    }
    public AuditoriaInsumo(String usuario, Date fechaCambio, String nombreInsumoOld, Date fechaIngresoOld, Date fechaSalidaOld, Integer stockActualOld, String codigoMarcaOld, String marcaInsumoOld, String loteMarcaInsumoOld, String descripcionInsumoOld, String unidadMedidaOld, Float cantidadUniInsumoAlmacenOld, Float temperaturaAmbienteOld, Date fechaVencimientoOld, Float precioUnitarioOld, Float precioUniPromocionOld, String codigoBarrasOld, String codigoQrOld, byte[] fotoInsumoOld, Integer fkCodigoEstadoInsumoOld, Integer fkCodigoTipoInsumoOld, Integer fkCodigoPresentacionInsumoOld, Integer fkCodigoLoteInsumoOld, Date versionOld, String nombreInsumoNew, Date fechaIngresoNew, Date fechaSalidaNew, Integer stockActualNew, String codigoMarcaNew, String marcaInsumoNew, String loteMarcaInsumoNew, String descripcionInsumoNew, String unidadMedidaNew, Float cantidadUniInsumoAlmacenNew, Float temperaturaAmbienteNew, Date fechaVencimientoNew, Float precioUnitarioNew, Float precioUniPromocionNew, String codigoBarrasNew, String codigoQrNew, byte[] fotoInsumoNew, Integer fkCodigoEstadoInsumoNew, Integer fkCodigoTipoInsumoNew, Integer fkCodigoPresentacionInsumoNew, Integer fkCodigoLoteInsumoNew, Date versionNew) {
       this.usuario = usuario;
       this.fechaCambio = fechaCambio;
       this.nombreInsumoOld = nombreInsumoOld;
       this.fechaIngresoOld = fechaIngresoOld;
       this.fechaSalidaOld = fechaSalidaOld;
       this.stockActualOld = stockActualOld;
       this.codigoMarcaOld = codigoMarcaOld;
       this.marcaInsumoOld = marcaInsumoOld;
       this.loteMarcaInsumoOld = loteMarcaInsumoOld;
       this.descripcionInsumoOld = descripcionInsumoOld;
       this.unidadMedidaOld = unidadMedidaOld;
       this.cantidadUniInsumoAlmacenOld = cantidadUniInsumoAlmacenOld;
       this.temperaturaAmbienteOld = temperaturaAmbienteOld;
       this.fechaVencimientoOld = fechaVencimientoOld;
       this.precioUnitarioOld = precioUnitarioOld;
       this.precioUniPromocionOld = precioUniPromocionOld;
       this.codigoBarrasOld = codigoBarrasOld;
       this.codigoQrOld = codigoQrOld;
       this.fotoInsumoOld = fotoInsumoOld;
       this.fkCodigoEstadoInsumoOld = fkCodigoEstadoInsumoOld;
       this.fkCodigoTipoInsumoOld = fkCodigoTipoInsumoOld;
       this.fkCodigoPresentacionInsumoOld = fkCodigoPresentacionInsumoOld;
       this.fkCodigoLoteInsumoOld = fkCodigoLoteInsumoOld;
       this.versionOld = versionOld;
       this.nombreInsumoNew = nombreInsumoNew;
       this.fechaIngresoNew = fechaIngresoNew;
       this.fechaSalidaNew = fechaSalidaNew;
       this.stockActualNew = stockActualNew;
       this.codigoMarcaNew = codigoMarcaNew;
       this.marcaInsumoNew = marcaInsumoNew;
       this.loteMarcaInsumoNew = loteMarcaInsumoNew;
       this.descripcionInsumoNew = descripcionInsumoNew;
       this.unidadMedidaNew = unidadMedidaNew;
       this.cantidadUniInsumoAlmacenNew = cantidadUniInsumoAlmacenNew;
       this.temperaturaAmbienteNew = temperaturaAmbienteNew;
       this.fechaVencimientoNew = fechaVencimientoNew;
       this.precioUnitarioNew = precioUnitarioNew;
       this.precioUniPromocionNew = precioUniPromocionNew;
       this.codigoBarrasNew = codigoBarrasNew;
       this.codigoQrNew = codigoQrNew;
       this.fotoInsumoNew = fotoInsumoNew;
       this.fkCodigoEstadoInsumoNew = fkCodigoEstadoInsumoNew;
       this.fkCodigoTipoInsumoNew = fkCodigoTipoInsumoNew;
       this.fkCodigoPresentacionInsumoNew = fkCodigoPresentacionInsumoNew;
       this.fkCodigoLoteInsumoNew = fkCodigoLoteInsumoNew;
       this.versionNew = versionNew;
    }
   
    public Integer getCodigoAudiInsumo() {
        return this.codigoAudiInsumo;
    }
    
    public void setCodigoAudiInsumo(Integer codigoAudiInsumo) {
        this.codigoAudiInsumo = codigoAudiInsumo;
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
    public String getNombreInsumoOld() {
        return this.nombreInsumoOld;
    }
    
    public void setNombreInsumoOld(String nombreInsumoOld) {
        this.nombreInsumoOld = nombreInsumoOld;
    }
    public Date getFechaIngresoOld() {
        return this.fechaIngresoOld;
    }
    
    public void setFechaIngresoOld(Date fechaIngresoOld) {
        this.fechaIngresoOld = fechaIngresoOld;
    }
    public Date getFechaSalidaOld() {
        return this.fechaSalidaOld;
    }
    
    public void setFechaSalidaOld(Date fechaSalidaOld) {
        this.fechaSalidaOld = fechaSalidaOld;
    }
    public Integer getStockActualOld() {
        return this.stockActualOld;
    }
    
    public void setStockActualOld(Integer stockActualOld) {
        this.stockActualOld = stockActualOld;
    }
    public String getCodigoMarcaOld() {
        return this.codigoMarcaOld;
    }
    
    public void setCodigoMarcaOld(String codigoMarcaOld) {
        this.codigoMarcaOld = codigoMarcaOld;
    }
    public String getMarcaInsumoOld() {
        return this.marcaInsumoOld;
    }
    
    public void setMarcaInsumoOld(String marcaInsumoOld) {
        this.marcaInsumoOld = marcaInsumoOld;
    }
    public String getLoteMarcaInsumoOld() {
        return this.loteMarcaInsumoOld;
    }
    
    public void setLoteMarcaInsumoOld(String loteMarcaInsumoOld) {
        this.loteMarcaInsumoOld = loteMarcaInsumoOld;
    }
    public String getDescripcionInsumoOld() {
        return this.descripcionInsumoOld;
    }
    
    public void setDescripcionInsumoOld(String descripcionInsumoOld) {
        this.descripcionInsumoOld = descripcionInsumoOld;
    }
    public String getUnidadMedidaOld() {
        return this.unidadMedidaOld;
    }
    
    public void setUnidadMedidaOld(String unidadMedidaOld) {
        this.unidadMedidaOld = unidadMedidaOld;
    }
    public Float getCantidadUniInsumoAlmacenOld() {
        return this.cantidadUniInsumoAlmacenOld;
    }
    
    public void setCantidadUniInsumoAlmacenOld(Float cantidadUniInsumoAlmacenOld) {
        this.cantidadUniInsumoAlmacenOld = cantidadUniInsumoAlmacenOld;
    }
    public Float getTemperaturaAmbienteOld() {
        return this.temperaturaAmbienteOld;
    }
    
    public void setTemperaturaAmbienteOld(Float temperaturaAmbienteOld) {
        this.temperaturaAmbienteOld = temperaturaAmbienteOld;
    }
    public Date getFechaVencimientoOld() {
        return this.fechaVencimientoOld;
    }
    
    public void setFechaVencimientoOld(Date fechaVencimientoOld) {
        this.fechaVencimientoOld = fechaVencimientoOld;
    }
    public Float getPrecioUnitarioOld() {
        return this.precioUnitarioOld;
    }
    
    public void setPrecioUnitarioOld(Float precioUnitarioOld) {
        this.precioUnitarioOld = precioUnitarioOld;
    }
    public Float getPrecioUniPromocionOld() {
        return this.precioUniPromocionOld;
    }
    
    public void setPrecioUniPromocionOld(Float precioUniPromocionOld) {
        this.precioUniPromocionOld = precioUniPromocionOld;
    }
    public String getCodigoBarrasOld() {
        return this.codigoBarrasOld;
    }
    
    public void setCodigoBarrasOld(String codigoBarrasOld) {
        this.codigoBarrasOld = codigoBarrasOld;
    }
    public String getCodigoQrOld() {
        return this.codigoQrOld;
    }
    
    public void setCodigoQrOld(String codigoQrOld) {
        this.codigoQrOld = codigoQrOld;
    }
    public byte[] getFotoInsumoOld() {
        return this.fotoInsumoOld;
    }
    
    public void setFotoInsumoOld(byte[] fotoInsumoOld) {
        this.fotoInsumoOld = fotoInsumoOld;
    }
    public Integer getFkCodigoEstadoInsumoOld() {
        return this.fkCodigoEstadoInsumoOld;
    }
    
    public void setFkCodigoEstadoInsumoOld(Integer fkCodigoEstadoInsumoOld) {
        this.fkCodigoEstadoInsumoOld = fkCodigoEstadoInsumoOld;
    }
    public Integer getFkCodigoTipoInsumoOld() {
        return this.fkCodigoTipoInsumoOld;
    }
    
    public void setFkCodigoTipoInsumoOld(Integer fkCodigoTipoInsumoOld) {
        this.fkCodigoTipoInsumoOld = fkCodigoTipoInsumoOld;
    }
    public Integer getFkCodigoPresentacionInsumoOld() {
        return this.fkCodigoPresentacionInsumoOld;
    }
    
    public void setFkCodigoPresentacionInsumoOld(Integer fkCodigoPresentacionInsumoOld) {
        this.fkCodigoPresentacionInsumoOld = fkCodigoPresentacionInsumoOld;
    }
    public Integer getFkCodigoLoteInsumoOld() {
        return this.fkCodigoLoteInsumoOld;
    }
    
    public void setFkCodigoLoteInsumoOld(Integer fkCodigoLoteInsumoOld) {
        this.fkCodigoLoteInsumoOld = fkCodigoLoteInsumoOld;
    }
    public Date getVersionOld() {
        return this.versionOld;
    }
    
    public void setVersionOld(Date versionOld) {
        this.versionOld = versionOld;
    }
    public String getNombreInsumoNew() {
        return this.nombreInsumoNew;
    }
    
    public void setNombreInsumoNew(String nombreInsumoNew) {
        this.nombreInsumoNew = nombreInsumoNew;
    }
    public Date getFechaIngresoNew() {
        return this.fechaIngresoNew;
    }
    
    public void setFechaIngresoNew(Date fechaIngresoNew) {
        this.fechaIngresoNew = fechaIngresoNew;
    }
    public Date getFechaSalidaNew() {
        return this.fechaSalidaNew;
    }
    
    public void setFechaSalidaNew(Date fechaSalidaNew) {
        this.fechaSalidaNew = fechaSalidaNew;
    }
    public Integer getStockActualNew() {
        return this.stockActualNew;
    }
    
    public void setStockActualNew(Integer stockActualNew) {
        this.stockActualNew = stockActualNew;
    }
    public String getCodigoMarcaNew() {
        return this.codigoMarcaNew;
    }
    
    public void setCodigoMarcaNew(String codigoMarcaNew) {
        this.codigoMarcaNew = codigoMarcaNew;
    }
    public String getMarcaInsumoNew() {
        return this.marcaInsumoNew;
    }
    
    public void setMarcaInsumoNew(String marcaInsumoNew) {
        this.marcaInsumoNew = marcaInsumoNew;
    }
    public String getLoteMarcaInsumoNew() {
        return this.loteMarcaInsumoNew;
    }
    
    public void setLoteMarcaInsumoNew(String loteMarcaInsumoNew) {
        this.loteMarcaInsumoNew = loteMarcaInsumoNew;
    }
    public String getDescripcionInsumoNew() {
        return this.descripcionInsumoNew;
    }
    
    public void setDescripcionInsumoNew(String descripcionInsumoNew) {
        this.descripcionInsumoNew = descripcionInsumoNew;
    }
    public String getUnidadMedidaNew() {
        return this.unidadMedidaNew;
    }
    
    public void setUnidadMedidaNew(String unidadMedidaNew) {
        this.unidadMedidaNew = unidadMedidaNew;
    }
    public Float getCantidadUniInsumoAlmacenNew() {
        return this.cantidadUniInsumoAlmacenNew;
    }
    
    public void setCantidadUniInsumoAlmacenNew(Float cantidadUniInsumoAlmacenNew) {
        this.cantidadUniInsumoAlmacenNew = cantidadUniInsumoAlmacenNew;
    }
    public Float getTemperaturaAmbienteNew() {
        return this.temperaturaAmbienteNew;
    }
    
    public void setTemperaturaAmbienteNew(Float temperaturaAmbienteNew) {
        this.temperaturaAmbienteNew = temperaturaAmbienteNew;
    }
    public Date getFechaVencimientoNew() {
        return this.fechaVencimientoNew;
    }
    
    public void setFechaVencimientoNew(Date fechaVencimientoNew) {
        this.fechaVencimientoNew = fechaVencimientoNew;
    }
    public Float getPrecioUnitarioNew() {
        return this.precioUnitarioNew;
    }
    
    public void setPrecioUnitarioNew(Float precioUnitarioNew) {
        this.precioUnitarioNew = precioUnitarioNew;
    }
    public Float getPrecioUniPromocionNew() {
        return this.precioUniPromocionNew;
    }
    
    public void setPrecioUniPromocionNew(Float precioUniPromocionNew) {
        this.precioUniPromocionNew = precioUniPromocionNew;
    }
    public String getCodigoBarrasNew() {
        return this.codigoBarrasNew;
    }
    
    public void setCodigoBarrasNew(String codigoBarrasNew) {
        this.codigoBarrasNew = codigoBarrasNew;
    }
    public String getCodigoQrNew() {
        return this.codigoQrNew;
    }
    
    public void setCodigoQrNew(String codigoQrNew) {
        this.codigoQrNew = codigoQrNew;
    }
    public byte[] getFotoInsumoNew() {
        return this.fotoInsumoNew;
    }
    
    public void setFotoInsumoNew(byte[] fotoInsumoNew) {
        this.fotoInsumoNew = fotoInsumoNew;
    }
    public Integer getFkCodigoEstadoInsumoNew() {
        return this.fkCodigoEstadoInsumoNew;
    }
    
    public void setFkCodigoEstadoInsumoNew(Integer fkCodigoEstadoInsumoNew) {
        this.fkCodigoEstadoInsumoNew = fkCodigoEstadoInsumoNew;
    }
    public Integer getFkCodigoTipoInsumoNew() {
        return this.fkCodigoTipoInsumoNew;
    }
    
    public void setFkCodigoTipoInsumoNew(Integer fkCodigoTipoInsumoNew) {
        this.fkCodigoTipoInsumoNew = fkCodigoTipoInsumoNew;
    }
    public Integer getFkCodigoPresentacionInsumoNew() {
        return this.fkCodigoPresentacionInsumoNew;
    }
    
    public void setFkCodigoPresentacionInsumoNew(Integer fkCodigoPresentacionInsumoNew) {
        this.fkCodigoPresentacionInsumoNew = fkCodigoPresentacionInsumoNew;
    }
    public Integer getFkCodigoLoteInsumoNew() {
        return this.fkCodigoLoteInsumoNew;
    }
    
    public void setFkCodigoLoteInsumoNew(Integer fkCodigoLoteInsumoNew) {
        this.fkCodigoLoteInsumoNew = fkCodigoLoteInsumoNew;
    }
    public Date getVersionNew() {
        return this.versionNew;
    }
    
    public void setVersionNew(Date versionNew) {
        this.versionNew = versionNew;
    }




}


