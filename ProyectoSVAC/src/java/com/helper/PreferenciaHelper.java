package com.helper;

import DTO.CatalogoDTO;
import DTO.DetallePedidoDTO;
import DTO.PedidoReporteDTO;
import DTO.ProductoCalificarDTO;
import DTO.UsuarioDTO;
import DTO.ProductoListaDTO;
import DTO.ProductoxClienteDTO;
import DTO.ReporteVendedorDTO;
import DTO.TipoProductoDTO;
import com.google.gson.Gson;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;
import com.utility.HibernateUtil;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

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
        Query q = session.createSQLQuery("SELECT * FROM catalogo WHERE fkcodigo_estadoCatalogo = 1").setResultTransformer(Transformers.aliasToBean(CatalogoDTO.class));
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
                                        "     receta_producto_tiene_insumo as interMedio ON (interMedio.fkcodigo_producto = pro.codigo_producto) INNER JOIN\n" +
                                        "     receta_producto as recPro ON (recPro.codigo_receta_producto = interMedio.fkcodigo_receta_producto) INNER JOIN\n" +
                                        "     insumo as ins ON (ins.codigo_insumo = interMedio.fkcodigo_insumo)\n" +
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
        
        Query queryUsuario = session.createSQLQuery("SELECT cli.codigo_cliente FROM cliente as cli INNER JOIN usuario as usu ON (usu.codigo_usuario = cli.fkcodigo_usuario)\n" +
                                             "WHERE (usu.codigo_usuario = :codigoUsuario)");
        queryUsuario.setParameter("codigoUsuario", codigoUsuario);
        
        List lista = queryUsuario.list();
        ProductoxClienteDTO idCliente = (ProductoxClienteDTO) lista.get(0);
        
        Query query = session.createSQLQuery("INSERT INTO cliente_tiene_preferencia(`fkcodigo_cliente`,`fkcodigo_producto`,`fecha_voto_preferencia`,`cantidad_puntos`) "
                                           + "VALUES(:codigoCliente,:codigoProducto,CURRENT_DATE,:cantidadPuntos)");
        query.setParameter("codigoCliente", idCliente);
        query.setParameter("codigoProducto", codigoProducto);
        query.setParameter("cantidadPuntos", cantidadPuntos);
        query.executeUpdate();
        transaction.commit();
        session.close();
    }
    
}
