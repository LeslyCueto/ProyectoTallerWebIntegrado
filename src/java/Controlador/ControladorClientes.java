package Controlador;

import Modelo.*;
import ModeloDAO.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ControladorClientes", urlPatterns = {"/ControladorClientes"})
public class ControladorClientes extends HttpServlet {
    String vistalistacli ="lista_clientes.jsp";
    String vistaaregarcli="admin_clientes.jsp";
    String vistaeditarcli="editar_clientes.jsp";
    Clientes c = new Clientes();
    ClientesDAO dao = new ClientesDAO(); 
    String id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String acceso="";
        String accion = request.getParameter("accion");
        if(accion.equalsIgnoreCase("listar")){
            acceso=vistalistacli;
        }else if(accion.equalsIgnoreCase("add")){
            acceso=vistaaregarcli;
        }else if(accion.equalsIgnoreCase("Agregar")){
            LeerDatosClientes(request,response);
            dao.Agregar(c);
            acceso=vistalistacli;
        }else if (accion.equalsIgnoreCase("editar")){
            request.setAttribute("idcli", request.getParameter("idcli"));
            acceso=vistaeditarcli;
        }else if (accion.equalsIgnoreCase("Actualizar")){
            LeerDatosClientes(request, response);
            dao.Editar(c);
            acceso=vistalistacli;
        }else if (accion.equalsIgnoreCase("eliminar")){
            id = request.getParameter("idcli");
            dao.Eliminar(id);
            acceso=vistalistacli;
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

    private void LeerDatosClientes(HttpServletRequest request, HttpServletResponse response) {
        c.setIdclientes(request.getParameter("idCliente"));
        c.setNombrecli(request.getParameter("nombre_cliente"));
        c.setApellidocli(request.getParameter("apellido_cliente"));
        c.setDni(request.getParameter("dni"));
        c.setTelefono(request.getParameter("telefono"));
        c.setDireccion(request.getParameter("direccion"));
        
        
    }
}
