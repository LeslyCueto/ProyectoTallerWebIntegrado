package Interfaces;
import Modelo.Clientes;
import java.util.List;

public interface CRUDclientes {
    public List ListarClientes();
    public Clientes Obtener(String id);
    public boolean Agregar(Clientes cli);
    public boolean Editar(Clientes cli);    
    public boolean Eliminar(String id);
    
}
