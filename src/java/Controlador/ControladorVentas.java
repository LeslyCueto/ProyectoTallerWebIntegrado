package Controlador;

import Modelo.Venta;
import ModeloDAO.VentasDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ControladorVentas", urlPatterns = {"/ControladorVentas"})


public class ControladorVentas extends HttpServlet {
    String vistalistaventa ="lista_ventas.jsp";
    String vistaaregarventa="admin_ventas.jsp";
    Venta v= new Venta();
    VentasDAO dao = new VentasDAO(); 
    String id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String acceso="";
        String accion = request.getParameter("accion");
        if(accion.equalsIgnoreCase("listar")){
            acceso=vistalistaventa;
        }else if(accion.equalsIgnoreCase("add")){
            acceso=vistaaregarventa;
        }else if(accion.equalsIgnoreCase("Agregar")){
            LeerDatosVentas(request,response);
            dao.Agregar(v);
            acceso=vistalistaventa;
        }else if (accion.equalsIgnoreCase("eliminar")){
            id = request.getParameter("idvent");
            dao.Eliminar(id);
            acceso=vistalistaventa;
        }       
        
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    private void LeerDatosVentas(HttpServletRequest request, HttpServletResponse response) {
    v.setIdventa(request.getParameter("idventa"));
    v.setFechaventa(request.getParameter("fechaventa"));
    v.setIdCliente(request.getParameter("idCliente"));
    v.setIdUsuario(request.getParameter("idUsuario"));
    v.setIdproducto(request.getParameter("idproducto"));
    v.setCantidadventa(Integer.parseInt(request.getParameter("cantidadventa"))); 
    v.setEfectivo(Double.parseDouble(request.getParameter("efectivo"))); 
    
    
    
    }

}
