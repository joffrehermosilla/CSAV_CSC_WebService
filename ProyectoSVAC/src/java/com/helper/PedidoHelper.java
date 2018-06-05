package com.helper;

import DTO.CatalogoDTO;
import DTO.DetallePedidoDTO;
import DTO.PedidoClienteDTO;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;
import com.utility.HibernateUtil;

public class PedidoHelper {

    public PedidoHelper(){
    }
    
    public List<CatalogoDTO> getPedidoStandBy(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT cliPed.codigo_pedido_web, cliPed.fecha_pedido, cliPed.fecha_entrega, usu.direccion_usuario, dist.nombre_distrito,  \n" +
                                         "	 CONCAT(usu.nombre_usuario,' ',usu.apellido_usuario) as nombreCompleto, cli.ruc_cliente, vend.codigo_venta_vendedor\n" +
                                         "FROM cliente_tiene_pedido as cliPed INNER JOIN \n" +
                                         "     cliente as cli  ON (cliPed.fkcodigo_cliente = cli.codigo_cliente) INNER JOIN\n" +
                                         "     vendedor as vend ON (cliPed.fkcodigo_vendedor = vend.codigo_vendedor) INNER JOIN\n" +
                                         "     usuario as usu ON (usu.codigo_usuario = cli.fkcodigo_usuario) INNER JOIN\n" +
                                         "     distrito as dist ON (usu.fkcodigo_distrito = dist.codigo_distrito)\n" +
                                         "WHERE (cliPed.fkcodigo_estado_cliente_tiene_pedido IS NULL)\n" +
                                         "ORDER BY fecha_pedido DESC").setResultTransformer(Transformers.aliasToBean(PedidoClienteDTO.class));
        List<CatalogoDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    public List<CatalogoDTO> getPedidoAceptado(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT cliPed.codigo_pedido_web, cliPed.fecha_pedido, cliPed.fecha_entrega, usu.direccion_usuario, dist.nombre_distrito,  \n" +
                                         "	 CONCAT(usu.nombre_usuario,' ',usu.apellido_usuario) as nombreCompleto, cli.ruc_cliente, vend.codigo_venta_vendedor\n" +
                                         "FROM cliente_tiene_pedido as cliPed INNER JOIN \n" +
                                         "     cliente as cli  ON (cliPed.fkcodigo_cliente = cli.codigo_cliente) INNER JOIN\n" +
                                         "     vendedor as vend ON (cliPed.fkcodigo_vendedor = vend.codigo_vendedor) INNER JOIN\n" +
                                         "     usuario as usu ON (usu.codigo_usuario = cli.fkcodigo_usuario) INNER JOIN\n" +
                                         "     distrito as dist ON (usu.fkcodigo_distrito = dist.codigo_distrito)\n" +
                                         "WHERE (cliPed.fkcodigo_estado_cliente_tiene_pedido = 3)\n" +
                                         "ORDER BY fecha_pedido DESC").setResultTransformer(Transformers.aliasToBean(PedidoClienteDTO.class));
        List<CatalogoDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    public List<CatalogoDTO> getPedidoFacturado(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT cliPed.codigo_pedido_web, cliPed.fecha_pedido, cliPed.fecha_entrega, usu.direccion_usuario, dist.nombre_distrito,  \n" +
                                         "	 CONCAT(usu.nombre_usuario,' ',usu.apellido_usuario) as nombreCompleto, cli.ruc_cliente, vend.codigo_venta_vendedor\n" +
                                         "FROM cliente_tiene_pedido as cliPed INNER JOIN \n" +
                                         "     cliente as cli  ON (cliPed.fkcodigo_cliente = cli.codigo_cliente) INNER JOIN\n" +
                                         "     vendedor as vend ON (cliPed.fkcodigo_vendedor = vend.codigo_vendedor) INNER JOIN\n" +
                                         "     usuario as usu ON (usu.codigo_usuario = cli.fkcodigo_usuario) INNER JOIN\n" +
                                         "     distrito as dist ON (usu.fkcodigo_distrito = dist.codigo_distrito)\n" +
                                         "WHERE (cliPed.fkcodigo_estado_cliente_tiene_pedido = 4)\n" +
                                         "ORDER BY fecha_pedido DESC").setResultTransformer(Transformers.aliasToBean(PedidoClienteDTO.class));
        List<CatalogoDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    public List<CatalogoDTO> getPedidoBloqueadoCredito(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT cliPed.codigo_pedido_web, cliPed.fecha_pedido, cliPed.fecha_entrega, usu.direccion_usuario, dist.nombre_distrito,  \n" +
                                         "	 CONCAT(usu.nombre_usuario,' ',usu.apellido_usuario) as nombreCompleto, cli.ruc_cliente, vend.codigo_venta_vendedor\n" +
                                         "FROM cliente_tiene_pedido as cliPed INNER JOIN \n" +
                                         "     cliente as cli  ON (cliPed.fkcodigo_cliente = cli.codigo_cliente) INNER JOIN\n" +
                                         "     vendedor as vend ON (cliPed.fkcodigo_vendedor = vend.codigo_vendedor) INNER JOIN\n" +
                                         "     usuario as usu ON (usu.codigo_usuario = cli.fkcodigo_usuario) INNER JOIN\n" +
                                         "     distrito as dist ON (usu.fkcodigo_distrito = dist.codigo_distrito)\n" +
                                         "WHERE (cliPed.fkcodigo_estado_cliente_tiene_pedido = 1)\n" +
                                         "ORDER BY fecha_pedido DESC").setResultTransformer(Transformers.aliasToBean(PedidoClienteDTO.class));
        List<CatalogoDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    public List<CatalogoDTO> getPedidoRechazadoCredito(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT cliPed.codigo_pedido_web, cliPed.fecha_pedido, cliPed.fecha_entrega, usu.direccion_usuario, dist.nombre_distrito,  \n" +
                                         "	 CONCAT(usu.nombre_usuario,' ',usu.apellido_usuario) as nombreCompleto, cli.ruc_cliente, vend.codigo_venta_vendedor\n" +
                                         "FROM cliente_tiene_pedido as cliPed INNER JOIN \n" +
                                         "     cliente as cli  ON (cliPed.fkcodigo_cliente = cli.codigo_cliente) INNER JOIN\n" +
                                         "     vendedor as vend ON (cliPed.fkcodigo_vendedor = vend.codigo_vendedor) INNER JOIN\n" +
                                         "     usuario as usu ON (usu.codigo_usuario = cli.fkcodigo_usuario) INNER JOIN\n" +
                                         "     distrito as dist ON (usu.fkcodigo_distrito = dist.codigo_distrito)\n" +
                                         "WHERE (cliPed.fkcodigo_estado_cliente_tiene_pedido = 2)\n" +
                                         "ORDER BY fecha_pedido DESC").setResultTransformer(Transformers.aliasToBean(PedidoClienteDTO.class));
        List<CatalogoDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    public List<CatalogoDTO> getPedidoNoAtendido(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query q = session.createSQLQuery("SELECT cliPed.codigo_pedido_web, cliPed.fecha_pedido, cliPed.fecha_entrega, usu.direccion_usuario, dist.nombre_distrito,  \n" +
                                         "	 CONCAT(usu.nombre_usuario,' ',usu.apellido_usuario) as nombreCompleto, cli.ruc_cliente, vend.codigo_venta_vendedor\n" +
                                         "FROM cliente_tiene_pedido as cliPed INNER JOIN \n" +
                                         "     cliente as cli  ON (cliPed.fkcodigo_cliente = cli.codigo_cliente) INNER JOIN\n" +
                                         "     vendedor as vend ON (cliPed.fkcodigo_vendedor = vend.codigo_vendedor) INNER JOIN\n" +
                                         "     usuario as usu ON (usu.codigo_usuario = cli.fkcodigo_usuario) INNER JOIN\n" +
                                         "     distrito as dist ON (usu.fkcodigo_distrito = dist.codigo_distrito)\n" +
                                         "WHERE (cliPed.fkcodigo_estado_cliente_tiene_pedido = 5)\n" +
                                         "ORDER BY fecha_pedido DESC").setResultTransformer(Transformers.aliasToBean(PedidoClienteDTO.class));
        List<CatalogoDTO> resultList=q.list();
        transaction.commit();
        session.close();
        return resultList;
    }
    
