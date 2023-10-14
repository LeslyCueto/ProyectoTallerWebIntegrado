package Interfaces;
import Modelo.Usuarios;
import java.util.List;

public interface CRUDusuarios {
    public List ListarUsuarios();
    public Usuarios Obtener(String id);
    public boolean Agregar(Usuarios usu);
    public boolean Editar(Usuarios usu);    
    public boolean Eliminar(String id);
    
}
