package Modelo;
import Config.*;
import java.sql.*;

public class Venta {
    
    //llamando base de datos para obtener los datos del producto
    Conexion conexion = new Conexion();
    Connection con = conexion.getConnection();
    PreparedStatement ps;
    ResultSet rs; 
    
    //atributos
    private String idventa;
    private String fechaventa;
    private String idCliente;
    private String idUsuario;
    private String idproducto;
    private int cantidadventa;
    private double subtotal;
    private double igv;
    private double totalpagar;
    private double efectivo;
    private double cambio;
    private String indicador;

    // Constructor
    public Venta() {
    }

    // Getters and setters

    public String getIdventa() {
        return idventa;
    }

    public void setIdventa(String idventa) {
        this.idventa = idventa;
    }

    public String getFechaventa() {
        return fechaventa;
    }

    public void setFechaventa(String fechaventa) {
        this.fechaventa = fechaventa;
    }

    public String getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }

    public String getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(String idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(String idproducto) {
        this.idproducto = idproducto;
    }

    public int getCantidadventa() {
        return cantidadventa;
    }

    public void setCantidadventa(int cantidadventa) {
        this.cantidadventa = cantidadventa;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public double getIgv() {
        return igv;
    }

    public void setIgv(double igv) {
        this.igv = igv;
    }

    public double getTotalpagar() {
        return totalpagar;
    }

    public void setTotalpagar(double totalpagar) {
        this.totalpagar = totalpagar;
    }

    public double getEfectivo() {
        return efectivo;
    }

    public void setEfectivo(double efectivo) {
        this.efectivo = efectivo;
    }

    public double getCambio() {
        return cambio;
    }

    public void setCambio(double cambio) {
        this.cambio = cambio;
    }

    public String getIndicador() {
        return indicador;
    }

    public void setIndicador(String indicador) {
        this.indicador = indicador;
    }
    
    

    // TRAER DATOS DE LA BASE DE DATOS: STOCK Y PRECIO POR UNIDAD
    public void obtenerDatosProductoDesdeBD(String idProducto) {
        String consulta = "SELECT preciounidad, stock FROM productos WHERE idproducto = ?";
        try {
            con = conexion.getConnection();
            ps = con.prepareStatement(consulta);
            ps.setString(1, idProducto);
            ResultSet resultSet = ps.executeQuery();

            if (resultSet.next()) {
                double precio = resultSet.getDouble("preciounidad");
                int stock = resultSet.getInt("stock");
                calcularSubtotal(precio);
                
                int updatedStock = stock - cantidadventa;
                actualizarStockProductoEnBD(idProducto, updatedStock);
            } else {
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    // ACTUALIZAR STOCK
        public void actualizarStockProductoEnBD(String idProducto, int nuevoStock) {
        String consulta = "UPDATE productos SET stock = ? WHERE idproducto = ?";
        try {
            ps = con.prepareStatement(consulta);
            ps.setInt(1, nuevoStock);
            ps.setString(2, idProducto);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    
 
    
    //METODOS PROPIOS

    // CALCULAR EL SUBTOTAL
    public void calcularSubtotal(double precio) {
        this.subtotal = cantidadventa * precio;
    }

    // CALCULAR EL IGV
    public void calcularIGV() {
        this.igv = subtotal * 0.18; // IGV rate is 18%
    }

    // CALCULAR EL TOTAL
    public void calcularTotal() {
        this.totalpagar = subtotal + igv;
    }
    
    
    
    
    }

