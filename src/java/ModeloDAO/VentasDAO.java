package ModeloDAO;
import Config.*;
import Interfaces.*;
import Modelo.Venta;
import java.sql.*;
import java.util.*;
import javax.swing.JOptionPane;

public class VentasDAO implements CRUDventas{
    Conexion conexion = new Conexion();
    Connection con = conexion.getConnection();
    PreparedStatement ps;
    ResultSet rs;
    Venta v = new Venta();

    @Override
    public List ListarVentas() {
        ArrayList<Venta> Lista = new ArrayList();
        String consulta = "SELECT v.idventa, v.fechaventa, v.cantidadventa, v.subtotal, v.igv, v.totalpagar, v.efectivo, v.cambio,\n" +
                          "c.nombre_cliente, p.nombreproducto, u.nombre_usuario\n" +
                          "FROM venta v\n" +
                          "INNER JOIN cliente c ON v.idCliente = c.idcliente\n" +
                          "INNER JOIN productos p ON v.idproducto = p.idproducto\n" +
                          "INNER JOIN usuario u ON v.idUsuario = u.idusuario;";;
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Venta v = new Venta();
                v.setIdventa(rs.getString("idventa"));
                v.setFechaventa(rs.getString("fechaventa"));
                v.setCantidadventa(rs.getInt("cantidadventa"));
                v.setSubtotal(rs.getDouble("subtotal"));
                v.setIgv(rs.getDouble("igv"));
                v.setTotalpagar(rs.getDouble("totalpagar"));
                v.setEfectivo(rs.getDouble("efectivo"));
                v.setCambio(rs.getDouble("cambio"));
                v.setIdCliente(rs.getString("nombre_cliente")); // Use the correct alias here
                v.setIdproducto(rs.getString("nombreproducto"));
                v.setIdUsuario(rs.getString("nombre_usuario"));
                Lista.add(v);
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede listar datos " + ex);
        }
        return Lista;
    }

    @Override
    public Venta Obtener(String id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean Agregar(Venta vent) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean Editar(Venta vent) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean Eliminar(String id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
