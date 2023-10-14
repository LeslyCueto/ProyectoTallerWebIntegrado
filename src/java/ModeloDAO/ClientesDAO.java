package ModeloDAO;

import Config.*;
import Interfaces.*;
import Modelo.Clientes;
import java.sql.*;
import java.util.*;
import javax.swing.JOptionPane;

public class ClientesDAO implements CRUDclientes{
    
    Conexion conexion = new Conexion();
    Connection con = conexion.getConnection();
    PreparedStatement ps;
    ResultSet rs;
    Clientes c = new Clientes();

    @Override
    public List ListarClientes() {
        ArrayList<Clientes> Lista=new ArrayList();
        String consulta = "select*from cliente where indicador='S'";
        try{
            con = conexion.getConnection();
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Clientes c = new Clientes();
                c.setIdclientes(rs.getString("idCliente"));
                c.setNombrecli(rs.getString("nombre_cliente"));
                c.setApellidocli(rs.getString("apellido_cliente"));
                c.setDni(rs.getString("dni"));
                c.setTelefono(rs.getString("telefono"));
                c.setDireccion(rs.getString("direccion"));
                Lista.add(c);
            }
        
        }catch (Exception ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede listar datos " + ex);
        }
        return Lista;
    }

    @Override
    public Clientes Obtener(String id) {
        String consulta = "select * from cliente where idCliente=?";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(consulta);
            ps.setString(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                c.setIdclientes(rs.getString("idCliente"));
                c.setNombrecli(rs.getString("nombre_cliente"));
                c.setApellidocli(rs.getString("apellido_cliente"));
                c.setDni(rs.getString("dni"));
                c.setTelefono(rs.getString("telefono"));
                c.setDireccion(rs.getString("direccion"));

            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede recuperar el cliente... " + ex);
        }
        return c;
    }

    @Override
    public boolean Agregar(Clientes cli) {
        String sqlinsert = "insert into cliente(idCliente,nombre_cliente,apellido_cliente,dni,telefono,direccion,indicador) values (?,?,?,?,?,?,'S')";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(sqlinsert);
            ps.setString(1, cli.getIdclientes());
            ps.setString(2, cli.getNombrecli());
            ps.setString(3, cli.getApellidocli());
            ps.setString(4, cli.getDni());
            ps.setString(5, cli.getTelefono());
            ps.setString(6, cli.getDireccion());
            ps.executeUpdate();
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede insertar el cliente " + ex);
        }
        return false;
    }

    @Override
    public boolean Editar(Clientes cli) {
        String sqlupdate = "update cliente set nombre_cliente=?,apellido_cliente=?,dni=?,telefono=?,direccion=? where idCliente=?";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(sqlupdate);
            ps.setString(1, cli.getNombrecli());
            ps.setString(2, cli.getApellidocli());
            ps.setString(3, cli.getDni());
            ps.setString(4, cli.getTelefono());
            ps.setString(5, cli.getDireccion());
            ps.setString(6, cli.getIdclientes());
            ps.executeUpdate();

        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "ERROR al actualizar datos " + ex);
        }
        return false;
    }

    @Override
    public boolean Eliminar(String id) {
        String sqleliminar = "update cliente set indicador='N' where idCliente=?";
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
