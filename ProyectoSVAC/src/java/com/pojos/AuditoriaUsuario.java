package com.pojos;
// Generated Apr 27, 2018 1:46:45 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AuditoriaUsuario generated by hbm2java
 */
public class AuditoriaUsuario  implements java.io.Serializable {


     private Integer codigoAudiUsuario;
     private String usuario;
     private Date fechaCambio;
     private String nombreUsuarioOld;
     private String apellidoUsuarioOld;
     private Date fechaNacimientoUsuarioOld;
     private String direccionUsuarioOld;
     private String nombreLogeoUsuarioOld;
     private String passwordUsuarioOld;
     private byte[] fotoUsuarioOld;
     private Integer fkcodigoDistritoOld;
     private Integer fkcodigoTipoUsuarioOld;
     private Integer fkcodigoEstadoUsuarioOld;
     private String nombreUsuarioNew;
     private String apellidoUsuarioNew;
     private Date fechaNacimientoUsuarioNew;
     private String direccionUsuarioNew;
     private String nombreLogeoUsuarioNew;
     private String passwordUsuarioNew;
     private byte[] fotoUsuarioNew;
     private Integer fkcodigoDistritoNew;
     private Integer fkcodigoTipoUsuarioNew;
     private Integer fkcodigoEstadoUsuarioNew;

    public AuditoriaUsuario() {
    }

	
    public AuditoriaUsuario(String usuario, Date fechaCambio) {
        this.usuario = usuario;
        this.fechaCambio = fechaCambio;
    }
    public AuditoriaUsuario(String usuario, Date fechaCambio, String nombreUsuarioOld, String apellidoUsuarioOld, Date fechaNacimientoUsuarioOld, String direccionUsuarioOld, String nombreLogeoUsuarioOld, String passwordUsuarioOld, byte[] fotoUsuarioOld, Integer fkcodigoDistritoOld, Integer fkcodigoTipoUsuarioOld, Integer fkcodigoEstadoUsuarioOld, String nombreUsuarioNew, String apellidoUsuarioNew, Date fechaNacimientoUsuarioNew, String direccionUsuarioNew, String nombreLogeoUsuarioNew, String passwordUsuarioNew, byte[] fotoUsuarioNew, Integer fkcodigoDistritoNew, Integer fkcodigoTipoUsuarioNew, Integer fkcodigoEstadoUsuarioNew) {
       this.usuario = usuario;
       this.fechaCambio = fechaCambio;
       this.nombreUsuarioOld = nombreUsuarioOld;
       this.apellidoUsuarioOld = apellidoUsuarioOld;
       this.fechaNacimientoUsuarioOld = fechaNacimientoUsuarioOld;
       this.direccionUsuarioOld = direccionUsuarioOld;
       this.nombreLogeoUsuarioOld = nombreLogeoUsuarioOld;
       this.passwordUsuarioOld = passwordUsuarioOld;
       this.fotoUsuarioOld = fotoUsuarioOld;
       this.fkcodigoDistritoOld = fkcodigoDistritoOld;
       this.fkcodigoTipoUsuarioOld = fkcodigoTipoUsuarioOld;
       this.fkcodigoEstadoUsuarioOld = fkcodigoEstadoUsuarioOld;
       this.nombreUsuarioNew = nombreUsuarioNew;
       this.apellidoUsuarioNew = apellidoUsuarioNew;
       this.fechaNacimientoUsuarioNew = fechaNacimientoUsuarioNew;
       this.direccionUsuarioNew = direccionUsuarioNew;
       this.nombreLogeoUsuarioNew = nombreLogeoUsuarioNew;
       this.passwordUsuarioNew = passwordUsuarioNew;
       this.fotoUsuarioNew = fotoUsuarioNew;
       this.fkcodigoDistritoNew = fkcodigoDistritoNew;
       this.fkcodigoTipoUsuarioNew = fkcodigoTipoUsuarioNew;
       this.fkcodigoEstadoUsuarioNew = fkcodigoEstadoUsuarioNew;
    }
   
    public Integer getCodigoAudiUsuario() {
        return this.codigoAudiUsuario;
    }
    
