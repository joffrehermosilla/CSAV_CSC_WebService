package com.helper;

import DTO.CatalogoDTO;
import DTO.DetallePedidoDTO;
import DTO.PedidoReporteDTO;
import DTO.UsuarioDTO;
import DTO.ProductoListaDTO;
import DTO.ReporteVendedorDTO;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;
import com.utility.HibernateUtil;

public class CatalogoHelper {
    
    public CatalogoHelper() {
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
    
    public List<ProductoListaDTO> getProductoList(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT * FROM lista_producto").setResultTransformer(Transformers.aliasToBean(ProductoListaDTO.class));
        List<ProductoListaDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    
    public List<ReporteVendedorDTO> getVendedorList(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT `codigo_venta_vendedor` FROM `vendedor`").setResultTransformer(Transformers.aliasToBean(ReporteVendedorDTO.class));
        List<ReporteVendedorDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    
    public List<ReporteVendedorDTO> getVendedorNombre(String codigoVentaVendedor){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT usu.nombre_usuario, usu.apellido_usuario\n" +
                                         "FROM   vendedor as ven INNER JOIN\n" +
                                         "usuario as usu ON (ven.fkcodigo_usuario = usu.codigo_usuario)\n" +
                                         "WHERE	(ven.codigo_venta_vendedor = :codigoVentaVendedor)").setResultTransformer(Transformers.aliasToBean(ReporteVendedorDTO.class));
        q.setParameter("codigoVentaVendedor", codigoVentaVendedor);
        List<ReporteVendedorDTO> lista = q.list();
        transaction.commit();
        session.close();
        return lista;
    }
    
    public List<ReporteVendedorDTO> getCodigoReporte(String codigoVentaVendedor){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT cliPed.codigo_pedido_web, CONCAT('REP','_0',cliPed.codigo_pedido_web,':',cli.fkcodigo_usuario) as codigo_reporte\n" +
                                         "FROM   vendedor as ven INNER JOIN \n" +
                                         "       cliente_tiene_pedido as cliPed ON (ven.codigo_vendedor = cliPed.fkcodigo_vendedor) INNER JOIN\n" +
                                         "       cliente as cli ON (cli.codigo_cliente = cliPed.fkcodigo_cliente)\n" +
                                         "WHERE (ven.codigo_venta_vendedor = :codigoVentaVendedor)").setResultTransformer(Transformers.aliasToBean(ReporteVendedorDTO.class));
        q.setParameter("codigoVentaVendedor", codigoVentaVendedor);
        List<ReporteVendedorDTO> lista = q.list();
        transaction.commit();
        session.close();
        return lista;
    }
    
    public PedidoReporteDTO getDatosCliente(int codigoPedido){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT CONCAT(usu.nombre_usuario,' ',usu.apellido_usuario) as nombreCompleto, cliPed.fecha_pedido, usu.direccion_usuario,cliPed.precio_uni_desc_igv, igv.porcentaje_igv_venta, cliPed.precio_uni_desc_sin_igv\n" +
                                         "FROM usuario as usu INNER JOIN cliente as cli ON (usu.codigo_usuario = cli.fkcodigo_usuario) INNER JOIN\n" +
                                         "     cliente_tiene_pedido as cliPed ON (cli.codigo_cliente = cliPed.fkcodigo_cliente) INNER JOIN\n" +
                                         "     igv_venta as igv ON (cliPed.fkcodigo_igv_venta = igv.codigo_igv_venta)\n" +
                                         "WHERE	(cliPed.codigo_pedido_web = :codigoPedido)").setResultTransformer(Transformers.aliasToBean(PedidoReporteDTO.class));
        q.setParameter("codigoPedido", codigoPedido);
        PedidoReporteDTO result = (PedidoReporteDTO) q.list().get(0);
        transaction.commit();
        session.close();
        return result;
    }
    
