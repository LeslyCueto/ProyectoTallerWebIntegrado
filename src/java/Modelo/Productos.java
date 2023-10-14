package Modelo;
//clase productos
public class Productos{
//atributos
    
    private String idproducto;
    private String nombreproducto;
    private String descripcion;
    private String idcategoria;
    private String cantidadproducto;
    private double preciounidad;
    private String fechavencimiento;
    private int stock;
    private String indicador; 
   
   //constructor

    public Productos() {
    }
   
   //getters and setters

    public String getIdproductos() {
        return idproducto;
    }

    public void setIdproductos(String idproducto) {
        this.idproducto = idproducto;
    }

    public String getNombreproducto() {
        return nombreproducto;
    }

    public void setNombreproducto(String nombreproducto) {
        this.nombreproducto = nombreproducto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getIdcategoria() {
        return idcategoria;
    }

    public void setIdcategoria(String idcategoria) {
        this.idcategoria = idcategoria;
    }

    
    public String getCantidadproducto() {
        return cantidadproducto;
    }

    public void setCantidadproducto(String cantidadproducto) {
        this.cantidadproducto = cantidadproducto;
    }

    public double getPreciounidad() {
        return preciounidad;
    }

    public void setPreciounidad(double preciounidad) {
        this.preciounidad = preciounidad;
    }

    public String getFechavencimiento() {
        return fechavencimiento;
    }

    public void setFechavencimiento(String fechavencimiento) {
        this.fechavencimiento = fechavencimiento;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getIndicador() {
        return indicador;
    }

    public void setIndicador(String indicador) {
        this.indicador = indicador;
    }

   
   //array
    public Object[]RegistroProducto(int numeracion){
        Object[] fila={numeracion,idproducto,nombreproducto,idcategoria,cantidadproducto,preciounidad,fechavencimiento,stock};
        return fila;
    }
   
}
  
 

   