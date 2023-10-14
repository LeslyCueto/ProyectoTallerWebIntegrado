package Interfaces;
import Modelo.Clientes;
import java.util.List;

public interface CRUDclientes {
    public List ListarClientes();
    public Clientes Obtener(String id);
    public boolean Agregar(Clientes prod);
    public boolean Editar(Clientes prod);    
    public boolean Eliminar(String id);
    
}
