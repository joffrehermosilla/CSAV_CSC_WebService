package com.service;

import DTO.ClientePreferenciaDTO;
import DTO.DetallePedidoDTO;
import DTO.ProductoxClienteDTO;
import DTO.UsuarioDTO;
import com.google.gson.Gson;
import com.helper.PreferenciaHelper;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.core.MediaType;
import java.util.List;
import javax.ws.rs.POST;
import javax.ws.rs.core.Response;

@Path("preferencia")
public class PreferenciaResource {

    PreferenciaHelper preferenciaHelper;
    @Context
    private UriInfo context;

    public PreferenciaResource() {
        preferenciaHelper = new PreferenciaHelper();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getJson() {
        //TODO return proper representation object
        throw new UnsupportedOperationException();
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void putJson(String content) {
    }
    
    @POST
    @Path("getNombreUsu")
    @Produces("application/json")
    public String getNombreUsu(String data) {
        Gson gson =new Gson();        
        List lista = null;
        UsuarioDTO usuarioDTO = gson.fromJson(data, UsuarioDTO.class);
        try {
            lista = preferenciaHelper.getNombrePersona(usuarioDTO.getCodigo_usuario());
        } catch(Exception e) {
            System.out.println("getNombreUsu: "+e.getMessage());
        }
        return gson.toJson(lista);
    }
    
    @GET
    @Path("getCatalogoCalif")
    @Produces("application/json")
    public String getCatalogoCalif() {
        Gson gson =new Gson();
        List lista = null;
        try {
            lista = preferenciaHelper.getCatalogo();
        } catch(Exception e) {
            System.out.println("getCatalogo: "+e.getMessage());
        }
        return gson.toJson(lista);
    }
 
    @GET
    @Path("getCatalogoNOCalif")
    @Produces("application/json")
    public String getCatalogoNOCalif() {
        Gson gson =new Gson();
        List lista = null;
        try {
            lista = preferenciaHelper.getProductoSinCalificar();
        } catch(Exception e) {
            System.out.println("getCatalogoNOCalif: "+e.getMessage());
        }
        return gson.toJson(lista);
    }
    
    @POST
    @Path("calificaProducto")
    @Produces("application/json")
    public Response calificaProducto(String data) {
        Response respuesta = null;
        Gson gson =new Gson();
        ProductoxClienteDTO productoxClienteDTO = gson.fromJson(data, ProductoxClienteDTO.class);
        try{
            preferenciaHelper.calificaProducto(productoxClienteDTO.getCodigo_usuario(), 
                                               productoxClienteDTO.getCodigo_producto(), 
                                               productoxClienteDTO.getCantidad_puntos());
            respuesta = Response.status(200).entity(productoxClienteDTO).build();
        }
        catch(Exception ex){
            System.out.println("calificaProducto: "+ex);
            respuesta = Response.status(500).entity(productoxClienteDTO).build();
        }
        return respuesta;
    }
    
    @GET
    @Path("getPromocionesSel")
    @Produces("application/json")
    public String getPromocionesSel() {
        Gson gson =new Gson();
        List lista = null;
        try {
            lista = preferenciaHelper.getPromociones();
        } catch(Exception e) {
            System.out.println("getPromocionesSel: "+e.getMessage());
        }
        return gson.toJson(lista);
    }
    
    @POST
    @Path("getCalificaciones")
    @Produces("application/json")
    public String getCalificaciones(String data) {
        Gson gson =new Gson();
        List lista = null;
        ClientePreferenciaDTO clientePreferenciaDTO = gson.fromJson(data, ClientePreferenciaDTO.class);
        try {
            lista = preferenciaHelper.getCalificacion(clientePreferenciaDTO.getCodigo_usuario());
        } catch(Exception e) {
            System.out.println("getCalificaciones: "+e.getMessage());
        }
        return gson.toJson(lista);
    }
    
    @POST
    @Path("generaPedido")
    @Produces("application/json")
    public Response generaPedido(String data) {
        Response respuesta = null;
        Gson gson =new Gson();
        ProductoxClienteDTO productoxClienteDTO = gson.fromJson(data, ProductoxClienteDTO.class);
        try{
            System.out.println("lista-> "+data);
            respuesta = Response.status(200).entity(productoxClienteDTO).build();
        }
        catch(Exception ex){
            respuesta = Response.status(500).entity(productoxClienteDTO).build();
        }
        return respuesta;
    }
    
    
}
