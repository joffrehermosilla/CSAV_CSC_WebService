package com.service;

import DTO.CatalogoDTO;
import DTO.DetallePedidoDTO;
import DTO.PedidoReporteDTO;
import DTO.UsuarioDTO;
import DTO.ReporteVendedorDTO;
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
    
    @POST
    @Path("getNombreUsu")
    @Produces("application/json")
    public String getNombreUsu(String data) {
        Gson gson =new Gson();        
        List lista = null;
        UsuarioDTO usuarioDTO = gson.fromJson(data, UsuarioDTO.class);
        try {
            lista = catalogoHelper.getNombrePersona(usuarioDTO.getCodigo_usuario());
        } catch(Exception e) {
            System.out.println("getNombreUsu: "+e.getMessage());
        }
        return gson.toJson(lista);
    }
    
    @GET
    @Path("getProducto")
    @Produces("application/json")
    public String getProducto() {
        Gson gson =new Gson();
        List lista = null;
        try{
            lista = catalogoHelper.getProductoList();
        }
        catch(Exception ex){
            System.out.println("getProducto: "+ex);
        }
        return gson.toJson(lista);
    }
    
    @GET
    @Path("getVendedores")
    @Produces("application/json")
    public String getVendedores() {
        Gson gson =new Gson();        
        List lista = null;
        try{
            lista = catalogoHelper.getVendedorList();
        }
        catch(Exception ex){
            System.out.println("getVendedores: "+ex);
        }
        return gson.toJson(lista);
    }
    
    @POST
    @Path("getNombreVendedor")
    @Produces("application/json")
    public String getNombreVendedor(String data) {
        Gson gson =new Gson();
        List lista = null;
        System.out.println("getNombreVendedorRRRRR ----> "+data);
        ReporteVendedorDTO vendedorDTO = gson.fromJson(data, ReporteVendedorDTO.class);
        try {
            lista = catalogoHelper.getVendedorNombre(vendedorDTO.getCodigo_venta_vendedor());
        } catch(Exception e) {
            System.out.println("getNombreVendedor: "+e.getMessage());
        }
        return gson.toJson(lista);
    }
    
    @POST
    @Path("getCodigoReporte")
    @Produces("application/json")
    public String getCodigoReporte(String data) {
        Gson gson =new Gson();
        List lista = null;
        ReporteVendedorDTO vendedorDTO = gson.fromJson(data, ReporteVendedorDTO.class);
        try {
            lista = catalogoHelper.getCodigoReporte(vendedorDTO.getCodigo_venta_vendedor());
        } catch(Exception e) {
            System.out.println("getCodigoReporte: "+e.getMessage());
        }
        return gson.toJson(lista);
    }
    
    @POST
    @Path("getDatosGenerales")
    @Produces("application/json")
    public String getDatosGenerales(String data) {
        Gson gson =new Gson();
        PedidoReporteDTO pedidoReporteDTO = gson.fromJson(data, PedidoReporteDTO.class);
        PedidoReporteDTO datos = null;
        try {
            datos = catalogoHelper.getDatosCliente(pedidoReporteDTO.getCodigo_pedido_web());
        } catch(Exception e) {
            System.out.println("getDatosGenerales: "+e);
        }
        return gson.toJson(datos);
    }
    
    @POST
    @Path("getPedido")
    @Produces("application/json")
    public String getPedido(String data) {
        Gson gson =new Gson();
        List lista = null;
        DetallePedidoDTO detallePedidoDTO = gson.fromJson(data, DetallePedidoDTO.class);
        try {
            lista = catalogoHelper.getPedidoOrden(detallePedidoDTO.getCodigo_pedido_web());
            System.out.println("aquiiii: "+lista);
        } catch(Exception e) {
            System.out.println("getPedido: "+e.getMessage());
        }
        return gson.toJson(lista);
    }
    
    //Catalogo
    @GET
    @Path("getTipoProducto")
    @Produces("application/json")
    public String getTipoProducto() {
        Gson gson =new Gson();        
        List lista = null;
        try{
            lista = catalogoHelper.getFilTipoProducto();
        }
        catch(Exception ex){
            System.out.println("getTipoProducto: "+ex);
        }
        return gson.toJson(lista);
    }
    @GET
    @Path("getNombreProducto")
    @Produces("application/json")
    public String getNombreProducto() {
        Gson gson =new Gson();        
        List lista = null;
        try{
            lista = catalogoHelper.getFilNombreProducto();
        }
        catch(Exception ex){
            System.out.println("getTipoProducto: "+ex);
        }
        return gson.toJson(lista);
    }
    @GET
    @Path("getCatalogo")
    @Produces("application/json")
    public String getCatalogo() {
        Gson gson =new Gson();        
        List lista = null;
        try{
            lista = catalogoHelper.getCatalogo();
            System.out.println("------>"+lista);
        }
        catch(Exception ex){
            System.out.println("getCatalogo: "+ex);
        }
        return gson.toJson(lista);
    }
    
    @POST
    @Path("updateCatalogo")
    @Consumes("application/json")
    public Response updateCatalogo(){
        Response respuesta = null;
        try{
            catalogoHelper.acualizaCatalogo();
            respuesta = Response.status(200).build();
        }
        catch(Exception ex){
            ex.printStackTrace();
            System.out.println("...............Exception here ____:::::" + ex);
            respuesta = Response.status(500).build();
        }
        return respuesta;
    }
    
    @POST
    @Path("quitarArticulo")
    @Produces("application/json")
    public Response quitarArticulo(String data) {
        Response respuesta = null;
        Gson gson = new Gson();
        CatalogoDTO catalogoDTO = gson.fromJson(data, CatalogoDTO.class);
        try{
            catalogoHelper.cambiarEstadoArt(catalogoDTO.getCat_codigo_producto());
            respuesta = Response.status(200).entity(catalogoDTO).build();
        }
        catch(Exception ex){
            System.out.println("...............Exception here ____:::::" + ex);
            respuesta = Response.status(500).entity(catalogoDTO).build();
        }
        return respuesta;
    }
    @GET
    @Path("getArticulosSacados")
    @Produces("application/json")
    public String getArticulosSacados() {
        Gson gson =new Gson();
        List lista = null;
        try{
            lista = catalogoHelper.getArticulos();
            System.out.println("wadawd------>"+lista);
        }
        catch(Exception ex){
            System.out.println("getArticulosSacados: "+ex);
        }
        return gson.toJson(lista);
    }
    @POST
    @Path("agregaArticulo")
    @Produces("application/json")
    public Response agregaArticulo(String data) {
        Response respuesta = null;
        Gson gson = new Gson();
        CatalogoDTO catalogoDTO = gson.fromJson(data, CatalogoDTO.class);
        try{
            catalogoHelper.agregaArticulo(catalogoDTO.getCat_codigo_producto());
            respuesta = Response.status(200).entity(catalogoDTO).build();
        }
        catch(Exception ex){
            System.out.println("...............Exception here ____:::::" + ex);
            respuesta = Response.status(500).entity(catalogoDTO).build();
        }
        return respuesta;
    }
    
    
}
