package services;

import DTO.UsuarioDTO;
import com.google.gson.Gson;
import helper.UsuarioHelper;
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

@Path("pruebaRest")
public class UsuarioResource {
    
    private UsuarioHelper helper;
    @Context
    private UriInfo context;

    public UsuarioResource() {
        helper = new UsuarioHelper();
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
    
    @GET
    @Path("getUsuarioList")
    @Produces("application/json")
    public String getUsuarioList() {
        Gson gson = new Gson();
        List<UsuarioDTO> lista = null;
        try {
            lista = new ArrayList(helper.usuarioLista());
        }catch(Exception e){
            e.printStackTrace();
        }
        return "{\"user\":+"+gson.toJson(lista)+"}";
    }
    
    @POST
    @Path("saveDataUsuario")
    @Consumes("application/json")
    public Response saveDataUsuario(String data) {
        Response resultado = null;
        Gson gson = new Gson();
        System.out.println("---->"+data);
        UsuarioDTO usuario = gson.fromJson(data, UsuarioDTO.class);
        try {
            helper.guardarData(usuario.getUsuario(), usuario.getPassword(), 
                               usuario.getNombres(), usuario.getApellidos(), usuario.getEmail());
            resultado = Response.status(200).entity(usuario).build();
        }catch(Exception e){
            System.out.println("Mensaje: "+e);
            resultado = Response.status(500).entity(usuario).build();
        }
        return resultado;
    }
    
}
