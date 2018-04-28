package com.service;

import DTO.UsuarioDTO;
import com.google.gson.Gson;
import com.helper.CatalogoHelper;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.POST;
import javax.ws.rs.core.Response;

@Path("catalogo")
public class CatalogoResource {

    CatalogoHelper catalogoHelper;
    
    @Context
    private UriInfo context;

    public CatalogoResource() {
        catalogoHelper = new CatalogoHelper();
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
    
//    @GET
//    @Path("getProducto")
//    @Produces("application/json")
//    public String getProducto() {
//        Gson gson =new Gson();        
//        List lista = null;
//        try{
//            lista = catalogoHelper.getProductoList();
//            System.out.println("----> "+lista );
//        }
//        catch(Exception ex){
//            ex.printStackTrace();
//        }
//        return gson.toJson(lista);
//    }
    
    @GET
    @Path("getPedido")
    @Produces("application/json")
    public String getPedido() {
        Gson gson =new Gson();        
        List lista = null;
        try{
            lista = catalogoHelper.getPedidoList();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return gson.toJson(lista);
    }
    
    @POST
    @Path("getNombreUsu")
    @Produces("application/json")
    public String getNombreUsu(String data) {
        Gson gson =new Gson();        
        List lista = null;
        UsuarioDTO usuarioDTO = gson.fromJson(data, UsuarioDTO.class);
        UsuarioDTO respuesta = null;
        try {
            lista = catalogoHelper.getNombrePersona(usuarioDTO.getCodigo_usuario());
            System.out.println("------>"+gson.toJson(respuesta));
        } catch(Exception e) {
            System.out.println("mensaje: "+e.getMessage());
        }
        return gson.toJson(lista);
    }
    
    
    
}
