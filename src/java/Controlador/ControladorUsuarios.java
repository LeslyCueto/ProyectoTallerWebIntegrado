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

@WebServlet(name = "ControladorUsuarios", urlPatterns = {"/ControladorUsuarios"})
public class ControladorUsuarios extends HttpServlet {
    String vistalistausu ="lista_usuarios.jsp";
    String vistaaregarusu="admin_usuarios.jsp";
    String vistaeditarusu="editar_usuarios.jsp";
    Usuarios u = new Usuarios();
    UsuariosDAO dao = new UsuariosDAO(); 
    String id;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String acceso="";
        String accion = request.getParameter("accion");
        if(accion.equalsIgnoreCase("listar")){
            acceso=vistalistausu;
        }else if(accion.equalsIgnoreCase("add")){
            acceso=vistaaregarusu;
        }else if(accion.equalsIgnoreCase("Agregar")){
            LeerDatosUsuarios(request,response);
            dao.Agregar(u);
            acceso=vistalistausu;
        }else if (accion.equalsIgnoreCase("editar")){
            request.setAttribute("idusu", request.getParameter("idusu"));
            acceso=vistaeditarusu;
        }else if (accion.equalsIgnoreCase("Actualizar")){
            LeerDatosUsuarios(request, response);
            dao.Editar(u);
            acceso=vistalistausu;
        }else if (accion.equalsIgnoreCase("eliminar")){
            id = request.getParameter("idusu");
            dao.Eliminar(id);
            acceso=vistalistausu;
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
    
    private void LeerDatosUsuarios(HttpServletRequest request, HttpServletResponse response) {
        u.setIdUsuario(request.getParameter("idUsuario"));
        u.setNombre(request.getParameter("nombre_usuario"));
        u.setApellido(request.getParameter("apellido_usuario"));
        u.setPasscode(request.getParameter("passcode"));
        u.setDni(request.getParameter("usuario_dni"));
        u.setDireccion(request.getParameter("direccion"));
        u.setTelefono(request.getParameter("telefono"));
        
        
    }    

}