    public void setCodigoAudiUsuario(Integer codigoAudiUsuario) {
        this.codigoAudiUsuario = codigoAudiUsuario;
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
    public String getNombreUsuarioOld() {
        return this.nombreUsuarioOld;
    }
    
    public void setNombreUsuarioOld(String nombreUsuarioOld) {
        this.nombreUsuarioOld = nombreUsuarioOld;
    }
    public String getApellidoUsuarioOld() {
        return this.apellidoUsuarioOld;
    }
    
    public void setApellidoUsuarioOld(String apellidoUsuarioOld) {
        this.apellidoUsuarioOld = apellidoUsuarioOld;
    }
    public Date getFechaNacimientoUsuarioOld() {
        return this.fechaNacimientoUsuarioOld;
    }
    
    public void setFechaNacimientoUsuarioOld(Date fechaNacimientoUsuarioOld) {
        this.fechaNacimientoUsuarioOld = fechaNacimientoUsuarioOld;
    }
    public String getDireccionUsuarioOld() {
        return this.direccionUsuarioOld;
    }
    
    public void setDireccionUsuarioOld(String direccionUsuarioOld) {
        this.direccionUsuarioOld = direccionUsuarioOld;
    }
    public String getNombreLogeoUsuarioOld() {
        return this.nombreLogeoUsuarioOld;
    }
    
    public void setNombreLogeoUsuarioOld(String nombreLogeoUsuarioOld) {
        this.nombreLogeoUsuarioOld = nombreLogeoUsuarioOld;
    }
    public String getPasswordUsuarioOld() {
        return this.passwordUsuarioOld;
    }
    
    public void setPasswordUsuarioOld(String passwordUsuarioOld) {
        this.passwordUsuarioOld = passwordUsuarioOld;
    }
    public byte[] getFotoUsuarioOld() {
        return this.fotoUsuarioOld;
    }
    
    public void setFotoUsuarioOld(byte[] fotoUsuarioOld) {
        this.fotoUsuarioOld = fotoUsuarioOld;
    }
    public Integer getFkcodigoDistritoOld() {
        return this.fkcodigoDistritoOld;
    }
    
    public void setFkcodigoDistritoOld(Integer fkcodigoDistritoOld) {
        this.fkcodigoDistritoOld = fkcodigoDistritoOld;
    }
    public Integer getFkcodigoTipoUsuarioOld() {
        return this.fkcodigoTipoUsuarioOld;
    }
    
    public void setFkcodigoTipoUsuarioOld(Integer fkcodigoTipoUsuarioOld) {
        this.fkcodigoTipoUsuarioOld = fkcodigoTipoUsuarioOld;
    }
    public Integer getFkcodigoEstadoUsuarioOld() {
        return this.fkcodigoEstadoUsuarioOld;
    }
    
    public void setFkcodigoEstadoUsuarioOld(Integer fkcodigoEstadoUsuarioOld) {
        this.fkcodigoEstadoUsuarioOld = fkcodigoEstadoUsuarioOld;
    }
    public String getNombreUsuarioNew() {
        return this.nombreUsuarioNew;
    }
    
    public void setNombreUsuarioNew(String nombreUsuarioNew) {
        this.nombreUsuarioNew = nombreUsuarioNew;
    }
    public String getApellidoUsuarioNew() {
        return this.apellidoUsuarioNew;
    }
    
    public void setApellidoUsuarioNew(String apellidoUsuarioNew) {
        this.apellidoUsuarioNew = apellidoUsuarioNew;
    }
    public Date getFechaNacimientoUsuarioNew() {
        return this.fechaNacimientoUsuarioNew;
    }
    
    public void setFechaNacimientoUsuarioNew(Date fechaNacimientoUsuarioNew) {
        this.fechaNacimientoUsuarioNew = fechaNacimientoUsuarioNew;
    }
    public String getDireccionUsuarioNew() {
        return this.direccionUsuarioNew;
    }
    
    public void setDireccionUsuarioNew(String direccionUsuarioNew) {
        this.direccionUsuarioNew = direccionUsuarioNew;
    }
    public String getNombreLogeoUsuarioNew() {
        return this.nombreLogeoUsuarioNew;
    }
    
    public void setNombreLogeoUsuarioNew(String nombreLogeoUsuarioNew) {
        this.nombreLogeoUsuarioNew = nombreLogeoUsuarioNew;
    }
    public String getPasswordUsuarioNew() {
        return this.passwordUsuarioNew;
    }
    
    public void setPasswordUsuarioNew(String passwordUsuarioNew) {
        this.passwordUsuarioNew = passwordUsuarioNew;
    }
    public byte[] getFotoUsuarioNew() {
        return this.fotoUsuarioNew;
    }
    
    public void setFotoUsuarioNew(byte[] fotoUsuarioNew) {
        this.fotoUsuarioNew = fotoUsuarioNew;
    }
    public Integer getFkcodigoDistritoNew() {
        return this.fkcodigoDistritoNew;
    }
    
    public void setFkcodigoDistritoNew(Integer fkcodigoDistritoNew) {
        this.fkcodigoDistritoNew = fkcodigoDistritoNew;
    }
    public Integer getFkcodigoTipoUsuarioNew() {
        return this.fkcodigoTipoUsuarioNew;
    }
    
    public void setFkcodigoTipoUsuarioNew(Integer fkcodigoTipoUsuarioNew) {
        this.fkcodigoTipoUsuarioNew = fkcodigoTipoUsuarioNew;
    }
    public Integer getFkcodigoEstadoUsuarioNew() {
        return this.fkcodigoEstadoUsuarioNew;
    }
    
    public void setFkcodigoEstadoUsuarioNew(Integer fkcodigoEstadoUsuarioNew) {
        this.fkcodigoEstadoUsuarioNew = fkcodigoEstadoUsuarioNew;
    }




}

