package ModeloDAO;

import Config.*;
import Interfaces.*;
import Modelo.Usuarios;
import java.sql.*;
import java.util.*;
import javax.swing.JOptionPane;

public class UsuariosDAO implements CRUDusuarios {
    
    Conexion conexion = new Conexion();
    Connection con = conexion.getConnection();
    PreparedStatement ps;
    ResultSet rs;
    Usuarios u = new Usuarios();

    @Override
    public List ListarUsuarios() {
        ArrayList<Usuarios> Lista=new ArrayList();
        String consulta = "select*from usuario where indicador='S'";
        try{
            con = conexion.getConnection();
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuarios u = new Usuarios();
                u.setIdUsuario(rs.getString("idUsuario"));
                u.setNombre(rs.getString("nombre_usuario"));
                u.setApellido(rs.getString("apellido_usuario"));
                u.setPasscode(rs.getString("passcode"));
                u.setDni(rs.getString("usuario_dni"));
                u.setDireccion(rs.getString("direccion"));
                u.setTelefono(rs.getString("telefono"));
                
                Lista.add(u);
            }
        
        }catch (Exception ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede listar datos " + ex);
        }
        return Lista;
    }

    @Override
    public Usuarios Obtener(String id) {
        String consulta = "select * from usuario where idUsuario=?";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(consulta);
            ps.setString(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                u.setIdUsuario(rs.getString("idUsuario"));
                u.setNombre(rs.getString("nombre_usuario"));
                u.setApellido(rs.getString("apellido_usuario"));
                u.setPasscode(rs.getString("passcode"));
                u.setDni(rs.getString("usuario_dni"));
                u.setDireccion(rs.getString("direccion"));
                u.setTelefono(rs.getString("telefono"));

            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede recuperar el usuario... " + ex);
        }
        return u;
    }
    @Override
    public boolean Agregar(Usuarios usu) {
        String sqlinsert = "insert into usuario(idUsuario,nombre_usuario,apellido_usuario,passcode,usuario_dni,telefono,direccion,indicador) values (?,?,?,?,?,?,?,'S')";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(sqlinsert);
            ps.setString(1, usu.getIdUsuario());
            ps.setString(2, usu.getNombre());
            ps.setString(3, usu.getApellido());
            ps.setString(4, usu.getPasscode());
            ps.setString(5, usu.getDni());
            ps.setString(6, usu.getTelefono());
            ps.setString(7, usu.getDireccion());
            ps.executeUpdate();
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede insertar el usuario " + ex);
        }
        return false;
    }

    @Override
    public boolean Editar(Usuarios usu) {
        String sqlupdate = "update usuario set nombre_usuario=?,apellido_usuario=?,passcode=?,usuario_dni=?,telefono=?,direccion=? where idCliente=?";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(sqlupdate);
            ps.setString(1, usu.getNombre());
            ps.setString(2, usu.getApellido());
            ps.setString(3, usu.getPasscode());
            ps.setString(4, usu.getDni());
            ps.setString(5, usu.getTelefono());
            ps.setString(6, usu.getDireccion());
            ps.setString(7, usu.getIdUsuario());
            ps.executeUpdate();

        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "ERROR al actualizar datos " + ex);
        }
        return false;
    }

    @Override
    public boolean Eliminar(String id) {
        String sqleliminar = "update usuario set indicador='N' where idUsuario=?";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(sqleliminar);
            ps.setString(1, id);
            ps.executeUpdate();

        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "ERROR al eliminar el cliente" + ex);
        }
        return false;
    }
    
}
