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
    private int stock;
    
    private double preciounidad;
    private String nombreproducto;
    private String nombre_cliente;
    private String nombre_usuario;

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

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getPreciounidad() {
        return preciounidad;
    }

    public void setPreciounidad(double preciounidad) {
        this.preciounidad = preciounidad;
    }

    public String getNombreproducto() {
        return nombreproducto;
    }

    public void setNombreproducto(String nombreproducto) {
        this.nombreproducto = nombreproducto;
    }

    public String getNombre_cliente() {
        return nombre_cliente;
    }

    public void setNombre_cliente(String nombre_cliente) {
        this.nombre_cliente = nombre_cliente;
    }

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }
    
    
    
    // Otros atributos y métodos

    public void calcularSubtotal(double precio) {
        this.subtotal = cantidadventa * precio;
    }

    public void calcularIGV() {
        this.igv = subtotal * 0.18; // IGV rate is 18%
    }

    public void calcularTotal() {
        this.totalpagar = subtotal + igv;
    }

    
    
    
    }

