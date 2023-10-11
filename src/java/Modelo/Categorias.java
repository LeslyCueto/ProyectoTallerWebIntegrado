package Modelo;

public class Categorias {

    private int idcategoria;
    private String nombrecat;
    private String descripcion;
    private String indicador;

    //constructor

    public Categorias(int idcategoria, String nombrecat, String descripcion) {
        this.idcategoria = idcategoria;
        this.nombrecat = nombrecat;
        this.descripcion = descripcion;
    }
    
    //getters and setters
    public int getIdcategoria() {
        return idcategoria;
    }

    public void setIdcategoria(int idcategoria) {
        this.idcategoria = idcategoria;
    }

    public String getNombrecat() {
        return nombrecat;
    }

    public void setNombrecat(String nombrecat) {
        this.nombrecat = nombrecat;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getIndicador() {
        return indicador;
    }

    public void setIndicador(String indicador) {
        this.indicador = indicador;
    }
    
    public Object[]RegistroCategoria(int numeracion){
        Object[] fila={numeracion,idcategoria,nombrecat,descripcion};
        return fila;
    }
    
}
