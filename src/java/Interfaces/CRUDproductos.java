package Interfaces;
import Modelo.Productos;
import java.util.List;

public interface CRUDproductos {
    public List ListarProductos();
    public Productos Obtener(String id);
    public boolean Agregar(Productos prod);
    public boolean Editar(Productos prod);    
    public boolean Eliminar(String id);
}
