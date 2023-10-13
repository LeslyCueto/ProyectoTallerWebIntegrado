/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.*;
import ModeloDAO.*;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ControladorProductos", urlPatterns = {"/ControladorProductos"})


public class ControladorProductos extends HttpServlet {
    String vistalistaprod ="lista_productos.jsp";
    String vistaaregarprod="admin_productos.jsp";
    String vistaeditarprod="editar_productos.jsp";
    Productos p = new Productos();
    ProductoDAO dao = new ProductoDAO(); 
    int id;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String acceso="";
        String accion = request.getParameter("accion");
        if(accion.equalsIgnoreCase("listar")){
            acceso=vistalistaprod;
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
            id = Integer.parseInt("idprod");
            dao.Eliminar(id);
            acceso=vistalistaprod;
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
    
    private void LeerDatosProductos(HttpServletRequest request, HttpServletResponse response) {
        p.setIdproductos(Integer.parseInt("idproducto"));
        p.setNombreproducto(request.getParameter("nombreproducto"));
        p.setIdcategoria(Integer.parseInt("idcategoria"));
        p.setDescripcion(request.getParameter("descripcion"));
        p.setCantidadproducto(request.getParameter("cantidadproducto"));
        p.setPreciounidad(Double.parseDouble("preciounidad"));
        p.setStock(Integer.parseInt("stock"));
        p.setFechavencimiento(request.getParameter("fechavencimiento"));
        
        
    }

}
