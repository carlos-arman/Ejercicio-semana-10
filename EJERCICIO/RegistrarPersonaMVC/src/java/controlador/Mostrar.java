/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;

public class Mostrar extends HttpServlet {

    
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Persona p = new Persona();
        ArrayList<Persona> personas = new ArrayList();
        personas = p.consultarRegistro();
        request.getSession().setAttribute("personas", personas);
        request.getRequestDispatcher("mostrartodo.jsp").forward(request, response);
        
         }
    }

    
