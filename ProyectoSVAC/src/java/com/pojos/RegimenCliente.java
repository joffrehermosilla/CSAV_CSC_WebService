package com.pojos;
// Generated May 31, 2018 6:38:42 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * RegimenCliente generated by hbm2java
 */
public class RegimenCliente  implements java.io.Serializable {


     private Integer codigoRegimenCliente;
     private Date version;
     private String nombreRegimenCliente;
     private Set<Cliente> clientes = new HashSet<Cliente>(0);

    public RegimenCliente() {
    }

	
    public RegimenCliente(String nombreRegimenCliente) {
        this.nombreRegimenCliente = nombreRegimenCliente;
    }
    public RegimenCliente(String nombreRegimenCliente, Set<Cliente> clientes) {
       this.nombreRegimenCliente = nombreRegimenCliente;
       this.clientes = clientes;
    }
   
    public Integer getCodigoRegimenCliente() {
        return this.codigoRegimenCliente;
    }
    
    public void setCodigoRegimenCliente(Integer codigoRegimenCliente) {
        this.codigoRegimenCliente = codigoRegimenCliente;
    }
    public Date getVersion() {
        return this.version;
    }
    
    public void setVersion(Date version) {
        this.version = version;
    }
    public String getNombreRegimenCliente() {
        return this.nombreRegimenCliente;
    }
    
    public void setNombreRegimenCliente(String nombreRegimenCliente) {
        this.nombreRegimenCliente = nombreRegimenCliente;
    }
    public Set<Cliente> getClientes() {
        return this.clientes;
    }
    
    public void setClientes(Set<Cliente> clientes) {
        this.clientes = clientes;
    }




}


