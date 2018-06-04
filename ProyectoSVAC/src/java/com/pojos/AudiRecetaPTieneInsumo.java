package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AudiRecetaPTieneInsumo generated by hbm2java
 */
public class AudiRecetaPTieneInsumo  implements java.io.Serializable {


     private Integer codigoAReceProdTiInsumo;
     private String usuario;
     private Date fechaCambio;
     private Float cantidadUsadaOld;
     private Date fechaCreacionOld;
     private String descripcionOld;
     private Float temperaturaHornoOld;
     private Float temperaturaReposoOld;
     private Float dimensionAlturaOld;
     private Float dimensionAnchuraOld;
     private Float dimensionEspesorOld;
     private Float dimensionProfundidadOld;
     private Float porcentajeEnProductoOld;
     private Integer fkCodigoProductoOld;
     private Integer fkCodigoInsumoOld;
     private Integer fkCodigoRecetaProductoOld;
     private Date versionOld;
     private Float cantidadUsadaNew;
     private Date fechaCreacionNew;
     private String descripcionNew;
     private Float temperaturaHornoNew;
     private Float temperaturaReposoNew;
     private Float dimensionAlturaNew;
     private Float dimensionAnchuraNew;
     private Float dimensionEspesorNew;
     private Float dimensionProfundidadNew;
     private Float porcentajeEnProductoNew;
     private Integer fkCodigoProductoNew;
     private Integer fkCodigoInsumoNew;
     private Integer fkCodigoRecetaProductoNew;
     private Date versionNew;

    public AudiRecetaPTieneInsumo() {
    }

	
    public AudiRecetaPTieneInsumo(String usuario, Date fechaCambio) {
        this.usuario = usuario;
        this.fechaCambio = fechaCambio;
    }
    public AudiRecetaPTieneInsumo(String usuario, Date fechaCambio, Float cantidadUsadaOld, Date fechaCreacionOld, String descripcionOld, Float temperaturaHornoOld, Float temperaturaReposoOld, Float dimensionAlturaOld, Float dimensionAnchuraOld, Float dimensionEspesorOld, Float dimensionProfundidadOld, Float porcentajeEnProductoOld, Integer fkCodigoProductoOld, Integer fkCodigoInsumoOld, Integer fkCodigoRecetaProductoOld, Date versionOld, Float cantidadUsadaNew, Date fechaCreacionNew, String descripcionNew, Float temperaturaHornoNew, Float temperaturaReposoNew, Float dimensionAlturaNew, Float dimensionAnchuraNew, Float dimensionEspesorNew, Float dimensionProfundidadNew, Float porcentajeEnProductoNew, Integer fkCodigoProductoNew, Integer fkCodigoInsumoNew, Integer fkCodigoRecetaProductoNew, Date versionNew) {
       this.usuario = usuario;
       this.fechaCambio = fechaCambio;
       this.cantidadUsadaOld = cantidadUsadaOld;
       this.fechaCreacionOld = fechaCreacionOld;
       this.descripcionOld = descripcionOld;
       this.temperaturaHornoOld = temperaturaHornoOld;
       this.temperaturaReposoOld = temperaturaReposoOld;
       this.dimensionAlturaOld = dimensionAlturaOld;
       this.dimensionAnchuraOld = dimensionAnchuraOld;
       this.dimensionEspesorOld = dimensionEspesorOld;
       this.dimensionProfundidadOld = dimensionProfundidadOld;
       this.porcentajeEnProductoOld = porcentajeEnProductoOld;
       this.fkCodigoProductoOld = fkCodigoProductoOld;
       this.fkCodigoInsumoOld = fkCodigoInsumoOld;
       this.fkCodigoRecetaProductoOld = fkCodigoRecetaProductoOld;
       this.versionOld = versionOld;
       this.cantidadUsadaNew = cantidadUsadaNew;
       this.fechaCreacionNew = fechaCreacionNew;
       this.descripcionNew = descripcionNew;
       this.temperaturaHornoNew = temperaturaHornoNew;
       this.temperaturaReposoNew = temperaturaReposoNew;
       this.dimensionAlturaNew = dimensionAlturaNew;
       this.dimensionAnchuraNew = dimensionAnchuraNew;
       this.dimensionEspesorNew = dimensionEspesorNew;
       this.dimensionProfundidadNew = dimensionProfundidadNew;
       this.porcentajeEnProductoNew = porcentajeEnProductoNew;
       this.fkCodigoProductoNew = fkCodigoProductoNew;
       this.fkCodigoInsumoNew = fkCodigoInsumoNew;
       this.fkCodigoRecetaProductoNew = fkCodigoRecetaProductoNew;
       this.versionNew = versionNew;
    }
   
