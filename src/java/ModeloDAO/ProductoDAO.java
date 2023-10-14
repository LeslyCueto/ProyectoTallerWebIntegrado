package ModeloDAO;

import Config.*;
import Interfaces.*;
import Modelo.Productos;
import java.sql.*;
import java.util.*;
import javax.swing.JOptionPane;

public class ProductoDAO implements CRUDproductos{
    
    Conexion conexion = new Conexion();
    Connection con = conexion.getConnection();
    PreparedStatement ps;
    ResultSet rs;
    Productos p = new Productos();

    @Override
    public List ListarProductos() {
        ArrayList<Productos> Lista = new ArrayList();
        String consulta = "select*from productos where indicador='S'";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Productos p = new Productos();
                p.setIdproductos(rs.getString("idproducto"));
                p.setIdcategoria(rs.getString("idcategoria"));
                p.setNombreproducto(rs.getString("nombreproducto"));
                p.setDescripcion(rs.getString("descripcion"));
                p.setCantidadproducto(rs.getString("cantidadproducto"));
                p.setPreciounidad(rs.getDouble("preciounidad"));
                p.setFechavencimiento(rs.getString("fechavencimiento"));
                p.setStock(rs.getInt("stock"));
                Lista.add(p);
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede listar datos " + ex);
        }
        return Lista;
    }
    
    @Override
    public Productos Obtener(String id) {
        String consulta = "select * from productos where idproducto=?";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(consulta);
            ps.setString(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                p.setIdproductos(rs.getString("idproducto"));
                p.setNombreproducto(rs.getString("nombreproducto"));
                p.setIdcategoria(rs.getString("idcategoria"));
                p.setDescripcion(rs.getString("descripcion"));
                p.setCantidadproducto(rs.getString("cantidadproducto"));
                p.setPreciounidad(rs.getDouble("preciounidad"));
                p.setFechavencimiento(rs.getString("fechavencimiento"));
                p.setStock(rs.getInt("stock"));

            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede recuperar el producto... " + ex);
        }
        return p;
    }

    @Override
    public boolean Agregar(Productos prod) {
        String sqlinsert = "insert into productos(idproducto,nombreproducto,idCategoria,descripcion,cantidadproducto,preciounidad,fechavencimiento,stock,indicador) values (?,?,?,?,?,?,?,?,'S')";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(sqlinsert);
            ps.setString(1, prod.getIdproductos());
            ps.setString(2, prod.getNombreproducto());
            ps.setString(3, prod.getIdcategoria());
            ps.setString(4, prod.getDescripcion());
            ps.setString(5, prod.getCantidadproducto());
            ps.setDouble(6, prod.getPreciounidad());
            ps.setString(7, prod.getFechavencimiento());
            ps.setInt(8, prod.getStock());
            ps.executeUpdate();
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede insertar el producto " + ex);
        }
        return false;
    }

    @Override
    public boolean Editar(Productos prod) {
        String sqlupdate = "update productos set nombreproducto=?,idCategoria=?,descripcion=?,cantidadproducto=?,preciounidad=?,fechavencimiento=?,stock=? where idproducto=?";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(sqlupdate);
            ps.setString(1, prod.getNombreproducto());
            ps.setString(2, prod.getIdcategoria());
            ps.setString(3, prod.getDescripcion());
            ps.setString(4, prod.getCantidadproducto());
            ps.setDouble(5, prod.getPreciounidad());
            ps.setString(6, prod.getFechavencimiento());
            ps.setInt(7, prod.getStock());
            ps.executeUpdate();

        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "ERROR al actualizar datos " + ex);
        }
        return false;
    }

    @Override
    public boolean Eliminar(String id) {
        String sqleliminar = "update productos set indicador='N' where idproducto=?";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(sqleliminar);
            ps.setString(1, id);
            ps.executeUpdate();

        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "ERROR al eliminar el producto" + ex);
        }
        return false;
    }
    
}
