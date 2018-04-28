package com.pojos;
// Generated Apr 27, 2018 1:46:45 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TipoUsuario generated by hbm2java
 */
public class TipoUsuario  implements java.io.Serializable {


     private Integer codigoTipoUsuario;
     private String nombreTipoUsuario;
     private Set<Usuario> usuarios = new HashSet<Usuario>(0);

    public TipoUsuario() {
    }

	
    public TipoUsuario(String nombreTipoUsuario) {
        this.nombreTipoUsuario = nombreTipoUsuario;
    }
    public TipoUsuario(String nombreTipoUsuario, Set<Usuario> usuarios) {
       this.nombreTipoUsuario = nombreTipoUsuario;
       this.usuarios = usuarios;
    }
   
    public Integer getCodigoTipoUsuario() {
        return this.codigoTipoUsuario;
    }
    
    public void setCodigoTipoUsuario(Integer codigoTipoUsuario) {
        this.codigoTipoUsuario = codigoTipoUsuario;
    }
    public String getNombreTipoUsuario() {
        return this.nombreTipoUsuario;
    }
    
    public void setNombreTipoUsuario(String nombreTipoUsuario) {
        this.nombreTipoUsuario = nombreTipoUsuario;
    }
    public Set<Usuario> getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Set<Usuario> usuarios) {
        this.usuarios = usuarios;
    }




}