    public Integer getCodigoAReceProdTiInsumo() {
        return this.codigoAReceProdTiInsumo;
    }
    
    public void setCodigoAReceProdTiInsumo(Integer codigoAReceProdTiInsumo) {
        this.codigoAReceProdTiInsumo = codigoAReceProdTiInsumo;
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
    public Float getCantidadUsadaOld() {
        return this.cantidadUsadaOld;
    }
    
    public void setCantidadUsadaOld(Float cantidadUsadaOld) {
        this.cantidadUsadaOld = cantidadUsadaOld;
    }
    public Date getFechaCreacionOld() {
        return this.fechaCreacionOld;
    }
    
    public void setFechaCreacionOld(Date fechaCreacionOld) {
        this.fechaCreacionOld = fechaCreacionOld;
    }
    public String getDescripcionOld() {
        return this.descripcionOld;
    }
    
    public void setDescripcionOld(String descripcionOld) {
        this.descripcionOld = descripcionOld;
    }
    public Float getTemperaturaHornoOld() {
        return this.temperaturaHornoOld;
    }
    
    public void setTemperaturaHornoOld(Float temperaturaHornoOld) {
        this.temperaturaHornoOld = temperaturaHornoOld;
    }
    public Float getTemperaturaReposoOld() {
        return this.temperaturaReposoOld;
    }
    
    public void setTemperaturaReposoOld(Float temperaturaReposoOld) {
        this.temperaturaReposoOld = temperaturaReposoOld;
    }
    public Float getDimensionAlturaOld() {
        return this.dimensionAlturaOld;
    }
    
    public void setDimensionAlturaOld(Float dimensionAlturaOld) {
        this.dimensionAlturaOld = dimensionAlturaOld;
    }
    public Float getDimensionAnchuraOld() {
        return this.dimensionAnchuraOld;
    }
    
    public void setDimensionAnchuraOld(Float dimensionAnchuraOld) {
        this.dimensionAnchuraOld = dimensionAnchuraOld;
    }
    public Float getDimensionEspesorOld() {
        return this.dimensionEspesorOld;
    }
    
    public void setDimensionEspesorOld(Float dimensionEspesorOld) {
        this.dimensionEspesorOld = dimensionEspesorOld;
    }
    public Float getDimensionProfundidadOld() {
        return this.dimensionProfundidadOld;
    }
    
    public void setDimensionProfundidadOld(Float dimensionProfundidadOld) {
        this.dimensionProfundidadOld = dimensionProfundidadOld;
    }
    public Float getPorcentajeEnProductoOld() {
        return this.porcentajeEnProductoOld;
    }
    
    public void setPorcentajeEnProductoOld(Float porcentajeEnProductoOld) {
        this.porcentajeEnProductoOld = porcentajeEnProductoOld;
    }
    public Integer getFkCodigoProductoOld() {
        return this.fkCodigoProductoOld;
    }
    
    public void setFkCodigoProductoOld(Integer fkCodigoProductoOld) {
        this.fkCodigoProductoOld = fkCodigoProductoOld;
    }
    public Integer getFkCodigoInsumoOld() {
        return this.fkCodigoInsumoOld;
    }
    
    public void setFkCodigoInsumoOld(Integer fkCodigoInsumoOld) {
        this.fkCodigoInsumoOld = fkCodigoInsumoOld;
    }
    public Integer getFkCodigoRecetaProductoOld() {
        return this.fkCodigoRecetaProductoOld;
    }
    
    public void setFkCodigoRecetaProductoOld(Integer fkCodigoRecetaProductoOld) {
        this.fkCodigoRecetaProductoOld = fkCodigoRecetaProductoOld;
    }
    public Date getVersionOld() {
        return this.versionOld;
    }
    
    public void setVersionOld(Date versionOld) {
        this.versionOld = versionOld;
    }
    public Float getCantidadUsadaNew() {
        return this.cantidadUsadaNew;
    }
    
    public void setCantidadUsadaNew(Float cantidadUsadaNew) {
        this.cantidadUsadaNew = cantidadUsadaNew;
    }
    public Date getFechaCreacionNew() {
        return this.fechaCreacionNew;
    }
    
    public void setFechaCreacionNew(Date fechaCreacionNew) {
        this.fechaCreacionNew = fechaCreacionNew;
    }
    public String getDescripcionNew() {
        return this.descripcionNew;
    }
    
    public void setDescripcionNew(String descripcionNew) {
        this.descripcionNew = descripcionNew;
    }
    public Float getTemperaturaHornoNew() {
        return this.temperaturaHornoNew;
    }
    
    public void setTemperaturaHornoNew(Float temperaturaHornoNew) {
        this.temperaturaHornoNew = temperaturaHornoNew;
    }
    public Float getTemperaturaReposoNew() {
        return this.temperaturaReposoNew;
    }
    
    public void setTemperaturaReposoNew(Float temperaturaReposoNew) {
        this.temperaturaReposoNew = temperaturaReposoNew;
    }
    public Float getDimensionAlturaNew() {
        return this.dimensionAlturaNew;
    }
    
    public void setDimensionAlturaNew(Float dimensionAlturaNew) {
        this.dimensionAlturaNew = dimensionAlturaNew;
    }
    public Float getDimensionAnchuraNew() {
        return this.dimensionAnchuraNew;
    }
    
    public void setDimensionAnchuraNew(Float dimensionAnchuraNew) {
        this.dimensionAnchuraNew = dimensionAnchuraNew;
    }
    public Float getDimensionEspesorNew() {
        return this.dimensionEspesorNew;
    }
    
    public void setDimensionEspesorNew(Float dimensionEspesorNew) {
        this.dimensionEspesorNew = dimensionEspesorNew;
    }
    public Float getDimensionProfundidadNew() {
        return this.dimensionProfundidadNew;
    }
    
    public void setDimensionProfundidadNew(Float dimensionProfundidadNew) {
        this.dimensionProfundidadNew = dimensionProfundidadNew;
    }
    public Float getPorcentajeEnProductoNew() {
        return this.porcentajeEnProductoNew;
    }
    
    public void setPorcentajeEnProductoNew(Float porcentajeEnProductoNew) {
        this.porcentajeEnProductoNew = porcentajeEnProductoNew;
    }
    public Integer getFkCodigoProductoNew() {
        return this.fkCodigoProductoNew;
    }
    
    public void setFkCodigoProductoNew(Integer fkCodigoProductoNew) {
        this.fkCodigoProductoNew = fkCodigoProductoNew;
    }
    public Integer getFkCodigoInsumoNew() {
        return this.fkCodigoInsumoNew;
    }
    
    public void setFkCodigoInsumoNew(Integer fkCodigoInsumoNew) {
        this.fkCodigoInsumoNew = fkCodigoInsumoNew;
    }
    public Integer getFkCodigoRecetaProductoNew() {
        return this.fkCodigoRecetaProductoNew;
    }
    
    public void setFkCodigoRecetaProductoNew(Integer fkCodigoRecetaProductoNew) {
        this.fkCodigoRecetaProductoNew = fkCodigoRecetaProductoNew;
    }
    public Date getVersionNew() {
        return this.versionNew;
    }
    
    public void setVersionNew(Date versionNew) {
        this.versionNew = versionNew;
    }




}