    public List<DetallePedidoDTO> getPedidoOrden(int codigoPedido){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT cliPed.codigo_pedido_web, pro.codigo_producto, pro.nombre_producto, proPed.valor_neto, proPed.cantidad_producto as cantidadProductoPed\n" +
                                         "FROM   producto as pro INNER JOIN producto_por_pedido as proPed ON (pro.codigo_producto = proPed.fkcodigo_producto) INNER JOIN\n" +
                                         "	 cliente_tiene_pedido as cliPed ON (cliPed.codigo_pedido_web = proPed.fkcodigo_pedido_web)\n" +
                                         "WHERE (cliPed.codigo_pedido_web = :codigoPedido)").setResultTransformer(Transformers.aliasToBean(DetallePedidoDTO.class));
        q.setParameter("codigoPedido", codigoPedido);
        List<DetallePedidoDTO> lista = q.list();
        transaction.commit();
        session.close();
        return lista;
    }
 
    public List<CatalogoDTO> getCatalogo(String listaCatalogo){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query queryCalif = session.createSQLQuery("SELECT * FROM catalogo as cat WHERE fkcodigo_estadoCatalogo = 1 ORDER BY cat.promedioTotalProd DESC").setResultTransformer(Transformers.aliasToBean(CatalogoDTO.class));
        Query queryCantidad = session.createSQLQuery("SELECT * FROM catalogo as cat WHERE fkcodigo_estadoCatalogo = 1 ORDER BY cat.cantidadMasPedido DESC").setResultTransformer(Transformers.aliasToBean(CatalogoDTO.class));
        List<CatalogoDTO> resultList = null;
        if("lista_A".equals(listaCatalogo)) {
            resultList = queryCalif.list();
        } else if("lista_B".equals(listaCatalogo)) {
            resultList = queryCantidad.list();
        }
        transaction.commit();
        session.close();
        return resultList;
    }
    
    public void actualizaCatalogo(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createSQLQuery("CALL sp_catalogo");
        query.executeUpdate();
        transaction.commit();
        session.close();
    }
    
    public void quitaArticuloCat(int codigoProducto){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createSQLQuery("CALL sp_cambiaEstadoArticulo(:codigoProducto)");
        query.setParameter("codigoProducto", codigoProducto);
        query.executeUpdate();
        transaction.commit();
        session.close();
    }
    public List<CatalogoDTO> getArticulosSacados(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT cat.cat_codigo_producto, cat.cat_nombre_producto \n" +
                                         "FROM catalogo as cat INNER JOIN estado_catalogo as estCat \n" +
                                         "ON (cat.fkcodigo_estadoCatalogo = estCat.codigo_estadoCatalogo)\n" +
                                         "WHERE fkcodigo_estadoCatalogo = 2").setResultTransformer(Transformers.aliasToBean(CatalogoDTO.class));
        List<CatalogoDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    public List<ProductoListaDTO> getProductosMINUS(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT pro.codigo_producto, pro.nombre_producto FROM lista_producto as pro\n" +
                                         "LEFT JOIN (SELECT cat.cat_codigo_producto as codigo_producto, cat.cat_nombre_producto as nombre_producto \n" +
                                         "           FROM catalogo as cat) as t2 USING (codigo_producto, nombre_producto)\n" +
                                         "WHERE (t2.codigo_producto IS NULL);").setResultTransformer(Transformers.aliasToBean(ProductoListaDTO.class));
        List<ProductoListaDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    
    public void agregaArticulo(int codigoProducto){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query temp = session.createSQLQuery("SELECT COUNT(*) FROM catalogo WHERE cat_codigo_producto = :codProd");
        temp.setParameter("codProd", codigoProducto);
        int hayProd = Integer.parseInt(temp.list().get(0).toString());
        Query querA, querB;
        if(hayProd == 1) {
            querA = session.createSQLQuery("CALL sp_agregaArticulo(:codigoProducto)");
            querA.setParameter("codigoProducto", codigoProducto);
            querA.executeUpdate();
        } else {
            querB = session.createSQLQuery("CALL sp_insertaArtCat(:codigoProducto)");
            querB.setParameter("codigoProducto", codigoProducto);
            querB.executeUpdate();
        }
        transaction.commit();
        session.close();
    }
    
    
}
