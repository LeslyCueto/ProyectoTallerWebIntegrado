package Modelo;

public class Clientes {

    private String idclientes;
    private String nombrecli;
    private String apellidocli;
    private String dni;
    private String telefono;
    private String direccion;
    private String indicador;

    //constructor
    public Clientes() {
    }

    //getters and setters
    public Object[]RegistroClientes(int numeracion){
        Object[] fila={numeracion,idclientes,nombrecli,apellidocli,dni,telefono,direccion};
        return fila;
    }

    public String getIdclientes() {
        return idclientes;
    }

    public void setIdclientes(String idclientes) {
        this.idclientes = idclientes;
    }

    

    public String getNombrecli() {
        return nombrecli;
    }

    public void setNombrecli(String nombrecli) {
        this.nombrecli = nombrecli;
    }

    public String getApellidocli() {
        return apellidocli;
    }

    public void setApellidocli(String apellidocli) {
        this.apellidocli = apellidocli;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getIndicador() {
        return indicador;
    }

    public void setIndicador(String indicador) {
        this.indicador = indicador;
    }
    
}
