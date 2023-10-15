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
        String consulta = "select * from venta where idventa=?";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(consulta);
            ps.setString(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
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

            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede recuperar el producto... " + ex);
        }
        return v;
    }
    
    
   //OBTENER PRECIO DEL PRODUCTO DESDE LA BD
    private double obtenerPrecioProductoDesdeBD(String idProducto) {
    String consulta = "SELECT preciounidad FROM productos WHERE idproducto = ?";
    try {
        con = conexion.getConnection();
        ps = con.prepareStatement(consulta);
        ps.setString(1, idProducto);
        ResultSet resultSet = ps.executeQuery();

        if (resultSet.next()) {
            return resultSet.getDouble("preciounidad");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return 0.0; // En caso de no encontrar el producto, retornar un valor predeterminado
    }

    
   @Override
    public boolean Agregar(Venta vent) {
    String sqlinsert = "INSERT INTO venta(idventa, fechaventa, idCliente, idUsuario, idproducto, cantidadventa, subtotal, igv, totalpagar, efectivo, cambio, indicador) VALUES (?,?,?,?,?,?,?,?,?,?,?,'S')";
    try {
        con = conexion.getConnection();
        ps = con.prepareStatement(sqlinsert);
        ps.setString(1, vent.getIdventa());
        ps.setString(2, vent.getFechaventa());
        ps.setString(3, vent.getIdCliente());
        ps.setString(4, vent.getIdUsuario());
        ps.setString(5, vent.getIdproducto());
        ps.setDouble(6, vent.getCantidadventa());

        // Calcular el subtotal como precio * cantidad de productos
        double precio = obtenerPrecioProductoDesdeBD(vent.getIdproducto());
        double subtotal = precio * vent.getCantidadventa();
        vent.setSubtotal(subtotal);
        ps.setDouble(7, subtotal);

        // Calcular IGV y Total
        double igv = subtotal * 0.18; // IGV rate is 18%
        vent.setIgv(igv);
        ps.setDouble(8, igv);
        
        double total = subtotal + igv;
        vent.setTotalpagar(total);
        ps.setDouble(9, total);

        // El resto de los parámetros (efectivo, cambio) y la inserción en la base de datos quedan pendientes.
        // Calcular el cambio
        double efectivo = vent.getEfectivo();
        double cambio = efectivo - total;
        vent.setCambio(cambio);
        ps.setDouble(10, efectivo);
        ps.setDouble(11, cambio);

        ps.executeUpdate();
        return true; // Indicar que la inserción fue exitosa
    } catch (Exception ex) {
        ex.printStackTrace();
        return false; // Indicar que hubo un error en la inserción
    }
}

    @Override
    public Venta obtenerDatosProductoDesdeBD(String idProducto, int cantidadVenta) {
    String consulta = "SELECT nombreproducto, preciounidad, stock FROM productos WHERE idproducto = ?";
    Venta v = new Venta();

    try (Connection con = conexion.getConnection();
         PreparedStatement ps = con.prepareStatement(consulta)) {
        ps.setString(1, idProducto);
        try (ResultSet resultSet = ps.executeQuery()) {
            if (resultSet.next()) {
                String nombreproducto = resultSet.getString("nombreproducto");
                double preciounidad = resultSet.getDouble("preciounidad");
                int stock = resultSet.getInt("stock");

                v.setIdproducto(idProducto);
                v.setNombreproducto(nombreproducto);
                v.setPreciounidad(preciounidad);
                v.setStock(stock);
                v.setCantidadventa(cantidadVenta);

                // Calcular el subtotal como precio * cantidad de productos
                double subtotal = preciounidad * cantidadVenta;
                v.setSubtotal(subtotal);

                // Calcular IGV (Impuesto General a las Ventas) y Total
                v.calcularIGV();
                v.calcularTotal();

                // Restar la cantidad de productos vendidos al stock
                int nuevoStock = stock - cantidadVenta;

                // Actualizar el stock en la base de datos
                actualizarStockProductoEnBD(idProducto, nuevoStock);

                // Actualiza el stock en el objeto Venta
                v.setStock(nuevoStock);
            } else {
                // Manejar el caso en el que no se encuentre el producto
                v = null;
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
        // Manejar la excepción adecuadamente aquí
        v = null;
    }

    return v;
}



    @Override
    public Venta actualizarStockProductoEnBD(String idProducto, int nuevoStock) {
    String consulta = "UPDATE productos SET stock = ? WHERE idproducto = ?";
    try {
        ps = con.prepareStatement(consulta);
        ps.setInt(1, nuevoStock);
        ps.setString(2, idProducto);
        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return null;
}


    @Override
    public boolean Eliminar(String id) {
        String sqleliminar = "update venta set indicador='N' where idventa=?";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(sqleliminar);
            ps.setString(1, id);
            ps.executeUpdate();

        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "ERROR al eliminar la venta" + ex);
        }
        return false;
    }    

    @Override
    public Venta obtenerDatosCliente(String idCliente) {
        String nombreCliente = null;
        String query = "SELECT nombre_cliente FROM cliente WHERE idCliente = ?";
        Venta v = new Venta();
        try (Connection con = conexion.getConnection();
             PreparedStatement preparedStatement = con.prepareStatement(query)) {
            preparedStatement.setString(1, idCliente);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                nombreCliente = resultSet.getString("nombre_cliente");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return v;
    }
    
    


    @Override
    public Venta obtenerDatosUsuario(String idUsuario) {
        String nombreUsuario = null;
        String query = "SELECT nombre_usuario FROM usuario WHERE idUsuario = ?";
        try (Connection con = conexion.getConnection();
             PreparedStatement preparedStatement = con.prepareStatement(query)) {
            preparedStatement.setString(1, idUsuario);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                nombreUsuario = resultSet.getString("nombre_usuario");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return v;
    }
    
    

    
}
