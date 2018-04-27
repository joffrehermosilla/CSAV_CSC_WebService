package com.helper;

import DTO.UsuarioDTO;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;
import com.utility.HibernateUtil;

public class PrincipalHelper {
    
    public PrincipalHelper() {
        
    }
    
    public UsuarioDTO iniciarSession(UsuarioDTO usuarioDTO) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createSQLQuery("select codigo_usuario, usuario.fkcodigo_tipo_usuario from usuario\n" +
                                             "where nombre_logeo_usuario = :nombreUsuario and password_usuario = :passwordUsuario").setResultTransformer(Transformers.aliasToBean(UsuarioDTO.class));
        query.setParameter("nombreUsuario", usuarioDTO.getNombre_logeo_usuario());
        query.setParameter("passwordUsuario", usuarioDTO.getPassword_usuario());
        List lista = query.list();
        UsuarioDTO respuesta = null;
        if(!lista.isEmpty()){
            respuesta = (UsuarioDTO) lista.get(0);
        }
        transaction.commit();
        session.close();
        return respuesta;
    }
    
    
}
