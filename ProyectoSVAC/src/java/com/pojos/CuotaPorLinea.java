package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * CuotaPorLinea generated by hbm2java
 */
public class CuotaPorLinea  implements java.io.Serializable {


     private Integer codigoCuotaPorLinea;
     private Date version;
     private Linea linea;
     private Mes mes;
     private Float cuotaAsignada;
     private Float cuotaRealizada;
     private Set<CplTieneZtd> cplTieneZtds = new HashSet<CplTieneZtd>(0);

    public CuotaPorLinea() {
    }

    public CuotaPorLinea(Linea linea, Mes mes, Float cuotaAsignada, Float cuotaRealizada, Set<CplTieneZtd> cplTieneZtds) {
       this.linea = linea;
       this.mes = mes;
       this.cuotaAsignada = cuotaAsignada;
       this.cuotaRealizada = cuotaRealizada;
       this.cplTieneZtds = cplTieneZtds;
    }
   
    public Integer getCodigoCuotaPorLinea() {
        return this.codigoCuotaPorLinea;
    }
    
    public void setCodigoCuotaPorLinea(Integer codigoCuotaPorLinea) {
        this.codigoCuotaPorLinea = codigoCuotaPorLinea;
    }
    public Date getVersion() {
        return this.version;
    }
    
    public void setVersion(Date version) {
        this.version = version;
    }
    public Linea getLinea() {
        return this.linea;
    }
    
    public void setLinea(Linea linea) {
        this.linea = linea;
    }
    public Mes getMes() {
        return this.mes;
    }
    
    public void setMes(Mes mes) {
        this.mes = mes;
    }
    public Float getCuotaAsignada() {
        return this.cuotaAsignada;
    }
    
    public void setCuotaAsignada(Float cuotaAsignada) {
        this.cuotaAsignada = cuotaAsignada;
    }
    public Float getCuotaRealizada() {
        return this.cuotaRealizada;
    }
    
    public void setCuotaRealizada(Float cuotaRealizada) {
        this.cuotaRealizada = cuotaRealizada;
    }
    public Set<CplTieneZtd> getCplTieneZtds() {
        return this.cplTieneZtds;
    }
    
    public void setCplTieneZtds(Set<CplTieneZtd> cplTieneZtds) {
        this.cplTieneZtds = cplTieneZtds;
    }




}


