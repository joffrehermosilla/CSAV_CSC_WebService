package com.helper;

import DTO.UsuarioDTO;
import DTO.ProductoListaDTO;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;
import com.utility.HibernateUtil;

public class CatalogoHelper {
    
    public CatalogoHelper() {
    }
    
//    public List<ProductoListaDTO> getProductoList(){
//        Session session = HibernateUtil.getSessionFactory().openSession();
//        Transaction transaction = session.beginTransaction();
//        Query q = session.createSQLQuery("SELECT * FROM lista_producto").setResultTransformer(Transformers.aliasToBean(ProductoListaDTO.class));
//        List<ProductoListaDTO> resultList=q.list();
//        transaction.commit();
//        session.close();
//        return resultList;
//    }
    
    public List<ProductoListaDTO> getPedidoList(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT codigo_producto, nombre_producto, stock_producto, colores_producto FROM producto").setResultTransformer(Transformers.aliasToBean(ProductoListaDTO.class));
        List<ProductoListaDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    
    public List<UsuarioDTO> getNombrePersona(int codigoUsuario){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT nombre_usuario, apellido_usuario FROM usuario where codigo_usuario = :codigoUsuario").setResultTransformer(Transformers.aliasToBean(UsuarioDTO.class));
        q.setParameter("codigoUsuario", codigoUsuario);
        List<UsuarioDTO> lista = q.list();
        transaction.commit();
        session.close();
        return lista;
    }
    
    
}