    public void cambiaEstadoPedido(int codigoPedido, int codigoEstado){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createSQLQuery("CALL sp_cambiaEstadoPedido(:codigoPedido, :codigoEstado)");
        query.setParameter("codigoPedido", codigoPedido);
        if(codigoEstado == 0) {
            query.setParameter("codigoEstado", null);
        } else {
            query.setParameter("codigoEstado", codigoEstado);
        }
        query.executeUpdate();
        transaction.commit();
        session.close();
    }
    public DetallePedidoDTO mostrarDetallePed(DetallePedidoDTO detallePedidoDTO) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createSQLQuery("SELECT cliPed.descuento_web_pedido, cliPed.precio_uni_desc_igv, cliPed.precio_uni_desc_sin_igv, cliPed.cantidad_producto, cliPed.monto_por_descuentos, \n" +
                                             "	     cliPed.fkcodigo_igv_venta, fact.nombre_factura_cliente_tiene_pedido, promo.descuento_sku_pedido, promo.descripcion_promocion \n" +
                                             "FROM cliente_tiene_pedido as cliPed INNER JOIN\n" +
                                             "	   factura_c_tiene_pedido as fact ON (cliPed.fkcodigo_factura_cliente_tiene_pedido = fact.codigo_factura_cliente_tiene_pedido) INNER JOIN \n" +
                                             "     promocion_venta as promo ON (promo.codigo_promocion_venta = cliPed.fkcodigo_promocion_venta) \n" +
                                             "WHERE (cliPed.codigo_pedido_web = :codigoPedido)").setResultTransformer(Transformers.aliasToBean(DetallePedidoDTO.class));
        query.setParameter("codigoPedido", detallePedidoDTO.getCodigo_pedido_web());
        List lista = query.list();
        DetallePedidoDTO respuesta = (DetallePedidoDTO)lista.get(0);
        transaction.commit();
        session.close();
        return respuesta;
    }
    
}
