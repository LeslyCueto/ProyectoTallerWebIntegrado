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
            acceso=vistaaregarprod;
        }else if(accion.equalsIgnoreCase("Agregar")){
            LeerDatosProductos(request,response);
            dao.Agregar(p);
            acceso=vistalistaprod;
        }else if (accion.equalsIgnoreCase("editar")){
            request.setAttribute("idprod", request.getParameter("idprod"));
            acceso=vistaeditarprod;
        }else if (accion.equalsIgnoreCase("Actualizar")){
            LeerDatosProductos(request, response);
            dao.Editar(p);
            acceso=vistalistaprod;
        }else if (accion.equalsIgnoreCase("eliminar")){
            id = request.getParameter("idprod");
            dao.Eliminar(id);
            acceso=vistalistaprod;
        }       
        
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
