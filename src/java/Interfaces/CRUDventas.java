
package Interfaces;

import Modelo.Venta;
import java.util.List;

public interface CRUDventas {
    public List ListarVentas();
    public Venta Obtener(String id);
    public boolean Agregar(Venta vent);
    public boolean Editar(Venta vent);    
    public boolean Eliminar(String id);
    
}
