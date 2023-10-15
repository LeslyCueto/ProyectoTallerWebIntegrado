
package Interfaces;

import Modelo.Venta;
import java.util.List;

public interface CRUDventas {
    public List ListarVentas();
    public Venta obtenerDatosCliente(String idCliente);
    public Venta obtenerDatosUsuario(String idUsuario);
    public abstract Venta obtenerDatosProductoDesdeBD(String idProducto, int cantidadVenta);
    public Venta actualizarStockProductoEnBD(String idProducto, int nuevoStock);
    public Venta Obtener(String id);
    public boolean Agregar(Venta vent);  
    public boolean Eliminar(String id);
    
}
