package com.service;

import DTO.UsuarioDTO;
import com.google.gson.Gson;
import com.helper.PrincipalHelper;
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

@Path("principal")
public class PrincipalResource {

    PrincipalHelper principalhelper;
    
    @Context
    private UriInfo context;

    public PrincipalResource() {
        principalhelper = new PrincipalHelper();
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
    @Path("loginUsuario")
    @Produces("application/json")
    public String loginUsuario(String data) {
        Gson gson = new Gson();
        System.out.println("aaawdwd: "+data);
        UsuarioDTO usuarioDTO = gson.fromJson(data, UsuarioDTO.class);
        UsuarioDTO respuesta = null;
        try {
            respuesta = principalhelper.iniciarSession(usuarioDTO);
        }catch(NullPointerException e){
            System.out.println("loginUsuario controlado aqui.."+e.getMessage());
        }
        return gson.toJson(respuesta);
    }
    
}
