package Modelo;

public class Usuarios {

    //Atributos
    private String idUsuario;
    private String nombre;
    private String apellido;
    private String passcode;
    private String dni;
    private String telefono;
    private String direccion;
    private String indicador;

    //Constructor

    public Usuarios() {
    }
    

    public String getIdUsuario() {
        return idUsuario;
    }

    //getters y setters
    public void setIdUsuario(String idUsuario) {    
        this.idUsuario = idUsuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getPasscode() {
        return passcode;
    }

    public void setPasscode(String passcode) {
        this.passcode = passcode;
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

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }
    

    
     //array
     public Object[]RegistroUsuario(int numeracion){
        Object[] fila={numeracion,idUsuario,nombre,apellido,passcode,dni,direccion,telefono};
        return fila;
    }

 
}
