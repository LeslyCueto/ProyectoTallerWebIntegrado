package Modelo;
public class Venta {
    private String nombrecliente;
    private String nombreprod;
    private int idventa;
    private int idcliente;
    private int idproducto;
    private int cantidadprod;
    private int preciounidadprod;
    private double subtotal;
    private double igv;
    private double totalpagar;
    private double efectivo;
    private double cambio;
    private String indicador;
    
    
    
    //constructor
    
    
    public Venta(String nombrecliente, String nombreprod, int idventa, int idcliente, int idproducto, int cantidadprod, int preciounidadprod, double subtotal, double igv, double totalpagar, double efectivo, double cambio, String indicador){
        this.nombrecliente = nombrecliente;
        this.nombreprod = nombreprod;
        this.idventa = idventa;
        this.idcliente = idcliente;
        this.idproducto = idproducto;
        this.cantidadprod = cantidadprod;
        this.preciounidadprod = preciounidadprod;
        this.subtotal = subtotal;
        this.igv = igv;
        this.totalpagar = totalpagar;
        this.efectivo = efectivo;
        this.cambio = cambio;
        this.indicador = indicador;
    }
    
    
    //getters and setters 

    public int getIdventa() {
        return idventa;
    }

    public void setIdventa(int idventa) {
        this.idventa = idventa;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public int getCantidadprod() {
        return cantidadprod;
    }

    public void setCantidadprod(int cantidadprod) {
        this.cantidadprod = cantidadprod;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        subtotal=cantidadprod*preciounidadprod;
        this.subtotal = subtotal;
    }

    public double getIgv() {
        return igv;
    }

    public void setIgv(double igv) {
        igv=subtotal+(subtotal*0.18);
        this.igv = igv;
    }

    public double getTotalpagar() {
        return totalpagar;
    }

    public void setTotalpagar(double totalpagar) {
        totalpagar=igv;
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
        cambio=efectivo-totalpagar;
        this.cambio = cambio;
    }

    public String getIndicador() {
        return indicador;
    }

    public void setIndicador(String indicador) {
        this.indicador = indicador;
    }

    public String getNombrecliente() {
        return nombrecliente;
    }

    public void setNombrecliente(String nombrecliente) {
        this.nombrecliente = nombrecliente;
    }

    public String getNombreprod() {
        return nombreprod;
    }

    public void setNombreprod(String nombreprod) {
        this.nombreprod = nombreprod;
    }

    public int getPreciounidadprod() {
        return preciounidadprod;
    }

    public void setPreciounidadprod(int preciounidadprod) {
        this.preciounidadprod = preciounidadprod;
    }
    
    
    //array
    public Object[] RegistroVenta(int numeracion) {
        Object[] fila ={numeracion,idventa,nombrecliente,nombreprod,cantidadprod,preciounidadprod,subtotal,igv,totalpagar,efectivo,cambio};
        return fila;
    }
    
}
