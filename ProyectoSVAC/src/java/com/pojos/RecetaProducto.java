package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * RecetaProducto generated by hbm2java
 */
public class RecetaProducto  implements java.io.Serializable {


     private Integer codigoRecetaProducto;
     private Date version;
     private String modeloRecetaProducto;
     private Date fechaCreacionRecetaProducto;
     private Set<ReceProduTiInsumo> receProduTiInsumos = new HashSet<ReceProduTiInsumo>(0);

    public RecetaProducto() {
    }

    public RecetaProducto(String modeloRecetaProducto, Date fechaCreacionRecetaProducto, Set<ReceProduTiInsumo> receProduTiInsumos) {
       this.modeloRecetaProducto = modeloRecetaProducto;
       this.fechaCreacionRecetaProducto = fechaCreacionRecetaProducto;
       this.receProduTiInsumos = receProduTiInsumos;
    }
   
    public Integer getCodigoRecetaProducto() {
        return this.codigoRecetaProducto;
    }
    
    public void setCodigoRecetaProducto(Integer codigoRecetaProducto) {
        this.codigoRecetaProducto = codigoRecetaProducto;
    }
    public Date getVersion() {
        return this.version;
    }
    
    public void setVersion(Date version) {
        this.version = version;
    }
    public String getModeloRecetaProducto() {
        return this.modeloRecetaProducto;
    }
    
    public void setModeloRecetaProducto(String modeloRecetaProducto) {
        this.modeloRecetaProducto = modeloRecetaProducto;
    }
    public Date getFechaCreacionRecetaProducto() {
        return this.fechaCreacionRecetaProducto;
    }
    
    public void setFechaCreacionRecetaProducto(Date fechaCreacionRecetaProducto) {
        this.fechaCreacionRecetaProducto = fechaCreacionRecetaProducto;
    }
    public Set<ReceProduTiInsumo> getReceProduTiInsumos() {
        return this.receProduTiInsumos;
    }
    
    public void setReceProduTiInsumos(Set<ReceProduTiInsumo> receProduTiInsumos) {
        this.receProduTiInsumos = receProduTiInsumos;
    }




}


