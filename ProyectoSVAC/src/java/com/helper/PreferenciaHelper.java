package com.helper;

import DTO.CatalogoDTO;
import DTO.ClientePreferenciaDTO;
import DTO.DetallePedidoDTO;
import DTO.ProductoCalificarDTO;
import DTO.UsuarioDTO;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;
import com.utility.HibernateUtil;

public class PreferenciaHelper {

    public PreferenciaHelper() {
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
    
    public List<CatalogoDTO> getCatalogo(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT * FROM catalogo as cat WHERE fkcodigo_estadoCatalogo = 1 ORDER BY cat.promedioTotalProd DESC").setResultTransformer(Transformers.aliasToBean(CatalogoDTO.class));
        List<CatalogoDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    
    public List<ProductoCalificarDTO> getProductoSinCalificar(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT pro.codigo_producto, pro.nombre_producto, tiPro.nombre_tipo_producto, tiPro.tiempoenhorno_tipo_producto, tiPro.temperaturaenhorno_tipo_producto,\n" +
                                        "	 pro.foto_producto, pro.preparacion_producto, pro.colores_producto,	ins.nombre_insumo, \n" +
                                        "        recPro.modelo_receta_producto\n" +
                                        "FROM producto as pro INNER JOIN tipo_producto as tiPro ON (pro.fkcodigo_tipo_producto = tiPro.codigo_tipo_producto) INNER JOIN\n" +
                                        "     rece_produ_ti_insumo as interMedio ON (interMedio.fk_codigo_producto = pro.codigo_producto) INNER JOIN\n" +
                                        "     receta_producto as recPro ON (recPro.codigo_receta_producto = interMedio.fk_codigo_receta_producto) INNER JOIN\n" +
                                        "     insumo as ins ON (ins.codigo_insumo = interMedio.fk_codigo_insumo)\n" +
                                        "GROUP BY pro.nombre_producto\n" +
                                        "ORDER BY pro.nombre_producto ASC").setResultTransformer(Transformers.aliasToBean(ProductoCalificarDTO.class));
        List<ProductoCalificarDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    
    public void calificaProducto(int codigoUsuario, int codigoProducto, float cantidadPuntos){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createSQLQuery("CALL sp_calificaProducto(:codigoUsuario,:codigoProducto,:cantidadPuntos)");
        query.setParameter("codigoUsuario", codigoUsuario);
        query.setParameter("codigoProducto", codigoProducto);
        query.setParameter("cantidadPuntos", cantidadPuntos);
        query.executeUpdate();
        transaction.commit();
        session.close();
    }
    
    public List<DetallePedidoDTO> getPromociones(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT `codigo_promocion_venta`,`cantidad_sku_pedido`,`descuento_sku_pedido`,`fecha_inicio_promocion`,`fecha_expiracion_promocion`,`descripcion_promocion` FROM `promocion_venta`").setResultTransformer(Transformers.aliasToBean(DetallePedidoDTO.class));
        List<DetallePedidoDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    
    public List<ClientePreferenciaDTO> getCalificacion(int codigoUsuario){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT cliPref.fecha_voto_preferencia, pro.nombre_producto, cliPref.cantidad_puntos \n" +
                                         "FROM   cliente_tiene_preferencia as cliPref INNER JOIN\n" +
                                         "       cliente as cli ON (cliPref.fkcodigo_cliente = cli.codigo_cliente) INNER JOIN\n" +
                                         "       usuario as usu ON (cli.fkcodigo_usuario = usu.codigo_usuario) INNER JOIN\n" +
                                         "       producto as pro ON (cliPref.fkcodigo_producto = pro.codigo_producto)\n" +
                                         "WHERE (usu.codigo_usuario = :codigoUsuario)\n" +
                                         "ORDER BY cliPref.fecha_voto_preferencia DESC").setResultTransformer(Transformers.aliasToBean(ClientePreferenciaDTO.class));
        q.setParameter("codigoUsuario", codigoUsuario);
        List<ClientePreferenciaDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    
}
