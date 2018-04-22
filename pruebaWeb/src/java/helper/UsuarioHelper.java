package helper;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojos.Usuario;
import utility.HibernateUtil;

public class UsuarioHelper {
    
    public UsuarioHelper(){
        
    }
    
    public void guardarData(String usuario, String password, String nombres, String apellidos, String email) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        Transaction tx=sesion.beginTransaction();
        
        Query query = sesion.createSQLQuery("insert into usuario(usuario,password,nombres,apellidos,email)" 
                                         + " values (:uusuario,:upassword,:unombres,:uapellidos,:uemail)");
        
        query.setParameter("uusuario", usuario);
        query.setParameter("upassword", password);
        query.setParameter("unombres", nombres);
        query.setParameter("uapellidos", apellidos);
        query.setParameter("uemail", email);
        query.executeUpdate();
        tx.commit();
        sesion.close();
    }
    
    public List<Usuario> usuarioLista() {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = sesion.beginTransaction();
        
        List<Usuario> lista = null;
        Query query = sesion.createQuery("from Usuario u");
        lista = query.list();
        tx.commit();
        sesion.close();
        return lista;
    }
    
}
